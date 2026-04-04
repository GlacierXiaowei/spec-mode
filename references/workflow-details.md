# Workflow Details

## Complete Step-by-Step Flow

### Phase 1: Understand & Scan

1. **Understand user goal** - Analyze the user's request
2. **Scan context** - Read relevant files, code structure, existing conventions
3. **Make inferences** - If you can reasonably infer details, proceed with assumptions

### Phase 2: Ask Questions (Only If Necessary)

**Ask ONLY when:**
- Cannot reliably infer after scanning context
- AND the uncertainty affects spec/implementation direction/scope/result

**Typical cases (only 3 types):**
1. **Vague requirements** - e.g., "optimize homepage" without specifying visual/performance/interaction
2. **Multiple valid approaches** - e.g., permission system design (role-based vs resource-level)
3. **Unclear scope** - e.g., frontend only / backend only / both

**Do NOT ask about:**
- Minor details (e.g., button color) → Make reasonable assumptions
- Implementation technical choices → Decide yourself

### Phase 3: Create Spec Documents

1. **spec.md** - Define why, what changes, impact, requirements
2. **tasks.md** - Break down into small, verifiable work items
3. **checklist.md** - List must-pass checkpoints

### Phase 4: User Confirmation

**After creating all three documents:**

```
✅ 已完成规范文档：
- .specs/<change-id>/spec.md
- .specs/<change-id>/tasks.md
- .specs/<change-id>/checklist.md

[简要总结关键内容]

请审阅。确认后我开始实现。
```

**Then STOP** - Wait for user confirmation before proceeding.

### Phase 5: Implementation

**After user confirms:**

1. **Start implementation directly** - No more questions
2. **Make judgments on uncertainties** - Decide yourself
3. **Report after completion** - Unified summary at the end
4. **Only interrupt for major deviations** - Critical issues only

**WRONG:** Asking about every small decision during implementation
**RIGHT:** Execute completely after confirmation → Report when done

## Workflow Diagram

```
User Request
     ↓
Scan Context
     ↓
Can Infer? ──no,critical──→ Ask Questions ──┐
     │                                      ↓
     │yes/minor                          Create spec.md
     ↓                                      ↓
Make Assumption ────────────────────────────┘
     ↓
Create tasks.md
     ↓
Create checklist.md
     ↓
Notify User
     ↓
User Review ──changes needed──→ Revise Specs ──┐
     │                                        ↓
     │approved                                 └──→ (back to User Review)
     ↓
Implementation
     ↓
Complete & Report
```

## Key Principles

1. **Scan before asking** - Never ask before scanning context
2. **Assume when reasonable** - Don't ask about minor details
3. **Notify, don't question** - Use notification format for confirmation
4. **Execute without interruption** - After confirmation, no more questions
