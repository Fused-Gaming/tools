# Fused Gaming Tools

Central repository for 28 specialized tools and utilities in the Fused Gaming ecosystem.

**Version: 1.0.1** | **Status: Stable** | **License: Apache-2.0 (Non-Commercial)**

## Quick Links

📖 **[Getting Started](./docs/getting-started/README.md)** — Quick overview and installation

🛠️ **[Tools Catalog](./docs/reference/TOOLS_CATALOG.md)** — Complete inventory of all 28 tools

📚 **[Marketplace](./docs/reference/MARKETPLACE.md)** — Registry specifications and schema

⚙️ **[Setup Guide](./docs/configuration/ENVIRONMENT.md)** — Configuration and environment setup

📝 **[Release Notes](./docs/releases/)** — Version history and changes

## What's Inside

A production-ready marketplace containing:
- **28 specialized tools** across 16 categories
- **Complete metadata registry** for easy discovery
- **NPM packages** under `@h4shed/` scope
- **Comprehensive documentation** organized by category

## Key Categories

- **Development** (3) — TypeScript, code formatting, API generation
- **Infrastructure** (3) — Caching, error handling, state management
- **Frontend** (2) — Component and theme generation
- **Backend** (2) — Database and API tools
- **Analytics** (2) — Metrics tracking and aggregation
- **Data Processing** (2) — Validation and transformation
- **Plus 8 more specialized categories**

## Documentation Structure

```
docs/
├── getting-started/    📖 Quick start and overview
├── guides/             🛠️  Integration guides
├── reference/          📚 Full documentation
├── configuration/      ⚙️ Version and setup
└── releases/           📝 Release history
```

## Installation

```bash
# Install a specific tool
npm install @h4shed/type-generator

# Browse marketplace-registry.json for all tools
npm install @h4shed/component-generator
```

## Quick Start

```typescript
import { TypeGenerator } from '@h4shed/type-generator';

const generator = new TypeGenerator();
const types = await generator.fromSchema(jsonSchema);
```

## Stats

- **Total Tools**: 28 (100% active)
- **Categories**: 16
- **NPM Scope**: @h4shed/
- **Capabilities**: 50+
- **License**: Non-Commercial (free for education/personal use)

## Related Repos

- **[Skills](https://github.com/Fused-Gaming/skills)** — Skills marketplace
- **[Agents](https://github.com/Fused-Gaming/agents)** — Agents framework
- **[MCP](https://github.com/Fused-Gaming/Fused-Gaming-Skill-MCP)** — Main MCP repository

## Support

- 📧 **Email**: license@vln.gg
- 🐛 **Issues**: https://github.com/Fused-Gaming/tools/issues
- 📖 **Full Docs**: See documentation folders above

## License

**Fused Gaming Tools - Non-Commercial License v1.0**

✅ **Free for**: Individual use, education, research, academic institutions

❌ **Not free for**: Commercial use, revenue-generating services

See [LICENSE](./LICENSE) for terms. **Commercial licensing available** at license@vln.gg

---

**[Full Documentation →](./docs/getting-started/README.md)**
