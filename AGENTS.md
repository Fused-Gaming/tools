# AGENTS.md - Agent Orchestration Guide for Tools Repository

This file coordinates agent activities and workflows in the Fused Gaming Tools repository.

## Agent Roles & Responsibilities

### PR Steward / Babysit Agent

**Purpose**: Monitor and drive PRs to merge-ready state

**Responsibilities**:
- Monitor CI/test failures
- Address review comments
- Validate registry changes
- Run validation before merge
- Ensure documentation consistency

**Key checks**:
```bash
./validate-tools.sh              # Validate registry
jq '.' marketplace-registry.json # Check JSON
git diff CHANGELOG.md VERSION.json
```

**Rules**:
- ✅ Can merge when CI green and review approved
- ❌ Cannot merge if validation fails
- ❌ Cannot merge without CHANGELOG update
- ✅ Can request minor docs fixes

### Documentation Agent

**Purpose**: Maintain and improve documentation

**Responsibilities**:
- Keep docs current and accurate
- Fix broken links and references
- Update guides with new tools
- Ensure version headers present
- Maintain cross-reference consistency

**Scope**:
- Edit files in `docs/` subdirectories
- Update CHANGELOG.md for doc changes
- Fix formatting and clarity issues
- Add examples and explanations

**Constraints**:
- Don't change tool definitions
- Don't modify marketplace-registry.json
- Don't alter VERSION.json unprompted
- Keep documentation style consistent

### Registry Agent

**Purpose**: Manage marketplace tool registry

**Responsibilities**:
- Add new tools to registry
- Update tool metadata
- Modify categories if needed
- Validate registry integrity
- Update statistics in VERSION.json

**Scope**:
- Update `marketplace-registry.json`
- Update statistics in VERSION.json
- Update TOOLS_CATALOG.md entries
- Add registry-related changelog entries

**Constraints**:
- Must follow ADD_TOOL_TEMPLATE.md
- Must validate JSON after changes
- Must update statistics accurately
- Must get approval for breaking changes

### Release Agent

**Purpose**: Coordinate version releases

**Responsibilities**:
- Bump version numbers
- Create release notes
- Update CHANGELOG.md
- Create git tags
- Coordinate with other agents

**Scope**:
- Update VERSION.json version field
- Create `docs/releases/RELEASE_v1.x.x.md`
- Update CHANGELOG.md
- Create git tags

**Constraints**:
- Semantic versioning only
- Release notes must be comprehensive
- Cannot skip CHANGELOG updates
- Must coordinate timing

### Explorer / Research Agent

**Purpose**: Research and analyze repository

**Responsibilities**:
- Identify improvements
- Analyze tool metadata
- Research integration patterns
- Suggest enhancements
- Document findings

**Scope**:
- Read all documentation
- Query marketplace-registry.json
- Analyze file structure
- Check cross-references
- Survey tool capabilities

**Constraints**:
- Read-only access
- No direct modifications
- Report findings to humans
- Suggest rather than implement

## Workflow Coordination

### Adding a Tool Workflow

**Actors**: Registry Agent, Documentation Agent, PR Steward

1. **Registry Agent**:
   - Follow ADD_TOOL_TEMPLATE.md
   - Update marketplace-registry.json
   - Update VERSION.json statistics
   - Add changelog entry
   - Create commit

2. **Documentation Agent**:
   - Add tool to TOOLS_CATALOG.md
   - Update category section
   - Add to guides if applicable
   - Verify links work
   - Update cross-references

3. **PR Steward**:
   - Run `./validate-tools.sh`
   - Check JSON validity
   - Verify statistics match
   - Approve for merge

4. **Release Agent** (if versioning bump):
   - Update VERSION.json version
   - Add to changelog
   - Prepare release notes

### Documentation Update Workflow

**Actors**: Documentation Agent, PR Steward

1. **Documentation Agent**:
   - Identify outdated/broken docs
   - Update markdown files
   - Fix links and references
   - Ensure version headers
   - Create commit with clear message

2. **PR Steward**:
   - Verify changes don't break links
   - Check formatting consistency
   - Test documentation navigation
   - Approve for merge

