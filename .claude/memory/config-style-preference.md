---
name: config-style-preference
description: "User prefers readable, well-commented config over compressed one-liners"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 84b8b3f0-4984-4f0a-897e-b210d8ba2648
---

For config files (tmux, shell, terminal), the user prefers readable, clearly-commented settings over terse/compressed one-liners or numeric-index forms. They like to understand *why* a setting exists and are skeptical of "messy" config.

**Why:** They review and maintain their own dotfiles and want them legible.
**How to apply:** When editing their config, write each concern on its own line with a short comment explaining the rationale, rather than packing options into a single dense directive. See [[dotfiles-layout]].
