# SKILL.md - Tools Repository Skill Guide

This file provides guidance for skills and agents working with the Fused Gaming Tools repository.

## Overview

The Tools repository is a **production marketplace** containing:
- **28 specialized tools** organized into 16 categories
- **Complete metadata registry** (`marketplace-registry.json`)
- **Comprehensive documentation** organized by audience
- **Version-controlled** with integrity tracking

## Repository Characteristics

| Aspect | Details |
|--------|---------|
| **Type** | Tools/Utilities Marketplace |
| **Size** | 28 active tools, 16 categories |
| **Stability** | Production-ready (v1.0.1) |
| **License** | Apache-2.0 (Non-Commercial) |
| **Key File** | `docs/configuration/marketplace-registry.json` |

## Key Skills for This Repository

### 1. Documentation Management Skill

**Purpose**: Maintain and organize repository documentation

**When to use**:
- Reorganizing docs structure
- Adding new documentation sections
- Creating integration guides
- Updating cross-references

**Key actions**:
- Read and update markdown files in `docs/`
- Ensure version control headers present
- Validate cross-reference links
- Update CHANGELOG.md

### 2. Registry Management Skill

**Purpose**: Manage the marketplace tool registry

**When to use**:
- Adding new tools to marketplace
- Updating tool metadata
- Modifying tool categories
- Fixing registry errors

**Key actions**:
- Parse `marketplace-registry.json`
- Validate JSON structure
- Update statistics in VERSION.json
- Test with validation script

### 3. Version Control Skill

**Purpose**: Manage versioning and releases

**When to use**:
- Preparing releases
- Tracking version changes
- Creating release notes
- Bumping version numbers

**Key actions**:
- Update VERSION.json
- Edit CHANGELOG.md
- Create release notes
- Track breaking changes

### 4. Validation Skill

**Purpose**: Validate repository integrity

**When to use**:
- Before merging changes
- Testing new tools
- Verifying registry integrity
- Checking documentation links

**Key actions**:
```bash
./validate-tools.sh              # Run validator
jq '.' marketplace-registry.json # Validate JSON
find docs -name "*.md" | wc -l  # Count docs
```

## Documentation Categories & Contents

### Getting Started
**Files**: `docs/getting-started/README.md`
**Content**: Quick overview, installation, key links
**Audience**: New users, quick reference
**Update**: When adding major features or changing setup

### Guides
**Files**: `docs/guides/TOOLS_SUPPLEMENT.md`
**Content**: Integration guides, supplementary information
**Audience**: Developers integrating tools
**Update**: When documenting new use cases

### Reference
**Files**: 
- `docs/reference/TOOLS_CATALOG.md` — Complete inventory
- `docs/reference/ADD_TOOL_TEMPLATE.md` — Contribution guide
- `docs/reference/MARKETPLACE.md` — Schema specifications
**Audience**: Developers and contributors
**Update**: When changing registry schema or adding tools

### Configuration
**Files**:
- `docs/configuration/VERSION.json` — Version metadata
- `docs/configuration/ENVIRONMENT.md` — Setup guide
- `docs/configuration/MANIFEST.json` — File tracking
**Audience**: Developers and administrators
**Update**: When version changes or new files added

### Releases
**Files**: `docs/releases/RELEASE_v1.0.0.md` (and future versions)
**Content**: Release notes and version history
**Audience**: Users tracking changes
**Update**: For each release

## Common Workflow Patterns

### Adding a New Tool

1. **Gather metadata**:
   - Tool name, version, description
   - Category, capabilities, dependencies
   - Repository, package name, status

2. **Update registry**:
   ```bash
   # Edit marketplace-registry.json
   # Add entry to registry.tools array
   # Update stats.totalTools and stats.byCategory
   ```

3. **Update documentation**:
   - Add to TOOLS_CATALOG.md category section
   - Update statistics
   - Add tags and keywords

4. **Version and release**:
   - Increment VERSION.json
   - Add changelog entry
   - Create commit with clear message

### Releasing a New Version

1. **Prepare release**:
   ```bash
   # Update VERSION.json version field
   # Update release date
   # Review all changes
   ```

2. **Create release notes**:
   - File: `docs/releases/RELEASE_v1.x.x.md`
   - Include: Changes, additions, deprecations
   - Format: Follow existing release note structure

3. **Update CHANGELOG**:
   - Add new version section
   - List all changes by category
   - Include commit references

4. **Commit and tag**:
   ```bash
   git tag v1.x.x
   git push origin main --tags
   ```

### Fixing Documentation Issues

1. **Identify issue**: Broken links, outdated info, unclear sections
2. **Update file**: Edit markdown in appropriate `docs/` subdirectory
3. **Check references**: Ensure related docs still link correctly
4. **Test links**: Verify all cross-references work
5. **Commit**: Document the fix in commit message

## Integration with Agent Workflows

### For PR Review Agents

**Checks to perform**:
- [ ] `marketplace-registry.json` is valid JSON
- [ ] VERSION.json updated if tools changed
- [ ] CHANGELOG.md has new entry
- [ ] Documentation files have version headers
- [ ] Cross-reference links still work
- [ ] Stats in VERSION.json match actual tools
- [ ] No duplicate tool IDs in registry

