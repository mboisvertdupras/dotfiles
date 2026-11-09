# pstack model configuration. One line per role. Delete a line to fall back to the skill default.
# `inherit-parent` or `auto` as a value: the role runs on the parent chat model (omit the subagent `model`). Alias entries in a panel list still count toward its fan-out.
# Values are OpenCode `<provider>/<model>#<effort>`.
# budget: medium (high)
feature, refactoring: claude-agent/sonnet#medium, claude-agent/opus#medium
bug-fix: claude-agent/opus#high
perf-issue: claude-agent/opus#high
hillclimb: claude-agent/opus#medium
judgment and prose: claude-agent/opus#high
hardest tasks: claude-agent/opus#high
how explorer: claude-agent/haiku#xhigh
how explainer: claude-agent/opus#medium
why investigators: opencode/gpt-6.1-sol#high
why synthesizer: claude-agent/opus#medium
reflect tooling: claude-agent/sonnet#high
reflect judgment, divergent, synthesizer: claude-agent/opus#high
arena runners: claude-agent/fable#high, opencode/gpt-6.1-sol#high
arena cross-judge pool: opencode/gpt-6.1-sol#high, claude-agent/fable#high
swarm workers: claude-agent/haiku#xhigh, openrouter/meta/muse-ember#max
architect runners: claude-agent/fable#high, opencode/gpt-6-astra#high
interrogate reviewers: claude-agent/opus#high, opencode/gpt-6.1-sol#high
