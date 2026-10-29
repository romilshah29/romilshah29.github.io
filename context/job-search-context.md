# Job Search Agent — Context & Operating Brief

**Candidate:** Romil Shah — Lead Researcher, Meta Superintelligence Labs (Sunnyvale, CA)
**Goal:** Move to a frontier AI lab or high-signal neolab, in LLM post-training / RL / reasoning.
**Contact for materials:** romilshah29@gmail.com · linkedin.com/in/romilshah29 · github.com/romilshah29
**Base resume (Google Drive):** file ID `1Byj-rQ-_OStZRBYRRTkR4re386H3Q8NONkbH-GSC9Z0`
**Role-tailored resumes already produced:** Production Post-Training, Honesty, Waymo (data-infra framing).

---

## 0. Candidate profile in one paragraph

~16 years total experience (Meta 2019–present; before that Bloomreach, Microsoft, Cleartrail). Core expertise: LLM post-training, RLHF / RLAIF / RL-from-user-feedback, reward modeling, preference-data pipelines, agentic systems (memory, tool-use, computer use), reasoning models, data flywheels / continual learning, distillation, evaluation frameworks. Contributed to Llama 2/3/4. Flagship achievement: **rebuilt Meta AI's search and personalization stack around agentic workflows** (replaced traditional RAG, shipped Meta's first production reasoning + agentic model on the new architecture, built the data flywheel that compounds quality every release). Earlier: Core Modeling Lead for Meta Reels (2B+ users); first LLM-based multimodal content-understanding system at Meta; foundational user-model pretraining. Publication: PIE (ACM WebConf '23). Two patents in search ranking. BE Computer Science (no MS/PhD).

**Known gap to work around:** almost all impressive work is behind Meta confidentiality with no verifiable public artifacts. Personal site + continual-learning essay now live to begin closing this. No MS/PhD — compensate via portfolio + strong written application answers.

---

## 1. Key aspects to search for while scanning listings

### Match on role substance (any of these → likely fit)
- LLM/foundation-model **post-training**: RLHF, RLAIF, DPO, reward modeling, preference data, fine-tuning, alignment methods
- **Reinforcement learning** for LLMs: RL environments, agentic RL, tool-use training, reasoning RL, async/distributed RL training
- **Reasoning models** (training, eval, faithfulness)
- **Agentic systems**: tool use, agentic memory, computer use, long-horizon tasks
- **Data flywheels / continual learning**: production-signal → training loops, automated curation, active learning, parametric memory
- **Evaluation**: hallucination/calibration/groundedness, benchmark design, automated + human eval, factuality
- **Honesty / truthfulness / factual grounding**
- **Search & knowledge / retrieval / RAG → agentic** (single strongest credential)

### Seniority filter
- Target **Staff / Senior Staff / Lead / Principal Research Scientist or Research Engineer** (L6/L7-equivalent).
- Research-engineer roles where publications are "not required" are fine (good for the no-PhD profile).
- Skip junior/mid IC roles and pure-management roles.

### Location filter
- Bay Area / SF strongly preferred (Sunnyvale-based). Remote OK. NYC/Seattle acceptable but a headwind. London/Zürich acceptable to widen the funnel.

### Compensation reference
- Anchor: **$350K–$500K+ base**. Flag postings materially below (some Big Tech "Senior Staff SWE" bands ~$281K–$356K; seed neolabs cash-light/equity-heavy). Don't auto-reject low cash; flag the tradeoff.

### Disqualify / deprioritize
- Pure infra/SRE/platform with no model-behavior component (unless data-flywheel/data-infra framed — see Waymo).
- Embodied/robotics-hardware-first (unless framed around the foundation-model/world-model layer).
- Roles needing deep domain expertise he lacks (AV sensor/Lidar, materials science) UNLESS the core ask is data/ML infrastructure.

### Recency
- Prioritize newly posted roles and launch-day / stealth-exit announcements (neolabs hiring via founder posts → cold email is the application; move within 24–48h). Check founder/lab X accounts and YC/SignalFire/Ashby boards, not just portals.

---

## 2. Top targets

### Tier 1 — Frontier labs (primary track; apply directly + seek warm intros)
- **Anthropic** — best mission fit. Roles: Production Model Post-Training (SF/NYC/Seattle + London `4980460008` / Zürich `5112018008`); Honesty / Finetuning Alignment; Knowledge Team (`4017331008`); Search & Knowledge Post-Training (`5206456008`); RL Team (`4613568008`); Model Evaluations (`5198255008`, lower priority). Multiple "Why Anthropic?" essays drafted.
- **xAI** — Reasoning Post-training (Palo Alto); Coding Agents Post-Training RL/Evals (`4800098007`). "Exceptional work" framing drafted (rebuild-around-agentic-workflows opener).
- **OpenAI** — Researcher, Agentic Post-Training (Post-Training Frontiers); Agent Post-Training API & Power-Users; RL/Reasoning; Context (Agent Post-Training). Also OpenAI Robotics (world-sim → robotics; stretch; cold email to robotics-recruiting@openai.com drafted).
- **Google DeepMind** — Gemini Post-Training, Model Behavior (Mountain View; also NYC).

### Tier 2 — High-signal neolabs (parallel optionality; do NOT displace Tier 1)
- **Adaption (Labs)** — Sara Hooker (CEO) / Sudip Roy (CTO), ex-Cohere. $50M seed (Emergence). Gradient-free test-time adaptation, efficiency, continual learning, AutoScientist. Strongest publishing culture (best for fixing artifact gap). High fit. Push.
- **Trajectory** — continual-learning platform; post-train agentic models from product-usage signal. $15M seed (Conviction, Bessemer, Jeff Dean, Fei-Fei Li). Meta Superintelligence alumni on team. Tightest technical fit. Push. Caveat: app-layer customers = most exposed to agent commoditization.
- **Recursive** — Yuandong Tian (ex-Meta FAIR). Recursive self-improvement, AI scientists, world models. ~25 researchers, SF+London. Most "frontier-research-lab"-like. Cold email sent to talent@recursive.com.
- **Preference Model** — ex-Anthropic/Stripe/Datology; RL environments to automate ML research; B2B-to-labs. Seed/SPC. Highest pure-skill match but earliest stage, furthest from "frontier lab" identity. Optionality only.
- **NeoCognition** — Yu Su (CEO, OSU). $40M seed. Self-learning specialist agents for enterprise. NOT an RSI lab; agent-layer specialization on open base models. Continual-learning-adjacent, not RSI.
- **Thinking Machines Lab** — Murati; #1 compute/talent density among neolabs. Monitor for senior post-training openings.
- **Fireworks AI** — inference platform moving up-stack into fine-tuning/RL/post-training. ~$800M ARR, $15B+ valuation. Not a frontier lab; strong financial profile; post-training now a product line. Pawel Garbacki (co-founder) contact.

### Tier 3 — Big Tech / adjacent (fallback / leverage)
- **Waymo** — Senior Staff SWE, Perception Data (Mountain View). Data-flywheel/data-infra framing. Comp below anchor ($281K–$356K). Physical-AI-as-continual-learning angle. Apply if Tier 1/2 stalls or for leverage; lateral with a domain pivot.
- **Reddit** — AI Engineering building Reddit-native foundation models (continual pre-training of open models). Post-Training & Evaluation, Pre-training Data, Pre-training Science roles. CTO Amit Puntambekar (ex-Meta, systems not ML). Offer received and declined (passing to stay on frontier model research). Strong data moat; applied not frontier.
- **Google Cloud — Knowledge Catalog for AI** — Senior Staff SWE, enterprise data/context layer for agents. Context-for-agents = RAG-to-agentic adjacency. Senior Director Honza. Comp $262K–$365K. Data-systems/governance more than model behavior.
- **Baseten / Nebius / Applied Compute / Inception Labs / Thinking Machines** — interview processes tracked separately in project memory.

### Standing rule on neolabs
All seed-stage, betting on a non-scaling thesis. Each carries comp/stability risk vs the MSL baseline. Keep strictly parallel to frontier-lab applications. Survivability test for each founder: "What do you do that the frontier labs will still need to buy or license from you in three years, rather than having built it themselves or made it irrelevant?"

### Warm-intro priority
For every target, find 1–2 warm intros (ex-Meta / FAIR / MSL network; ex-DeepMind/OpenAI) before/alongside cold applications. Cold conversion <5%; a single "Romil's solid" referral materially changes callback odds.

---

## 3. Resume parts to foreground per "Why Company X?" answer

**General style rules for ALL written answers (match Romil's voice):**
- No em-dashes. No arrows. No parentheticals-as-asides. No italics-for-emphasis. No "I'm passionate about…". No "I hope this finds you well."
- Direct declarative sentences. Colons to introduce lists. Periods over mid-sentence pauses. US spelling.
- No aphorisms, no rhetorical inversions, no abstract framing nouns. Avoid the words "shape", "wheelhouse", "load-bearing" — not his vocabulary.
- Information-dense, no filler, exact technical language, named researchers/papers where relevant.
- Structure: one-line identity → 3 numbered reasons (thesis-match, technical-match, broader-bet) → JD-specific closer.
- Recurring genuine third reason: alignment + interpretability — "interpretability can drive more principled modeling, rather than patching model behavior with more data." Keep consistent.
- Length: 200–400 words for essays; under 200 for cold emails.
- Always verify the "rebuilt around agentic workflows / replaced traditional RAG" framing is internally-vs-publicly consistent before sending. Confirm model naming (no unannounced codenames publicly).

**Which resume thread to lead with, by role type:**

| Role theme | Lead with | Supporting points |
|---|---|---|
| Post-training (general) | Reasoning-model launch; RL training environments + reward modeling; data flywheel | Production-research bridge; billion-user scale; on-call/ops |
| Honesty / factuality / calibration | Agentic search groundedness (claims aligned to retrieved evidence) | Reward models penalizing unsupported claims; eval frameworks for grounding; "abstention as a trained behavior" |
| Knowledge / search / retrieval / RAG | The rebuild: RAG → agentic search/personalization at billion-user scale | "Hardest problems were architectural/epistemic, not capability ceilings"; eval sets for failure modes; data flywheel |
| RL / reward modeling | RL training environments for agentic search/tool-use; reward models on RLHF/RLAIF/online feedback (side-by-side, surveys) | Async distributed RL; in-the-wild behavior into training signals; tight research→production loop |
| Evaluation | Eval frameworks for tool-use/grounding/persona/memory, continuous on production traffic | Closed-loop with reward modeling + curation; "can't be principled about behavior you can't measure" |
| Data infrastructure (Waymo) | Data flywheel as system-of-systems (ingestion→training→eval) serving 100+ engineers; active-learning curation of long-tail | Multimodal LLM content-understanding (VLM-adjacent); foundation user-model infra; C++ + Python |
| Neolab — Adaption | Continual learning operated in production (data flywheel); supervision signal (reward modeling); distillation/efficiency | Match their frame (efficiency/adaptation), not alignment; publishing-minded |
| Neolab — Trajectory | Continual-learning + data-flywheel = exact resume match | MSL-alumni cultural fit; post-training agentic models from production signal |
| Neolab — Recursive / robotics-world-model | Foundation-model/post-training layer beneath hardware-ML or self-improvement | Data flywheels that compound; reasoning-model launch; willingness to stretch |

**Numbers to use where shareable:** real public-safe figures (>10% engagement gain on Facebook Video; 2B+ users; Llama 2/3/4). Avoid fabricated metrics; "drove measurable gains" when no public number exists.

---

## 4. Suggested daily task workflow for the agent

1. **Scan** target-company career pages + X/founder accounts + YC/SignalFire/Ashby boards + an aggregator for new roles matching Section 1.
2. **Screen** each hit against role-substance, seniority, location, comp filters. Discard non-fits silently; surface borderline ones with a one-line rationale.
3. For each qualifying new role: identify the role theme (Section 3 table), note location + comp band + whether a warm-intro mutual likely exists.
4. **Draft** the tailored "Why Company X?" / cover answer using the matching resume thread + voice rules. Pick the correct pre-built resume variant (or flag if a new variant is needed).
5. **Output** a daily digest: new qualifying roles, fit notes, comp/location flags, warm-intro suggestions, and draft application text — staged for review and one-click send. Do not auto-submit.
6. **De-dupe** against roles already surfaced/applied to in prior runs.

**Hard rule:** the agent prepares and stages; Romil approves and sends. Never submit an application or send an email without explicit confirmation.
