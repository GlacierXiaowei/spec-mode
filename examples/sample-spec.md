# Sample Spec - User Export Feature

This is a complete example of the three-piece specification output.

---

## spec.md

```markdown
# User Export Feature Spec

## Why

Users need to export their data for external analysis and record-keeping. Currently there is no way to export user data, which limits data portability and compliance with data export requirements.

## What Changes

- Add CSV export endpoint for user data
- Add export button to user management page
- Add rate limiting to prevent abuse
- **BREAKING:** Users without `export` permission cannot access the new endpoint

## Impact

- **Systems:** User management module, Authentication system
- **Files:** 
  - `src/api/users.ts` (new export endpoint)
  - `src/components/UserTable.tsx` (add export button)
  - `src/permissions.ts` (add export permission)
- **Users:** Admin users will see new export functionality

## ADDED Requirements

### Export User Data as CSV

**Scenario:** Admin user wants to export all users for external analysis

**Acceptance Criteria:**
- Export includes: id, name, email, created_at, last_login
- File is downloaded as `users-export-YYYY-MM-DD.csv`
- Export completes within 30 seconds for up to 10,000 users

### Rate Limiting

**Scenario:** Prevent abuse of export functionality

**Acceptance Criteria:**
- Maximum 5 exports per user per hour
- Clear error message when limit exceeded
- Rate limit reset after 1 hour

## MODIFIED Requirements

### User List Pagination

**Before:** User list shows 50 users per page

**After:** User list shows 100 users per page (to reduce export frequency)

**Scenario:** Admin viewing user list

**Acceptance Criteria:**
- Default page size changed to 100
- Existing bookmarks to specific pages still work

## REMOVED Requirements

### None

No requirements are being removed in this change.
```

---

## tasks.md

```markdown
# Implementation Tasks

## Task Overview

| ID | Task | Dependencies | Estimated |
|----|------|--------------|-----------|
| T1 | Add export permission | None | 15 min |
| T2 | Create CSV export endpoint | T1 | 45 min |
| T3 | Add rate limiting | T2 | 30 min |
| T4 | Add export button to UI | T2 | 30 min |
| T5 | Write integration tests | T2, T3 | 30 min |

---

## Tasks

### Task T1: Add Export Permission

**Files:**
- Modify: `src/permissions.ts:10-25`
- Modify: `src/types/permissions.ts:5-10`

**Steps:**

1. Add `export` to Permission type
2. Add `EXPORT_DATA` constant
3. Update permission validation

**Verification:**
- [ ] TypeScript compiles without errors
- [ ] Permission appears in admin permission list

---

### Task T2: Create CSV Export Endpoint

**Files:**
- Create: `src/api/users/export.ts`
- Modify: `src/api/users/index.ts:1-20`

**Steps:**

1. Create export handler function
2. Generate CSV from user data
3. Set proper headers for download
4. Register route in user router

**Verification:**
- [ ] Endpoint returns 200 with CSV data
- [ ] CSV format is correct
- [ ] Headers trigger file download

---

### Task T3: Add Rate Limiting

**Files:**
- Modify: `src/middleware/rateLimit.ts`
- Modify: `src/api/users/export.ts`

**Steps:**

1. Add export-specific rate limit rule
2. Apply middleware to export endpoint
3. Add error response for limit exceeded

**Verification:**
- [ ] 6th export within 1 hour returns 429
- [ ] Error message is user-friendly

---

### Task T4: Add Export Button to UI

**Files:**
- Modify: `src/components/UserTable.tsx:50-100`

**Steps:**

1. Add export button component
2. Add click handler to call export endpoint
3. Add loading state during export
4. Add error handling

**Verification:**
- [ ] Button visible to admin users
- [ ] Button hidden for non-admin users
- [ ] Download starts on click

---

### Task T5: Write Integration Tests

**Files:**
- Create: `tests/api/users/export.test.ts`

**Steps:**

1. Test successful export
2. Test rate limiting
3. Test permission denied
4. Test large dataset

**Verification:**
- [ ] All tests pass
- [ ] Code coverage > 80%
```

---

## checklist.md

```markdown
# Verification Checklist

## Pre-Implementation

- [ ] spec.md is complete and approved
- [ ] tasks.md is complete with clear verification steps
- [ ] All stakeholders have reviewed the specification
- [ ] Change ID is assigned: `add-user-export`

## Implementation

### Code Quality

- [ ] All new code follows project conventions
- [ ] All tests pass (existing and new)
- [ ] No linting errors introduced
- [ ] Code is properly commented where necessary

### Functionality

- [ ] Export endpoint returns CSV data
- [ ] Export includes all required fields
- [ ] Rate limiting works correctly (5/hour)
- [ ] Export button visible to admins only
- [ ] Permission check works correctly

### Testing

- [ ] Unit tests for export function
- [ ] Integration tests for endpoint
- [ ] Rate limit tests
- [ ] Permission tests
- [ ] Error handling tests

### Documentation

- [ ] API documentation updated
- [ ] Component documentation added
- [ ] CHANGELOG updated

## Post-Implementation

### Verification

- [ ] All checklist items from tasks.md are complete
- [ ] Manual testing completed
- [ ] Performance tested with 10,000 users

### Cleanup

- [ ] Temporary files removed
- [ ] Debug code removed
- [ ] Unused imports removed
- [ ] Code formatted with prettier

### Deployment

- [ ] Changes committed with clear messages
- [ ] Pull request created
- [ ] Deployment plan documented

## Sign-off

- [ ] Developer sign-off
- [ ] Reviewer sign-off
- [ ] Product owner approval

---

**Change ID:** add-user-export
**Date Completed:** 2024-01-15
**Status:** Complete
```
