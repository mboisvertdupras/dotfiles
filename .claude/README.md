# Claude Code memory

Version-controlled backup of Claude Code's persistent file-based memory.

## What this is

`memory/` holds the real memory files. Claude Code reads/writes them at:

    ~/.claude/projects/-Users-marc/memory/

That path is a **symlink** pointing here, so every memory edit Claude makes is
written straight into this repo and shows up in `git status`. Edit the files in
this repo (the real target) — never the symlink.

Note: the `-Users-marc` segment is Claude Code's encoding of the working
directory (`/Users/marc`). It is specific to this machine + username.

## Restore on a new machine

After cloning the dotfiles repo, recreate the symlink so Claude Code finds the
memory at the path it expects:

    mkdir -p ~/.claude/projects/-Users-marc
    ln -s ~/.dotfiles/.claude/memory ~/.claude/projects/-Users-marc/memory

If your username or working directory differs, adjust the `-Users-marc` segment
to match (e.g. `-Users-<you>`).
