# Claude.md - Tools Repository Configuration

This file configures Claude Code behavior and preferences for working with the Fused Gaming Tools repository.

## Repository Overview

- **Name**: Fused Gaming Tools
- **Version**: 1.0.1
- **Type**: Tools/Utilities Marketplace
- **License**: Apache-2.0 (Non-Commercial)
- **Contents**: 28 production-ready tools across 16 categories

## Key Directories

```
tools/
├── docs/                     # Main documentation directory
│   ├── getting-started/      # Quick start and overview
│   ├── guides/               # Integration guides
│   ├── reference/            # Complete reference docs
│   ├── configuration/        # Setup and version info
│   └── releases/             # Release notes
├── .github/                  # GitHub configuration
├── LICENSE                   # Apache-2.0 license
├── README.md                 # Root entry point
├── CHANGELOG.md              # Version history
└── validate-tools.sh         # Validation script
```

## Common Tasks

### Exploring the Repository

1. **Start here**: Read `docs/getting-started/README.md`
2. **Browse tools**: Check `docs/reference/TOOLS_CATALOG.md`
3. **Add a tool**: Follow `docs/reference/ADD_TOOL_TEMPLATE.md`
4. **Marketplace schema**: Review `docs/reference/MARKETPLACE.md`

### Making Changes

1. **Documentation**: Edit files in `docs/` subdirectories
2. **Marketplace registry**: Update `docs/configuration/marketplace-registry.json`
3. **Version info**: Update `docs/configuration/VERSION.json`
4. **Release notes**: Create new file in `docs/releases/`

### Validation

```bash
# Validate marketplace registry
./validate-tools.sh

# Check JSON validity
jq '.' docs/configuration/marketplace-registry.json
```

## Development Workflow

### Branch Conventions
- Feature branches: `feature/description`
- Documentation: `docs/description`
- Fixes: `fix/description`
- Main branch: `main` (stable releases only)

### Commit Message Style

```
[Type] Brief description

- Bullet point 1
- Bullet point 2

Related: #123 (if applicable)
```

Types: `feat:`, `docs:`, `fix:`, `refactor:`, `test:`

### Pull Request Process

1. Create feature/documentation branch
2. Make changes with clear commit messages
3. Update CHANGELOG.md with version bump
4. Test locally: run `./validate-tools.sh`
5. Create PR with clear description
6. Request review from maintainers
7. Address feedback and merge when approved

## Code Style & Standards

### Documentation

- **Format**: Markdown
- **Version Headers**: HTML comments at file top with version/date
- **Links**: Relative paths within `docs/`
- **Code Blocks**: Include language identifier
- **Examples**: Practical, tested examples

### JSON Files

- **Format**: Valid JSON (test with `jq '.'`)
- **Indent**: 2 spaces
- **Keys**: camelCase for properties
- **Required**: All required fields per schema

### Bash Scripts

- **Shebang**: `#!/bin/bash`
- **Error Handling**: Check command success
- **Comments**: Explain non-obvious logic
- **Quotes**: Quote all variables

## Working with Agents

### For PR Steward / Babysit Agents

This repository tracks documentation changes and tool registry updates. Agents should:

1. **Validate Changes**: Run `./validate-tools.sh` before merging
2. **Check Registry**: Ensure `marketplace-registry.json` is valid JSON
3. **Update Version**: Increment VERSION.json version field
4. **Update CHANGELOG**: Add entry to `CHANGELOG.md` for all changes
5. **Cross-Check**: Verify all documentation cross-references work

### For Research/Exploration Agents

Key files to review:
- `docs/reference/TOOLS_CATALOG.md` — Complete tool inventory
- `docs/reference/MARKETPLACE.md` — Registry schema and specs
- `docs/configuration/marketplace-registry.json` — Actual tool data
- `CHANGELOG.md` — Version history

## Repository Statistics

- **Tools**: 28 (100% active)
- **Categories**: 16
- **Documentation Files**: 13
- **Configuration Files**: 5
- **Total Tracked Files**: 21

## Integration with Other Repos

### Skills Repository
- Dependencies defined in VERSION.json
- Cross-links in documentation
- Coordinated versioning

### Agents Repository
- Documentation structure mirrors this repo
- Shared patterns for organization
- Version tracking aligned

### MCP Repository
- Tools sourced from Fused-Gaming-Skill-MCP
- Registry metadata matches MCP definitions
- Tool availability coordinated

## Important Guidelines

### ✅ DO
- Validate changes locally before pushing
- Update documentation with code changes
- Include version control headers in new docs
- Test JSON files with `jq`
- Update CHANGELOG.md for all changes
- Cross-reference related documentation
- Use clear, descriptive commit messages

### ❌ DON'T
- Push to `main` directly (use PR workflow)
- Skip validation of marketplace-registry.json
- Add tools without following ADD_TOOL_TEMPLATE.md
- Modify LICENSE terms without approval
- Remove documentation without clear reason
- Commit unvalidated JSON files
- Force-push to shared branches

## Troubleshooting

### JSON Validation Error
```bash
jq '.' docs/configuration/marketplace-registry.json
# Fix syntax errors, rerun
```

### Git Push Fails
```bash
git fetch origin
git pull origin main
git push -u origin <branch-name>
```

### Tools Not Found
Check:
1. Is tool in `marketplace-registry.json`?
2. Is JSON structure valid?
3. Does tool have required fields?
4. Is NPM package name correct?

## Getting Help

- 📖 **Documentation**: See `docs/` subdirectories
- 📧 **Email**: license@vln.gg
- 🐛 **Issues**: GitHub issues page
- 💬 **Discussion**: GitHub discussions (if enabled)

## File Change Log

This repository was restructured in v1.0.1:
- Documentation moved to `docs/` directory (2026-09-30)
- Version control headers added to all docs
- CHANGELOG.md created for version tracking
- MANIFEST.json added for file tracking

For complete history, see [CHANGELOG.md](./CHANGELOG.md)

## Related Documentation

- **Setup**: See `docs/configuration/ENVIRONMENT.md`
- **File Structure**: See `docs/configuration/MANIFEST.json`
- **Tools Guide**: See `docs/getting-started/README.md`
- **Marketplace Specs**: See `docs/reference/MARKETPLACE.md`

---

**Last Updated**: 2026-09-30  
**Version**: 1.0.1  
**Repository**: Fused-Gaming/tools
