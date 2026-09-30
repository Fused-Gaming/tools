<!-- Version Control
- Version: 1.0.1
- Last Updated: 2026-09-30
- Status: active
- Repository: Fused-Gaming/tools
-->

# Environment Setup & Configuration

Setup instructions and configuration guide for the Fused Gaming Tools repository.

## Quick Setup

### Prerequisites
- Node.js 16.x or higher
- npm 7.x or higher
- Git

### Installation

```bash
# Clone the repository
git clone https://github.com/Fused-Gaming/tools.git
cd tools

# Install dependencies
npm install

# Verify installation
npm run validate
```

## Configuration

### Environment Variables

No environment variables are required for basic usage. Tools can be imported and used directly:

```javascript
import { TypeGenerator } from '@h4shed/type-generator';
```

### NPM Scope Setup

Tools are published under the `@h4shed/` scope. Ensure your `.npmrc` is configured:

```bash
@h4shed:registry=https://registry.npmjs.org/
```

## Directory Structure

After reorganization (v1.0.1), the repository follows this structure:

```
tools/
├── docs/                           # Documentation directory
│   ├── getting-started/            # Quick start and overview
│   │   └── README.md              # Main entry point
│   ├── guides/                     # Integration guides
│   │   └── TOOLS_SUPPLEMENT.md    # Supplementary information
│   ├── reference/                  # Reference documentation
│   │   ├── TOOLS_CATALOG.md       # Complete tool inventory
│   │   ├── ADD_TOOL_TEMPLATE.md   # Tool addition guide
│   │   └── MARKETPLACE.md          # Marketplace specifications
│   ├── configuration/              # Configuration & metadata
│   │   ├── VERSION.json           # Version information
│   │   ├── ENVIRONMENT.md         # This file
│   │   ├── MANIFEST.json          # File manifest
│   │   ├── marketplace-registry.json  # Tool registry
│   │   └── package-lock.json      # Dependency lock file
│   └── releases/                   # Release notes
│       └── RELEASE_v1.0.0.md      # v1.0.0 release notes
├── README.md                       # Root README (entry point)
├── LICENSE                         # Apache-2.0 license
├── CHANGELOG.md                    # Version history
├── package-lock.json              # Dependencies (root copy)
└── validate-tools.sh              # Validation script
```

## Managing Tools

### Discovering Tools

Browse the marketplace:

1. **Quick Browse**: See [Tools Catalog](../reference/TOOLS_CATALOG.md)
2. **Search Registry**: Check `marketplace-registry.json`
3. **Query by Category**: Filter tools by category

### Installing a Tool

```bash
npm install @h4shed/tool-name
```

### Adding a New Tool

Follow the guide in [Add Tool Template](../reference/ADD_TOOL_TEMPLATE.md)

## Validation & Testing

### Running Validation

```bash
./validate-tools.sh
```

This script validates:
- JSON syntax in marketplace-registry.json
- Tool metadata completeness
- Version consistency
- File integrity

### Manual Verification

```bash
# Check JSON validity
jq '.' marketplace-registry.json

# Verify registry structure
jq '.stats' marketplace-registry.json

# Count total tools
jq '.registry.tools | length' marketplace-registry.json
```

## Package Management

### Scripts

Available npm scripts:

```bash
npm run validate        # Validate marketplace registry
npm test               # Run tests (if available)
```

### Dependencies

The repository has minimal runtime dependencies. Most dependencies are dev-time only for:
- Validation and testing
- Documentation generation
- Build tools

## Troubleshooting

### Issue: Cannot find module @h4shed/[tool-name]
**Solution**: Ensure tool is installed with `npm install @h4shed/[tool-name]`

### Issue: Registry JSON is invalid
**Solution**: Run `jq '.' marketplace-registry.json` to identify syntax errors

### Issue: Version mismatch
**Solution**: Check VERSION.json in docs/configuration/ and ensure it matches package.json

## Related Repositories

- **Skills**: https://github.com/Fused-Gaming/skills
- **Agents**: https://github.com/Fused-Gaming/agents
- **MCP**: https://github.com/Fused-Gaming/Fused-Gaming-Skill-MCP

## Documentation Index

- 📖 [Getting Started](../getting-started/README.md)
- 🛠️ [Guides](../guides/)
- 📚 [Reference Docs](../reference/)
- ⚙️ [Configuration](.)
- 📝 [Release Notes](../releases/)

## Support

- 📧 Email: license@vln.gg
- 🐛 Issues: https://github.com/Fused-Gaming/tools/issues
- 📰 License: Apache-2.0 (Non-Commercial for businesses)

## License

**Fused Gaming Tools - Non-Commercial License v1.0**

✅ **Free for**: Individual use, education, research, academic institutions
❌ **Not free for**: Commercial use, revenue-generating services

For commercial licensing, contact: license@vln.gg
