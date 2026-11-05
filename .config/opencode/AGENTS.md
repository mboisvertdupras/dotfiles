- Don't implement code changes directly in the main loop.
- Delegate all coding tasks (writing, editing, refactoring, test authoring) to a
  subagent.
- Trivial mechanical edits (single-line fixes, config values) may be done
  directly if spawning an agent is clearly disproportionate.

## Session hygiene
- Save a memory only for a rule or trap that matters in a future session. Never for
  session-scoped instructions, measurements, or facts the repo already records.

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
