# Fused Gaming Tools Repository

Central repository for all utilities, tools, and support libraries in the Fused Gaming ecosystem.

## Overview

This repository contains 28 specialized tools and utilities that power the Fused Gaming skills ecosystem. These tools are designed to be modular, reusable, and production-ready.

## Tools by Category

### Development (3 tools)
- **Type Generator** - Generate TypeScript types from JSON schemas and APIs
- **Code Formatter** - Multi-language code formatting and style consistency
- **API Generator** - Generate REST and GraphQL APIs from specifications

### Infrastructure (3 tools)
- **Project State Cache** - Intelligent caching for project state management
- **Error Handler** - Comprehensive error handling and reporting
- **Cache Manager** - Advanced caching strategies and invalidation

### Frontend (2 tools)
- **Component Generator** - Generate components for React/Vue/Angular
- **Theme Engine** - Dynamic theme generation and management

### Content (3 tools)
- **Markdown Parser** - Extended Markdown with custom syntax support
- **Character Builder** - Build and manage character profiles
- **Narrative Engine** - Generate and manage narrative structures

### Graphics (2 tools)
- **Flow Field Generator** - Generate vector flow fields for particle systems
- **SVG Rendering Engine** - High-performance SVG generation

### Backend (2 tools)
- **Database Tools** - Database schema generation and migration utilities
- **API Generator** - REST and GraphQL API scaffolding

### Analytics (2 tools)
- **Session Aggregator** - Aggregate and analyze multi-account sessions
- **Analytics Engine** - Track, analyze, and report metrics

### Data (2 tools)
- **Validation Engine** - Comprehensive data validation with custom rules
- **Data Transformer** - Transform data between formats and schemas

### Other Categories (1 tool each)
- **Email Tools** - Email sending and templating
- **Asset Optimizer** - Media optimization for web
- **Deployment Validator** - Pre-deployment validation
- **Research Aggregator** - Research collection and synthesis
- **Test Generator** - Automated test generation
- **Documentation Generator** - API docs and guide generation
- **Authentication Manager** - Multi-strategy auth utilities
- **Workflow Engine** - Automated workflow orchestration

## Marketplace Registry

Complete tool metadata available in `marketplace-registry.json`:
- Tool names, versions, and descriptions
- Capabilities and dependencies
- Package information
- Repository locations
- Categorization and tags

### Quick Access

```json
// All tools
marketplace-registry.json

// Query by category
registry.tools.filter(t => t.category === "development")

// Search by capability
registry.tools.filter(t => t.capabilities.includes("code-generation"))
```

## Installation

Most tools are available as npm packages under the `@h4shed/` scope:

```bash
npm install @h4shed/type-generator
npm install @h4shed/component-generator
npm install @h4shed/theme-engine
```

## Usage Examples

### Type Generator
```typescript
import { TypeGenerator } from '@h4shed/type-generator';

const generator = new TypeGenerator();
const types = await generator.fromSchema(jsonSchema);
```

### Component Generator
```typescript
import { ComponentGenerator } from '@h4shed/component-generator';

const gen = new ComponentGenerator();
const component = await gen.generate({
  name: 'Button',
  framework: 'react',
  props: { ... }
});
```

### Theme Engine
```typescript
import { ThemeEngine } from '@h4shed/theme-engine';

const engine = new ThemeEngine();
const theme = engine.generate({
  primary: '#0066ff',
  secondary: '#00cc66'
});
```

## Statistics

- **Total Tools**: 28
- **Active Status**: 100%
- **Categories**: 16
- **NPM Scope**: @h4shed/
- **License**: Non-Commercial (Free for education/individual use)

## License

**Fused Gaming Tools - Non-Commercial License v1.0**

- ✅ **Free for**: Individual use, education, research, academic institutions
- ❌ **Not free for**: Commercial use, revenue-generating services, business applications

### License Terms

This software is **free** for:
- Personal projects and experiments
- Educational purposes and learning
- Academic and research institutions
- Student projects and assignments
- Non-profit activities

**Commercial use requires a separate commercial license.** Contact playxrewards@gmail.com for commercial licensing.

See [LICENSE](./LICENSE) file for complete terms.

## Related Repositories

- **Skills Marketplace**: https://github.com/Fused-Gaming/skills
- **Main MCP Repository**: https://github.com/Fused-Gaming/Fused-Gaming-Skill-MCP
- **Agents**: https://github.com/Fused-Gaming/agents

## Contributing

Contributions are welcome! Please ensure:
- Code follows the project's style guidelines
- Changes are well-documented
- Modifications retain license terms
- Community contributions are encouraged

## Support

For issues, questions, or tool requests:
- Open an issue on GitHub
- Email: playxrewards@gmail.com
- Check the marketplace registry for tool documentation

## Roadmap

Planned tool categories and enhancements:
- Machine Learning tools
- Advanced security utilities
- Performance profiling tools
- Real-time collaboration utilities
- Blockchain integration tools
