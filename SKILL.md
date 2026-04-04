---
name: spec-mode
description: Use when user explicitly says "spec", "specification", "spec-mode", "写规范", "写 specs". Main entry skill that creates three spec documents (spec.md, tasks.md, checklist.md) and coordinates implementation. Suitable for complex long-term tasks.
---

# Spec Mode

## Overview

Spec Mode creates three standardized documents before implementation: `spec.md`, `tasks.md`, `checklist.md`.

**Core principle:** specs first, code second

**Use for:** Complex long-term tasks requiring clear specifications.

**Benefits:** Less rework, fewer misunderstandings, easy tracking, clear acceptance.

## When to Use

**Trigger:** User explicitly says "spec", "specification", "spec-mode", "写规范", "写 specs".

**Suitable for:**
- Large features (login system, order flow, message center)
- Multi-file/module changes
- Vague requirements ("optimize experience", "refactor homepage")
- Need clear acceptance criteria
- Team collaboration or handoff
- High-risk changes (compatibility, permissions, payment, data migration)

**Not needed for:**
- Small fixes (copy, spacing, minor bugs)
- Clear requirements ("change button text from A to B")
- One-time exploration
- Pure explanation tasks

**Rule of thumb:** Small/clear/low-risk → optional spec. Large/vague/risky → use spec.

**Key principle:** This skill is ONLY loaded by explicit user request.

## Quick Reference

| Document | Purpose | Key Sections |
|----------|---------|--------------|
| `spec.md` | What & Why | Why, What Changes, Impact, ADDED/MODIFIED/REMOVED |
| `tasks.md` | How to implement | Small verifiable work items with dependencies |
| `checklist.md` | Verification | Must-pass checkpoints, itemized & checkable |

**Output directory:** `<project-root>/.specs/<change-id>/`

**Naming:** `<change-id>` uses verb-first, hyphen-separated (e.g., `add-user-export`, `refactor-auth-middleware`)

## Core Rules

**The Iron Law:**

```
SPECS FIRST, CODE SECOND. NEVER SKIP SPEC PHASE.
```

**Violating the letter of the rules is violating the spirit of the rules.**

### What Spec Mode Produces

1. **spec.md** - The specification document
2. **tasks.md** - Implementation tasks breakdown
3. **checklist.md** - Verification checkpoints

### What Spec Mode Forbids

- ❌ Writing code before specs approved
- ❌ Skipping user review
- ❌ Modifying code "just a little"
- ❌ Scanning code before specs (scan AFTER specs for implementation)

**No exceptions:** Delete means delete.

## Common Mistakes

See `references/common-mistakes.md` for:
- Rationalizations to Resist (table)
- Red Flags - STOP and Start Over
- Why these mistakes happen
- How to avoid them

## FIRST RESPONSE RULE

**After spec-mode triggers:**

1. Understand user goal
2. **Scan context first** (code structure, conventions, related files)
3. Make reasonable assumptions when possible
4. **Ask ONLY when:**
   - Cannot infer after scanning
   - AND it affects spec/implementation direction/scope/result

**Ask about (3 types only):**
- Vague requirements ("optimize homepage" - which aspect?)
- Multiple valid approaches (permission system: role-based vs resource-level)
- Unclear scope (frontend only / backend only / both)

**WRONG:** Mechanical 3-5 questions, asking about minors, asking before scanning
**RIGHT:** Scan → Infer → Ask only if critical → Write specs

## AFTER CREATING SPECS RULE

**After creating all three documents:**

1. List the three files with paths
2. Summarize key content
3. **Use notification (not questions)**
4. STOP - Wait for user confirmation

**Correct format:**
```
✅ 已完成规范文档：
- .specs/<change-id>/spec.md
- .specs/<change-id>/tasks.md
- .specs/<change-id>/checklist.md

[简要总结关键内容]

请审阅。确认后我开始实现。
```

**WRONG:** Starting implementation immediately
**RIGHT:** Create specs → Notify → Wait → Implement

## Workflow

**Flow:** User Request → Scan Context → Ask (if critical) → Create 3 docs → Notify → Wait → Implement

**Step-by-step:**
1. Understand & Scan
2. Ask (only if critical)
3. Create spec.md, tasks.md, checklist.md
4. Notify user (notification format)
5. Wait for confirmation
6. Implement without interruption

See `references/workflow-details.md` for complete diagram and details.

## USER CONFIRMATION REQUIRED

**After creating documents, use this format:**

```
✅ 已完成规范文档：
- .specs/<change-id>/spec.md
- .specs/<change-id>/tasks.md
- .specs/<change-id>/checklist.md

[简要总结关键内容]

请审阅。确认后我开始实现。
```

**Before confirmation, DO NOT:** Write code, modify files, or implement.

**Note:** Scanning code happens BEFORE specs (for context), not after confirmation.

## AFTER USER CONFIRMATION

**After user confirms:**

1. **Implement directly, no more questions**
2. Make judgments on uncertainties yourself
3. Report when complete
4. Interrupt only for major deviations

**WRONG:** Asking about every small decision
**RIGHT:** Execute → Report when done

## Resources

**Prompts:** `prompts/standard.md`, `prompts/workflow.md`

**Templates:** `templates/spec-template.md`, `templates/tasks-template.md`, `templates/checklist-template.md`

**Examples:** `examples/sample-spec.md`

**Testing:** `tests/pressure-scenarios.md`

## Cross-Platform Notes

See `references/cross-platform.md` for:
- Directory flexibility options
- Naming conventions
- Editor support details
- Subagent support guidance
