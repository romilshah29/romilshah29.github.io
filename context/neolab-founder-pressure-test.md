---
title: Neolab Founder Pressure-Test — Survivability Questions
type: job-search
tags: [job-search, neolabs, due-diligence, founder-questions]
created: 2026-06-14
related: ["[[job-search-context]]", "[[neolab-comparison]]", "[[continual-learning-landscape]]"]
---

# Neolab Founder Pressure-Test — Survivability Questions

> [!INFO] Purpose
> Questions to evaluate whether a neolab survives once coding/research agents get cheap. The core test for any of them: **are they selling the *output* of cheap intelligence (gets disrupted, SaaS-style) or something cheap intelligence still has to be built *on top of* (survives, gets paid more as volume grows)?**

## The one question that cuts through every pitch

> [!IMPORTANT] Ask every founder, verbatim
> **"What do you do that the frontier labs will still need to buy or license from you in three years, rather than having built it themselves or made it irrelevant?"**
>
> - Crisp, structural answer → real company.
> - "We're faster / more focused / more specialized" → that's the SaaS-wrapper talking. It won't hold.

## Framing: "neolab" is three different business types

Do not evaluate them as one category. Each carries a *different* disruption risk.

| Type | Disruption exposure | Targets |
|---|---|---|
| Picks-and-shovels supplier to labs | **Inverted** — cheaper agents → more demand | Preference Model |
| Capability / IP bet (hard technical advance) | **Conditional** — survives iff the advance is real & not absorbed by scaling | Adaption Labs, Recursive |
| Application-adjacent platform | **Severe** — squeezed from above by labs, customers are themselves disrupted | Trajectory |

## The deeper structural test

Frontier models keep absorbing capabilities *upward*: long context absorbs retrieval, native tool-use absorbs agent frameworks, native continual learning absorbs flywheel vendors. **Durable independents build only what the labs structurally *can't or won't* build themselves.** Everything in between gets eaten.

---

## Per-target questions

### Preference Model — picks-and-shovels (most defensible vs. agent disruption)
Thesis: RL environments that automate ML research/eng, sold to frontier labs. Cheaper agents → *more* automated experiments → *more* demand for environments. Inverted risk.

> [!QUESTION] The real risk here is in-housing, not disruption
> - "As your lab customers run more automated research, do they buy *more* environments from you, or does it push them to build the environment-generation capability in-house? What stops them?"
> - "What's the durable IP — the environments themselves, the methodology for generating them, or the eval/verification layer? Which piece is hardest to replicate?"
> - "If a frontier lab is your biggest customer and your biggest competitor, how do you keep them dependent rather than copying you?"

### Adaption Labs — capability bet (survives iff the advance is real)
Thesis: gradient-free test-time adaptation, efficiency over scaling. Survives iff the mechanism is a genuine architectural/systems advance the labs don't replicate. Dies if it's a thin layer over open weights that the next long-context trick or next Llama absorbs.

> [!QUESTION] Press on whether the advantage is structural or a closing gap
> - "Is gradient-free test-time adaptation a durable architectural advance, or a temporary efficiency gap that frontier-scale + native long-context eventually closes? What's the moat in 3 years?"
> - "When you say gradient-free adaptation at scale — where does the weights layer sit? Are you training/post-training base models to be adaptable, or adapting open weights? Is the live loop fully gradient-free or is there a slower weight-update cycle behind it?" *(also resolves where I'd fit — modeling vs systems vs data)*
> - "If OpenAI/Anthropic ship native continual adaptation as a platform feature, what of yours survives that?"
> - "What's the supervision signal for test-time adaptation, and how do you keep it from being gamed / drifting?" *(my reward-modeling area + open problem)*

### Recursive — research bet (binary, not commoditization risk)
Thesis: recursive self-improvement, automated science. If it works, the output *is* the frontier (acquisition-bait or a frontier lab itself), not a commoditizable widget. SaaS lens doesn't apply; risk is binary research risk.

> [!QUESTION] Underwrite research risk, not disruption risk
> - "If recursive self-improvement works, are you a frontier lab, an acquisition target, or a tooling company? Which outcome are you building toward?"
> - "What's the milestone that proves the recursion compounds rather than plateaus? How will you know in 12–18 months whether the core bet is working?"
> - "How do you compete for compute and talent against the frontier labs on something other than mission?"

### Trajectory — application-adjacent platform (MOST exposed — tightest fit, so sit with this tension)
Thesis: continual post-training of agentic models on customer product-usage signal, sold to app-layer AI cos (Harvey, Decagon, Clay). **Double exposure:** (1) customers are themselves the SaaS tier being disrupted; (2) "continually post-train on your usage data" is exactly what the labs are racing to offer natively (cf. OpenAI Agentic Post-Training JD: "improve the user-data flywheel," "learn from implicit user feedback").

> [!QUESTION] This is a race against the platform — test whether they can win it
> - "Continual post-training on usage data is something OpenAI and Anthropic explicitly list as in-house priorities. What do you build that they won't, and how long is your head start?"
> - "Your customers are application-layer AI companies — the tier most exposed to agent commoditization. How exposed is your revenue base if they get squeezed?"
> - "Is the moat the product, or the accumulated cross-customer data/methodology position? What's unassailable once a lab decides to offer this natively?"
> - "What stops a customer from going direct to the base-model provider for continual adaptation once it's a platform feature?"

### NeoCognition — specialist-agent company (continual-learning-adjacent, NOT RSI)
Thesis: self-learning agents that specialize to enterprise domains. Yu Su (CEO). $40M seed. Agent-layer on open base models; data gated behind enterprise deployments.

> [!QUESTION] Confirm the specialization ceiling and data supply
> - "Is the agent adapting within a fixed capability envelope, or does the system improve its own learning procedure over time? Where's the line between specialization and self-improvement?"
> - "Since the learning signal comes from the enterprise environments you deploy into, how do you get that data, who owns it, and is there a cold-start problem before enough deployments?"
> - "Are you training/post-training your own models, or building the agent layer on top of foundation models you don't train?"

### Fireworks AI — inference platform moving up-stack
Thesis: high-performance inference, now adding fine-tuning / RL fine-tuning / eval as product lines. Pawel Garbacki (co-founder, ex-Meta PyTorch).

> [!QUESTION] Test whether the role is model-behavior or pure systems
> - "Is the bet to stay the neutral serving fabric, or to own more of the fine-tuning / post-training / adaptation layer customers need?"
> - "As base models get cheaper and hyperscalers expand managed inference, what keeps an independent inference layer durable?"
> - "Where does someone with deep post-training and RL experience create the most leverage here versus where the team is already strong?"

---

## Career-risk reframe (for my own decision, not for the founders)

> [!NOTE] What I'm actually underwriting
> I'm not underwriting "will this company survive." I'm underwriting **"will my equity be worth something AND will the work make me more valuable."**
> - Commoditization risk hits the **equity** hard.
> - It hits my **human capital** much less — *if* the work is on a real technical frontier (post-training, test-time learning) rather than building a wrapper.
> - Even an acqui-hire is a fine outcome for an early senior technical hire.
> - Implication: **weight technical substance over business-model durability when choosing, but price the equity accordingly.**

## See also
- [[job-search-context]] — master operating brief
- [[neolab-comparison]] — Preference Model / Trajectory / Recursive / Adaption side-by-side
- [[continual-learning-landscape]] — three-substrate thesis (lens for evaluating Adaption)