**Commands**:
```bash
./validate-tools.sh
jq '.' docs/configuration/marketplace-registry.json
git diff CHANGELOG.md VERSION.json
```

### For Documentation Agents

**Tasks**:
- Maintain documentation consistency
- Update guides with new tools
- Fix broken links and references
- Ensure version headers present
- Keep CHANGELOG up-to-date

**Files to check**:
- All markdown files in `docs/`
- VERSION.json metadata
- Cross-reference validity

### For Release Agents

**Tasks**:
- Bump version numbers
- Create release notes
- Update CHANGELOG
- Tag releases
- Create release announcements

**Key files**:
- `docs/configuration/VERSION.json`
- `CHANGELOG.md`
- `docs/releases/RELEASE_v1.x.x.md`

## Quality Standards

### Documentation Quality

- ✅ Clear, concise writing
- ✅ Proper markdown formatting
- ✅ Version control headers present
- ✅ Accurate links and references
- ✅ Examples provided where helpful
- ✅ Audience-appropriate content

### Registry Quality

- ✅ Valid JSON structure
- ✅ All required fields present
- ✅ Accurate metadata
- ✅ Consistent naming (kebab-case IDs)
- ✅ Matching statistics
- ✅ Accurate capability descriptions

### Version Quality

- ✅ Semantic versioning (MAJOR.MINOR.PATCH)
- ✅ VERSION.json synchronized
- ✅ CHANGELOG.md updated
- ✅ Release notes created
- ✅ Git tags applied

## Tools Available in Repository

### Categories (16 Total)
1. Development (3)
2. Infrastructure (3)
3. Frontend (2)
4. Backend (2)
5. Analytics (2)
6. Data Processing (2)
7. Graphics & Visualization (2)
8. Content Creation (3)
9. Communication (1)
10. Media (1)
11. DevOps (1)
12. Security (1)
13. Testing (1)
14. Documentation (1)
15. Research (1)
16. Automation (1)

### Key Files by Use Case

**For tool developers**:
- `docs/reference/TOOLS_CATALOG.md` — Browse all tools
- `docs/reference/ADD_TOOL_TEMPLATE.md` — Add new tool
- `docs/configuration/marketplace-registry.json` — Tool metadata

**For integration engineers**:
- `docs/getting-started/README.md` — Quick start
- `docs/guides/TOOLS_SUPPLEMENT.md` — Integration guide
- `docs/reference/MARKETPLACE.md` — Specifications

**For repository maintainers**:
- `CLAUDE.md` — Repository configuration
- `CHANGELOG.md` — Version history
- `docs/configuration/VERSION.json` — Version metadata

## Automation & Scripts

### Validation Script
**File**: `validate-tools.sh`
**Purpose**: Validate marketplace registry integrity
**Usage**: `./validate-tools.sh`
**Checks**:
- JSON syntax
- Tool metadata completeness
- Version consistency
- File integrity

### Manual Validation
```bash
# Validate JSON
jq '.' docs/configuration/marketplace-registry.json

# Count tools
jq '.registry.tools | length' docs/configuration/marketplace-registry.json

# List categories
jq '.stats.byCategory' docs/configuration/marketplace-registry.json

# Find tool by ID
jq '.registry.tools[] | select(.id=="tool-id")' docs/configuration/marketplace-registry.json
```

## Best Practices

### Documentation
- Use consistent formatting and structure
- Include version control headers in new files
- Keep cross-references accurate
- Provide practical examples
- Write for the target audience

### Registry Management
- Validate JSON before committing
- Use consistent naming conventions
- Include all required metadata fields
- Update statistics when adding tools
- Keep descriptions concise and clear

### Version Control
- Use semantic versioning
- Document all changes in CHANGELOG
- Create releases with clear notes
- Tag important milestones
- Keep VERSION.json synchronized

### Collaboration
- Use clear commit messages
- Include context in PRs
- Reference related issues
- Request appropriate reviewers
- Address feedback promptly

## Troubleshooting Guide

### JSON Validation Fails
```bash
# Check syntax
jq '.' docs/configuration/marketplace-registry.json

# Find error location and fix
# Common issues: missing commas, trailing commas, quotes
```

### Stats Don't Match
```bash
# Count actual tools
jq '.registry.tools | length' docs/configuration/marketplace-registry.json

# Update stats in VERSION.json to match
```

### Links Broken After Reorganization
```bash
# Find broken links in docs
grep -r "README.md\|TOOLS_CATALOG.md" docs/

# Update paths to point to new locations
# Format: ../reference/TOOLS_CATALOG.md (from docs/guides/)
```

### Version Mismatch
```bash
# Check VERSION.json version field
# Check CHANGELOG.md entries
# Check git tags
# Ensure all three are synchronized
```

## Related Resources

- **CLAUDE.md** — Repository configuration for Claude Code
- **CHANGELOG.md** — Version history and changes
- **README.md** — Repository overview
- **LICENSE** — Apache-2.0 license terms

## Support & Contact

- 📧 **Email**: license@vln.gg
- 🐛 **Issues**: GitHub issues page
- 📖 **Documentation**: See `docs/` subdirectories
- 💼 **Commercial**: Contact for commercial licensing

---

**Last Updated**: 2026-09-30  
**Version**: 1.0.1  
**Repository**: Fused-Gaming/tools
