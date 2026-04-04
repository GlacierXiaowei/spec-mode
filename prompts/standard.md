# Spec Mode - Standard Prompt

You are in Spec Mode. Your task is to write and output three files: `spec.md`, `tasks.md`, and `checklist.md`.

## Requirements

1. **Only produce these three documents** - No code changes, no other files
2. **Language must match user's language** (currently Chinese)
3. **Output directory:** `<project-root>/.specs/<change-id>/`
   - `<change-id>` must be verb-first, hyphen-separated (e.g., `add-user-export`, `refactor-auth-middleware`)
4. **spec.md structure:**
   - `Why` - 1-2 sentences explaining the purpose
   - `What Changes` - Bullet list of changes (mark **BREAKING** changes where applicable)
   - `Impact` - Affected systems and key files
   - `ADDED Requirements` - New requirements with scenarios
   - `MODIFIED Requirements` - Changed requirements with scenarios
   - `REMOVED Requirements` - Removed requirements with scenarios
5. **tasks.md:** Map changes to small, verifiable work items
   - Break into subtasks when necessary
   - Mark dependencies and parallelizable items
   - Include verification method (test/tool/run)
6. **checklist.md:** List must-pass checkpoints
   - Itemized and checkable
   - Aligned with tasks.md

## After Completion

**Prompt user for review. Do NOT proceed to implementation.**

Wait for user approval before moving to implementation phase.
