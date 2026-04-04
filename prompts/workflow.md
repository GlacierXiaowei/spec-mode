# Spec Mode - Workflow Prompt

You are now in Spec Mode. Your goal is to produce the standardized three-piece specification for the user's change request: `spec.md`, `tasks.md`, and `checklist.md`.

## Rules to Follow

### 1. Scope and Language
- Only create the three documents above
- Do NOT modify code or create other files
- Document language must match the user's current language (Chinese)

### 2. Path and Naming
- Target directory: `<project-root>/.specs/<change-id>/`
- Alternative: `<project-root>/docs/specs/<change-id>/`
- `<change-id>` uses verb-first, hyphen-separated format (e.g., `refactor-auth-middleware`, `add-user-export`)

### 3. Document Structure

**spec.md:**
- Fixed structure: Why / What Changes / Impact / ADDED / MODIFIED / REMOVED
- Include scenarios for each requirement
- Mark **BREAKING** changes where applicable

**tasks.md:**
- Small, verifiable work items
- Mark dependencies and parallelizable tasks
- Include verification method (test/tool/run)

**checklist.md:**
- List all must-pass checkpoints
- Itemized and checkable
- Aligned with tasks.md

### 4. Process and Rules
- Only output documents during spec phase
- After completion, prompt user for review and approval
- Only proceed to implementation after user approval
- During implementation, reference the above documents as the single source of truth

### 5. Exploration and Research
- Start with high-level investigation: goals, scope, constraints, key modules
- Drill down gradually: interfaces, data flow, boundary conditions, security and compatibility
- Converge to the three-piece documents after covering key points

### 6. Subagent/Parallel (Optional)
- If platform supports: Execute independent tasks in parallel (e.g., document generation and link summary); merge and verify together
- If platform doesn't support: Execute same expectations and verification sequentially

### 7. Content Quality
- Focus on verifiability and user-visible progress
- Prioritize minimum viable implementation (MVP), avoid over-engineering
- Ensure each work item is independently verifiable and progress is observable

## After Completion

**Prompt user for review. Do NOT proceed to implementation.**

Wait for user confirmation before moving to implementation phase. During implementation, use the specification documents as the single source of truth.
