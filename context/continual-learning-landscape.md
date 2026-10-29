---
title: Continual Learning Landscape — Parametric Memory as the Next Front
type: research-note
tags: [continual-learning, agentic-memory, data-flywheel, parametric-memory, test-time-training]
created: 2026-10-28
related: ["[[agentic-memory]]", "[[data-flywheel]]", "[[parametric-continual-learning]]"]
---

# Continual Learning Landscape

The thesis of this page: a deployed model is frozen at its weights. Everything we call "continual learning" today is built to work around that frozen core, not to move it. Current production systems put all the adaptation in a non-parametric layer: agentic memory at serve time, and a data flywheel that retrains offline. Both are real and both work, but both leave the weights static between releases. The next front is parametric memory, where the model updates its own weights continuously, and the 2026 research has moved decisively in that direction.

## The three places adaptation can live

Every continual-learning method puts the update in one of three substrates. This is the organizing axis, confirmed across the 2026 agent-memory surveys.

1. **Context (in-context).** Information lives in the prompt or KV cache. No parameters change, so there is no catastrophic forgetting, but it is ephemeral and bounded by the window.
2. **Non-parametric memory (external store).** Retrieval, RAG, agentic memory. The backbone stays frozen; an external store holds and serves knowledge. Inspectable and governable, but the model itself does not learn. The store grows; the weights do not.
3. **Parametric memory (in the weights).** The update lands in the model's parameters. Seamless at read time, the model just "knows" the thing, but writes are costly and risk interference and forgetting.

The distinction that matters: a system whose memory only grows is accumulating. A system whose memory consolidates, forgets, and reshapes itself is learning. By that definition, most of what ships today is accumulation.

## Where production is now: non-parametric adaptation

### Agentic memory (serve-time, non-parametric)
The deployed state of the art. Memory operations (what to write, what to retrieve, what to compress) are handled by an explicit read-write store around a frozen model. The 2026 work makes those operations themselves learned: Agentic Memory (Yu et al., 2026) trains the memory ops as RL actions and beats prior memory-augmented baselines on multiple benchmarks. But the backbone is still frozen. The intelligence is in the policy over the store, not in the model's weights.

Why production favors this: inspectability and governance. A non-parametric store can be audited, a row can be deleted, provenance is preserved, a stale fact can be excised. Most deployed agents favor non-parametric, inspectable stores for exactly this reason.

### Data flywheel (offline, parametric but batched)
The other half of today's stack. Production signal to preference data to the next post-training run. This does update weights, but discretely, offline, at release cadence, not continuously and not at test time. It is consolidation done at org scale on a slow clock. The model between releases is still frozen; the flywheel just makes the next frozen checkpoint better.

### The honest limitation of both
- **Agentic memory** keeps the model static. It is bolted on: the agent sometimes ignores retrieved records or uses them inconsistently, because retrieval is not the same as knowing. Append-only stores also degrade over long horizons, and for time-dependent queries raw long-context retrieval still beats most memory-backed approaches, meaning semantic consolidation is destroying chronological signal.
- **Data flywheel** has release latency baked in. Nothing the model learns from an interaction reaches its weights until the next training cycle. The loop exists but its clock is slow.

Put together: today's "continual learning" is a frozen core plus an external scaffold plus a slow offline retrain. The weights do not move in real time. That is the gap.

## The next front: parametric memory

The 2026 research front has moved to making the weights themselves the adaptive substrate, continuously and at test time. The unifying idea: reframe adaptation as updating parameters during inference rather than storing text beside a frozen model. The main threads:

### Test-time training (TTT) — the core mechanism
Weights update during inference using a self-supervised loss, compressing context directly into parameters rather than caching it.
- **TTT-E2E** (Stanford/Nvidia): frames long-context language modeling as a continual-learning problem; the model updates dynamic MLP weights during inference via next-token loss, and crucially meta-learns an initialization that is easy to update at test time. Matches full-attention accuracy at 128k context with linear-model speed. Dual-memory: sliding-window attention as working memory, immutable MLPs preserving pretrained knowledge, dynamic MLPs as the learned long-term store.
- **In-Place TTT** (ICLR 2026): endows existing LLMs with TTT, treating any parameters as fast weights updated at test time, an "apply-then-update" cycle. Fast weights act as a dynamic associative memory.