### Release Workflow

**Actors**: Release Agent, PR Steward, All Others

1. **Release Agent**:
   - Create RELEASE_v1.x.x.md
   - Update CHANGELOG.md
   - Update VERSION.json
   - Create git tag
   - Create release PR

2. **PR Steward**:
   - Verify completeness
   - Check documentation accuracy
   - Coordinate timing
   - Merge when ready

3. **All Agents**:
   - No new PRs during release window
   - Coordinate changes
   - Update version references

## Agent Permissions & Constraints

### Read Permissions (All)
- ✅ Read all documentation
- ✅ Read marketplace-registry.json
- ✅ Read VERSION.json
- ✅ Read CHANGELOG.md
- ✅ Read all reference files

### Write Permissions by Role

**Registry Agent**:
- ✅ marketplace-registry.json
- ✅ TOOLS_CATALOG.md
- ✅ VERSION.json (statistics)
- ✅ CHANGELOG.md (additions)
- ❌ Other docs
- ❌ Code/validation script

**Documentation Agent**:
- ✅ All files in `docs/` subdirectories
- ✅ CHANGELOG.md (doc changes)
- ✅ README.md updates
- ❌ marketplace-registry.json
- ❌ VERSION.json (except note field)
- ❌ Script files

**Release Agent**:
- ✅ VERSION.json (version, date)
- ✅ CHANGELOG.md
- ✅ Release notes files
- ✅ Git tags
- ❌ marketplace-registry.json
- ❌ Tool documentation
- ❌ Scripts

**PR Steward**:
- ✅ Merge approval (not edit)
- ✅ Request changes
- ✅ Run validation
- ✅ Coordinate workflow
- ❌ Direct file edits
- ❌ Force merges

## File Access Matrix

