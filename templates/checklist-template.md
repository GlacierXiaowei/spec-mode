# Verification Checklist

## Pre-Implementation

- [ ] spec.md is complete and approved
- [ ] tasks.md is complete with clear verification steps
- [ ] All stakeholders have reviewed the specification
- [ ] Change ID is assigned: `<change-id>`

## Implementation

### Code Quality

- [ ] All new code follows project conventions
- [ ] All tests pass (existing and new)
- [ ] No linting errors introduced
- [ ] Code is properly commented where necessary

### Functionality

- [ ] Feature works as specified in spec.md
- [ ] All ADDED requirements are implemented
- [ ] All MODIFIED requirements are updated correctly
- [ ] All REMOVED requirements are properly deprecated

### Testing

- [ ] Unit tests written and passing
- [ ] Integration tests written and passing
- [ ] Edge cases covered
- [ ] Error handling implemented

### Documentation

- [ ] Code comments added where necessary
- [ ] README updated if applicable
- [ ] API documentation updated if applicable
- [ ] Migration guide provided for BREAKING changes

## Post-Implementation

### Verification

- [ ] All checklist items from tasks.md are complete
- [ ] Manual testing completed (if applicable)
- [ ] Performance impact assessed (if applicable)
- [ ] Security review completed (if applicable)

### Cleanup

- [ ] Temporary files removed
- [ ] Debug code removed
- [ ] Unused imports removed
- [ ] Code formatted

### Deployment

- [ ] Changes committed with clear messages
- [ ] Pull request created (if applicable)
- [ ] Deployment plan documented (if applicable)
- [ ] Rollback plan documented (if applicable)

## Sign-off

- [ ] Developer sign-off
- [ ] Reviewer sign-off
- [ ] Stakeholder approval (if required)

---

**Change ID:** `<change-id>`
**Date Completed:** YYYY-MM-DD
**Status:** Complete / Blocked / Needs Revision
