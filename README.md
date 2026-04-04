# Spec Mode

> **Specs first, code second.**

![OpenCode Compatible](https://img.shields.io/badge/OpenCode-Compatible-blue)
![License](https://img.shields.io/badge/license-Apache--2.0-green)
![Version](https://img.shields.io/badge/version-1.0.0-orange)

**A professional specification-first development workflow for AI assistants.**

Inspired by Trae's spec-mode-skill, this skill brings enterprise-grade specification practices to your AI coding workflow.

**Compatible with:** OpenCode, Cursor, Windsurf, Copilot

## Overview

Spec Mode creates three standardized documents before starting any complex development task:

- **spec.md** - What & Why (requirements, scope, impact)
- **tasks.md** - How to implement (breakdown into verifiable work items)
- **checklist.md** - Verification checkpoints (acceptance criteria)

## Why Spec Mode?

| Problem | Spec Mode Solution |
|---------|-------------------|
| ❌ AI writes code without understanding requirements | ✅ Creates detailed spec.md first |
| ❌ Vague requirements lead to rework | ✅ Clear acceptance criteria in checklist.md |
| ❌ Hard to track progress on large tasks | ✅ Task breakdown in tasks.md |
| ❌ No documentation for handoff | ✅ Professional spec documents |
| ❌ Scope creep during implementation | ✅ Defined scope before coding starts |

## Installation

### Option 1: Install via npm

```bash
# Download and extract npm package
npm pack spec-mode
tar -xzf spec-mode-1.0.0.tgz

# Copy to skills directory (Please find the installation location of the skill for your CLI platform by yourself.)
cp -r package ~/.config/opencode/skills/spec-mode
```

### Option 2: Install via GitHub
When running `npx skills add GlacierXiaowei/spec-mode --skill spec-mode`:

1. You'll see a list of AI agents
2. Use `↑↓` to navigate, `Space` to select/deselect
3. **Select only OpenCode** (or your preferred agent)
4. Press `Enter` to confirm

> **Tip:** Press `Space` first to deselect all, then select only OpenCode.


```bash
npx skills add GlacierXiaowei/spec-mode --skill spec-mode
```

### Option 3: Manual Installation

1. Clone or download this repository
2. Copy the skill folder to your AI assistant's skills directory
3. Restart your AI assistant

### Option 4: Localskill Installation

```bash
localskills.sh/s/KmQZgC5M2z
```
## Usage

Trigger Spec Mode by saying any of these phrases:

- "spec"
- "specification"
- "spec-mode"
- "写规范"
- "写 specs"

### Example

```
User: Let's build a user login system, use spec-mode
```

## When to Use

### ✅ Suitable for:

- Large features (login system, order flow, message center)
- Multi-file/module changes
- Vague requirements ("optimize experience", "refactor homepage")
- Need clear acceptance criteria
- Team collaboration or handoff
- High-risk changes (compatibility, permissions, payment, data migration)

### ❌ Not needed for:

- Small fixes (copy, spacing, minor bugs)
- Clear requirements ("change button text from A to B")
- One-time exploration
- Pure explanation tasks

**Rule of thumb:** Small/clear/low-risk → optional spec. Large/vague/risky → use spec.

## Output Structure

```
<project-root>/.specs/<change-id>/
├── spec.md        # Requirements and scope
├── tasks.md       # Implementation tasks
└── checklist.md   # Verification checkpoints
```

### Document Contents

#### spec.md

- Why (business goal)
- What (changes overview)
- Impact analysis
- ADDED/MODIFIED/REMOVED sections

#### tasks.md

- Small verifiable work items
- Dependencies between tasks
- Estimated effort

#### checklist.md

- Must-pass checkpoints
- Itemized & checkable criteria
- Acceptance tests

## Core Rules

### The Iron Rule

> **SPECS FIRST, CODE SECOND. NEVER SKIP SPEC PHASE.**

### What Spec Mode Forbids

- ❌ Writing code before specs are approved
- ❌ Skipping user review
- ❌ Modifying code "just a little bit"
- ❌ Scanning code before specs (scan AFTER specs for implementation)

## License

Apache-2.0

## Author

**Glacier Xiaowei**
- GitHub: [@GlacierXiaowei](https://github.com/GlacierXiaowei)
- Email: glacier_xiaowei@163.com

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
