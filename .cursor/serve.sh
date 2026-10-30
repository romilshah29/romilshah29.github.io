#!/usr/bin/env bash
# Idempotently ensure the static site is served on PORT.
# Safe to run on every boot: if the server is already up it exits early,
# otherwise it launches a detached server and waits until it is ready.
set -euo pipefail

PORT="${PORT:-8000}"
LOG="/tmp/cursor-web-server.log"

# Serve from the repository root (the directory that contains index.html).
cd "$(dirname "$0")/.."

if curl -sf -o /dev/null "http://localhost:${PORT}/" 2>/dev/null; then
  echo "Static server already running on port ${PORT}."
  exit 0
fi

nohup python3 -m http.server "${PORT}" --bind 0.0.0.0 >"${LOG}" 2>&1 &

for _ in $(seq 1 30); do
  if curl -sf -o /dev/null "http://localhost:${PORT}/" 2>/dev/null; then
    echo "Static server is up on port ${PORT} (logs: ${LOG})."
    exit 0
  fi
  sleep 1
done

echo "Static server failed to become ready on port ${PORT}." >&2
cat "${LOG}" >&2 || true
exit 1
