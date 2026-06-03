---
name: dotfiles-layout
description: "Where the user's dotfiles live and how they're symlinked (edit the real target, not the symlink)"
metadata: 
  node_type: memory
  type: reference
  originSessionId: 84b8b3f0-4984-4f0a-897e-b210d8ba2648
---

The user's dotfiles live in `~/.dotfiles`, a git repo, symlinked into `$HOME`. E.g. `~/.tmux.conf` → `~/.dotfiles/.tmux.conf`, and likely the same pattern for `~/.config/ghostty/config`, `~/.zshrc`, etc.

**How to apply:** When editing a dotfile, the Edit/Write tools refuse to write through the symlink — resolve it first (`readlink -f`) and edit the real `~/.dotfiles/...` target. Changes show up as uncommitted modifications in the `~/.dotfiles` repo; don't commit unless asked. See [[config-style-preference]].
