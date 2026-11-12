- Don't implement code changes directly in the main loop.
- Delegate all coding tasks (writing, editing, refactoring, test authoring) to a
  subagent.
- Trivial mechanical edits (single-line fixes, config values) may be done
  directly if spawning an agent is clearly disproportionate.

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State the assumptions you're making.
- Make routine judgment calls yourself. When different readings of the request would
  lead to materially different work, name them and ask before building.
- If a simpler approach exists, say so. Push back when warranted.

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## Writing style

Write clear, direct, specific prose. Avoid these AI writing patterns:

- **Eyebrow headings:** Don't add category labels above headings.
- **Decorative numbering:** Only number sections when order matters.
- **Rhythmic or contrasting titles:** Avoid formulas like "Hard to describe. Easy to recognize."
- **Metaphorical headings:** Prefer literal descriptions over personification or clever imagery.
- **Slogans and clichés:** Avoid phrases like "Built for teams that ship" or "Unlock your potential."
- **Vague headings:** Replace "A closer look" or "Why it matters" with specific descriptions.

### Principles

- Write headings like email subject lines, not movie trailers.
- Prefer information over cleverness.
- Don't manufacture rhythm, drama, or contrast.
- Be concrete enough that the copy couldn't describe any product.
- Let interesting facts speak for themselves.
- Sound like a thoughtful human, not a marketing department.

