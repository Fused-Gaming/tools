# Changelog

All notable changes to the Fused Gaming Tools repository are documented here.

## [1.0.1] - 2026-09-30

### Changed
- **Documentation Reorganization**: Restructured all documentation into organized `docs/` directory structure
  - `docs/getting-started/` — Entry point and quick start guide
  - `docs/guides/` — Integration and usage guides
  - `docs/reference/` — Complete reference documentation
  - `docs/configuration/` — Configuration, version, and manifest files
  - `docs/releases/` — Release notes and version history

### Added
- Version control headers to all documentation files
- `docs/configuration/ENVIRONMENT.md` — Setup and configuration guide
- `docs/configuration/MANIFEST.json` — File manifest and tracking
- `CHANGELOG.md` — This file, tracking all version changes
- Enhanced root `README.md` with quick links to documentation

### Improved
- Documentation discoverability through clear categorization
- Version tracking with enhanced metadata in VERSION.json
- File integrity tracking through MANIFEST.json
- Configuration documentation in dedicated folder

### Files Moved (with version headers)
- `README.md` → `docs/getting-started/README.md` (restructured)
- `TOOLS_CATALOG.md` → `docs/reference/TOOLS_CATALOG.md`
- `ADD_TOOL_TEMPLATE.md` → `docs/reference/ADD_TOOL_TEMPLATE.md`
- `MARKETPLACE.md` → `docs/reference/MARKETPLACE.md`
- `TOOLS_SUPPLEMENT.md` → `docs/guides/TOOLS_SUPPLEMENT.md`
- `RELEASE_v1.0.0.md` → `docs/releases/RELEASE_v1.0.0.md`
- `VERSION.json` → `docs/configuration/VERSION.json` (updated to 1.0.1)
- `marketplace-registry.json` → `docs/configuration/marketplace-registry.json`

### Technical
- Updated VERSION.json with v1.0.1 metadata
- Added file structure tracking in VERSION.json
- Implemented version control headers in HTML comment format
- Enhanced integrity checking metadata

## [1.0.0] - 2026-09-30

### Initial Release
- **28 Production-Ready Tools** across 16 categories
- **Complete Marketplace Registry** with tool metadata
- **Tools Catalog** with inventory and search capabilities
- **Marketplace Documentation** with schema and specifications
- **Tool Addition Template** for contributing new tools
- **Release Notes** documenting initial release

### Includes
- Type Generator
- Code Formatter
- API Generator
- Component Generator
- Theme Engine
- Markdown Parser
- Character Builder
- Narrative Engine
- Flow Field Generator
- SVG Rendering Engine
- Project State Cache
- Cache Manager
- Error Handler
- Database Tools
- Validation Engine
- Data Transformer
- Session Aggregator
- Analytics Engine
- Email Tools
- Asset Optimizer
- Deployment Validator
- Research Aggregator
- Test Generator
- Documentation Generator
- Authentication Manager
- Workflow Engine
- Plus 2 additional specialized tools

### Stats
- **Total Tools**: 28
- **Active Tools**: 28 (100%)
- **Categories**: 16
- **NPM Scope**: @h4shed/
- **License**: Apache-2.0 (Non-Commercial)

---

## Version History

### Branch Information
- **v1.0.1**: `claude/peaceful-archimedes-48jlj4`
- **v1.0.0**: `main`

### File Structure Evolution

#### v1.0.0 (Flat Structure)
```
tools/
├── README.md
├── TOOLS_CATALOG.md
├── ADD_TOOL_TEMPLATE.md
├── MARKETPLACE.md
├── TOOLS_SUPPLEMENT.md
├── RELEASE_v1.0.0.md
├── VERSION.json
├── marketplace-registry.json
├── LICENSE
└── validate-tools.sh
```

#### v1.0.1 (Organized Structure)
```
tools/
├── docs/
│   ├── getting-started/README.md
│   ├── guides/TOOLS_SUPPLEMENT.md
│   ├── reference/{catalog,template,marketplace}
│   ├── configuration/{version,manifest,environment}
│   └── releases/RELEASE_v1.0.0.md
├── README.md (restructured)
├── CHANGELOG.md (new)
├── LICENSE
└── validate-tools.sh
```

## Integration Notes

### For Agents Repository
- Tools v1.0.1 maintains compatibility with Agents v1.0.0
- Documentation structure mirrors Agents organization
- Cross-repository links updated

### For Skills Repository
- Tools v1.0.1 maintains compatibility with Skills v1.0.0
- Coordinated documentation structure
- Version tracking aligned

## Upgrade Notes

### From 1.0.0 to 1.0.1

#### No Breaking Changes
- All tools function identically
- NPM packages unchanged
- marketplace-registry.json unchanged (same tools)

#### Documentation Changes
- Root-level markdown files moved to `docs/` subdirectories
- New centralized root README.md with navigation links
- Version headers added to all documentation

#### Migration Path
- Old file locations still accessible in git history
- Direct links updated in cross-repository references
- Documentation index in README.md for quick navigation

## Future Plans

### Planned Enhancements
- Additional tool categories as ecosystem grows
- Enhanced version control and integrity checking
- Automated documentation generation
- Tool capability versioning
- Dependency tracking improvements

### Related Versions
- **Agents Repository**: v1.0.0 (compatible)
- **Skills Repository**: v1.0.0 (compatible)
- **MCP Repository**: Latest (compatible)

---

## Support

For questions about version history or migration:
- 📧 Email: license@vln.gg
- 🐛 Issues: https://github.com/Fused-Gaming/tools/issues
- 📖 Docs: See [documentation structure](./docs/)

## License

Fused Gaming Tools - Non-Commercial License v1.0

See [LICENSE](./LICENSE) file for complete terms.
