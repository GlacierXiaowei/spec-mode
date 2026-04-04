# Cross-Platform Notes

## Directory Flexibility

Spec Mode works with any directory structure. Choose what fits your project:

| Option | Path | Use Case |
|--------|------|----------|
| **Default** | `<project-root>/.specs/<change-id>/` | Standard location |
| **Alternative** | `<project-root>/docs/specs/<change-id>/` | Projects with docs folder |
| **Custom** | Any directory | Keep three-file structure |

## Naming Convention

`<change-id>` uses:
- **Verb-first** format
- **Hyphen-separated** words
- **Lowercase** letters

**Examples:**
- `add-user-export`
- `refactor-auth-middleware`
- `fix-login-bug`
- `update-homepage-ui`

## Editor Support

Spec Mode works in any AI environment:

- ✅ Claude Code
- ✅ Cursor
- ✅ VS Code extensions
- ✅ Any SKILL.md-compatible agent

**No tool-specific dependencies** - The skill is pure markdown instructions.

## Subagent Support

| Scenario | Behavior |
|----------|----------|
| **Parallel tasks available** | Use subagents for independent tasks |
| **Sequential only** | Execute tasks one by one |

Subagent support is **optional** - the skill works without it.

## Three-File Structure

Regardless of directory, always maintain:

```
<change-id>/
├── spec.md       # What & Why
├── tasks.md      # How to implement
└── checklist.md  # Verification checkpoints
```

This structure is the **core invariant** of Spec Mode.