### Parameterizing experience — memory that becomes weights
The agent-memory line is pushing the store into the parameters:
- **PEAM**: converts retrieval memory into parameter-resident skills via per-category isolated MoE-LoRA adapters, with a failure-as-training-signal loop that promotes successful retrieval patterns into weights.
- **ReTTT**: reflection-driven TTT on episode-local LoRA adapters, backbone frozen, updating only lightweight fast weights from constructed and revised "lessons."
- **Recurrent parametric state** (Weinzaepfel et al., 2026): distills a full-history teacher's representation into a recurrent student's fixed-size memory, a bounded parametric state replacing an unbounded store.
- **RPMem**: long-term recurrent parametric memory across sessions.

### Gradient-free test-time adaptation — the efficiency wing
Not all of the front requires backprop at serve time. JitRL does test-time policy improvement by modulating logits in closed form from a non-parametric experience memory, no gradient updates. This is the same destination (adapt after deployment) by a cheaper route, and it is the wing Adaption-style efficiency bets live in.

## Why parametric is the front, and why it is hard

Parametric memory is the only one of the three substrates where the model actually learns rather than consults. It offers seamless integration (the model just knows), long-term consolidation, and bounded, constant-size state instead of an ever-growing store. That is why the research has moved there.

The reason it is a *front* and not yet the default is the set of hard problems, and these are the real research agenda:

- **Catastrophic forgetting / interference.** The classic blocker. Writing new knowledge to weights degrades old. EWC, LwF, replay exist but do not scale cleanly to frontier models. Even synthetic-data finetuning for skill retrieval induces forgetting on real/OOD data at production scale.
- **No tombstone.** Parametric memory has no delete. A fact cannot be excised from a weight matrix the way a row is dropped from a store. You cannot attribute a behavior to the specific update that produced it and revert just that update without replaying training history. This is the governance wall, and it is why inspectable non-parametric stores still win in production.
- **Write cost and stability.** Updates are expensive and must avoid interference. Recurrent compression makes the state bounded but irreversible: once folded in, an observation cannot be recovered or removed.
- **Rate heterogeneity.** Different knowledge changes at different rates, yet a single parameter-update mechanism treats all evidence as equally worth absorbing. The multi-timescale framing (fast fading, slow consolidating) is the response.
- **Evaluation gap.** Nobody evaluates forgetting well. Only a handful of benchmarks test selective forgetting explicitly, so the field cannot yet measure the thing parametric memory most needs to get right.

## The synthesis

The trajectory is a continuum of plasticity across timescales, not a winner among the three substrates:

- **Context** — working memory, per-interaction, ephemeral.
- **Non-parametric store** — fast, inspectable, governable; the serve-time layer (agentic memory).
- **Parametric fast weights (TTT)** — within-session learning, compressing experience into bounded weight state; the new middle layer.
- **Consolidated base weights** — slow, release-cadence; the data flywheel's output.

Today's production stack has the first, second, and fourth, with a hard gap where the third belongs. Parametric memory is the research front precisely because it fills that gap: it makes the serve-time layer *learn* instead of merely *store*, and it gives the consolidation loop a fast-clock counterpart. The open problem that gates it is governance, a parametric substrate with a delete, attributable updates, and reversible writes, plus forgetting that is selective by design rather than catastrophic by accident.

## Open threads to watch
- Governable parametric memory: attributable, reversible weight updates (the "tombstone" problem).
- Meta-learned update-friendly initializations (TTT-E2E's second contribution) as a general pretraining objective.
- Selective-forgetting benchmarks, so the field can measure what parametric CL must get right.
- The gradient-free wing (JitRL-style logit modulation) vs the gradient wing (TTT/LoRA) — which wins on the efficiency/quality Pareto.

## See also
- [[agentic-memory]] — the serve-time non-parametric layer (my pod)
- [[data-flywheel]] — the offline consolidation loop (my pod)
- [[parametric-continual-learning]] — the research strand this page argues is the next front