| File | Registry | Docs | Release | Steward | Explorer |
|------|----------|------|---------|---------|----------|
| marketplace-registry.json | RW | R | R | R | R |
| TOOLS_CATALOG.md | RW | RW | R | R | R |
| VERSION.json | RW | R | RW | R | R |
| CHANGELOG.md | RW | RW | RW | R | R |
| docs/* | R | RW | R | R | R |
| README.md | R | RW | R | R | R |

Legend: R=Read, W=Write, RW=Read/Write

## Conflict Resolution

### File Conflicts

**If two agents modify same file**:
1. Check timestamps and commits
2. Merge changes if compatible
3. Rebase if necessary
4. Run validation after merge
5. PR Steward approves final

**If changes conflict**:
1. Prioritize: Release > Registry > Docs
2. Discuss in PR comments
3. Resolve with merge commit
4. Update CHANGELOG with merged state

### Approval Conflicts

**If approval needed but unavailable**:
1. PR Steward can request reviewers
2. Use GitHub request review feature
3. Set PR to draft if in flux
4. Communicate status in PR comments

## Validation Standards

### Before Merge (PR Steward)

```bash
# Run validation script
./validate-tools.sh

# Validate JSON files
jq '.' docs/configuration/marketplace-registry.json
jq '.' docs/configuration/VERSION.json

# Verify statistics
jq '.stats' docs/configuration/marketplace-registry.json

# Check for version header in new docs
grep -r "Version Control" docs/

# Verify changelog updated
git diff HEAD~1 CHANGELOG.md
```

### For Registry Changes (Registry Agent)

```bash
# Before committing
jq '.' docs/configuration/marketplace-registry.json
jq '.registry.tools | length' docs/configuration/marketplace-registry.json

# Verify new tool has all fields
jq '.registry.tools[] | select(.id=="new-id")' docs/configuration/marketplace-registry.json

# Check stats updated
jq '.stats.totalTools' docs/configuration/marketplace-registry.json
jq '.stats.byCategory' docs/configuration/marketplace-registry.json
```

### For Release Changes (Release Agent)

```bash
# Verify version format (MAJOR.MINOR.PATCH)
jq '.version' docs/configuration/VERSION.json

# Check changelog entry exists
tail -20 CHANGELOG.md

# Verify release notes file
ls -la docs/releases/RELEASE_*.md

# Test git tag format
git tag | grep v1.
```

## Communication Protocols

### Agent-to-Agent Communication

**Via PR Comments**:
- Use `@mention` for specific agent
- Link to related issues
- Include context and commands
- Tag with type: [Question], [Issue], [Action]

**Via Commit Messages**:
- Include related agent actions
- Reference what other agents should do
- Note validation passed
- Clear, actionable language

**Via CHANGELOG.md**:
- Document coordination points
- Note agent-initiated changes
- Track version changes
- Ensure alignment

### Agent-to-Human Communication

**Via PR Description**:
- Summary of changes
- Validation results
- Any special considerations
- Links to related docs

**Via PR Comments**:
- Detailed explanations
- Ask for clarification
- Highlight blockers
- Request human decision

**Via Issues**:
- Flag problems or improvements
- Suggest new features
- Report validation failures
- Request architecture decisions

## Monitoring & Health Checks

### Daily Health Check (by Explorer Agent)

```bash
# Count tools
jq '.registry.tools | length' docs/configuration/marketplace-registry.json

# Check JSON validity
jq '.' docs/configuration/marketplace-registry.json > /dev/null && echo "Valid"

# Count documentation files
find docs -name "*.md" | wc -l

# Check latest commit
git log -1 --oneline

# Verify version consistency
echo "VERSION.json:"; jq '.version' docs/configuration/VERSION.json
```

### Weekly Integrity Check (by PR Steward)

- Run full validation script
- Verify all statistics
- Check for broken links
- Review recent PRs
- Audit access logs

### Pre-Release Check (by Release Agent)

- All tools inventoried
- Statistics accurate
- Documentation current
- Version numbers aligned
- Release notes complete

## Error Recovery

### If Validation Fails

1. **Identify error**: Run validation script
2. **Isolate issue**: Check which check failed
3. **Fix error**: 
   - JSON errors: Fix syntax
   - Stats errors: Recalculate and update
   - Link errors: Update broken references
4. **Re-validate**: Run script again
5. **Commit fix**: Clear message explaining fix

### If Registry Corrupted

1. **Backup**: Save current version
2. **Check git history**: `git log marketplace-registry.json`
3. **Restore**: `git checkout <commit> docs/configuration/marketplace-registry.json`
4. **Validate**: Run validation script
5. **Re-apply changes**: Add back valid tools
6. **Commit**: Document recovery

### If Version Misaligned

1. **Check three sources**:
   - VERSION.json version field
   - CHANGELOG.md latest version
   - Git tags latest tag
2. **Identify discrepancy**:
   - Which is correct?
   - What changed?
3. **Align all three**:
   - Update VERSION.json
   - Update CHANGELOG.md
   - Create/update git tags
4. **Verify**: All three match

## Escalation Path

**Minor Issues** (typos, formatting):
→ Documentation Agent can fix directly

**Moderate Issues** (broken links, stats):
→ Appropriate agent fixes, PR Steward approves

**Major Issues** (schema changes, breaking changes):
→ PR Steward tags for human review

**Critical Issues** (data loss, corruption):
→ Immediate human escalation

## Resource Links

- **CLAUDE.md** — Repository configuration
- **SKILL.md** — Detailed skill guide
- **README.md** — Repository overview
- **CHANGELOG.md** — Version history
- **docs/** — All documentation

## Glossary

- **Registry**: marketplace-registry.json tool metadata
- **Version**: docs/configuration/VERSION.json file
- **Stats**: Tool count and category breakdown
- **Validation**: Check JSON validity and consistency
- **Merge**: Combine branch changes to main
- **Release**: Version bump and tagged release

## Quick Reference

### Add Tool
1. Registry Agent: Follow template, update registry, add to catalog
2. Docs Agent: Add to guides, fix links
3. PR Steward: Validate and merge

### Fix Docs
1. Docs Agent: Update file, test links
2. PR Steward: Review and merge

### Release
1. Release Agent: Bump version, create release notes
2. Registry Agent: Finalize statistics
3. Docs Agent: Update guides with new version
4. PR Steward: Validate and merge

---

**Last Updated**: 2026-09-30  
**Version**: 1.0.1  
**Repository**: Fused-Gaming/tools
