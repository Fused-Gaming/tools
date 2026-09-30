# Fused Gaming Tools Marketplace

A centralized catalog and registry for all tools and utilities available in the Fused Gaming ecosystem.

## Overview

The Tools Marketplace provides a comprehensive, searchable catalog of 28 production-ready utilities and libraries. This enables developers to:

- **Discover**: Find tools by function, category, or capability
- **Integrate**: Access complete metadata for tool integration
- **Manage**: Track versions and dependencies
- **Extend**: Build upon existing tools

## Registry Structure

### Main Registry File: `marketplace-registry.json`

```json
{
  "registry": {
    "version": "1.0.0",
    "name": "Fused Gaming Tools Marketplace",
    "description": "Central catalog of all available tools",
    "lastUpdated": "ISO-8601 timestamp",
    "totalTools": 28,
    "tools": [
      {
        "id": "unique-tool-id",
        "name": "Tool Display Name",
        "version": "1.0.0",
        "description": "What the tool does",
        "category": "development",
        "package": "@h4shed/tool-name",
        "status": "active",
        "author": "Fused Gaming",
        "license": "Apache-2.0",
        "capabilities": ["capability-1", "capability-2"],
        "dependencies": ["optional-dependency"],
        "repository": {
          "owner": "Fused-Gaming",
          "repo": "Fused-Gaming-Skill-MCP"
        },
        "tags": ["tag1", "tag2"]
      }
    ]
  },
  "categories": [
    "development",
    "frontend",
    "backend",
    ...
  ],
  "stats": {
    "totalTools": 28,
    "byCategory": { ... }
  }
}
```

## Tool Schema Reference

### Required Fields

- **id**: Unique identifier (kebab-case)
- **name**: Display name
- **version**: Semantic version (MAJOR.MINOR.PATCH)
- **description**: Brief purpose (1-2 sentences)
- **category**: Classification category
- **package**: NPM package name
- **status**: One of: active, beta, deprecated

### Optional Fields

- **capabilities**: Array of features/capabilities
- **dependencies**: Array of required/optional packages
- **author**: Maintainer name
- **license**: Open source license
- **tags**: Searchable keywords
- **documentation**: Links to docs
- **examples**: Example code snippets

## Categories

Tools are organized into 16 categories:

### Core Development
- **development**: Code generation, type systems, formatters
- **backend**: API generation, database utilities, server tools
- **frontend**: Component generation, themes, styling

### Infrastructure & Operations
- **infrastructure**: Caching, state management, error handling
- **devops**: Deployment validation, monitoring
- **automation**: Workflow engines, orchestration

### Data & Analytics
- **data**: Validation, transformation, processing
- **analytics**: Metrics, tracking, reporting, aggregation

### Content & Creative
- **content**: Markdown, narrative, character building
- **graphics**: Visualization, SVG, rendering

### Specialized
- **communication**: Email, messaging utilities
- **media**: Asset optimization, compression
- **security**: Authentication, authorization
- **research**: Data aggregation, synthesis
- **documentation**: Doc generation, guides
- **testing**: Test generation, quality assurance

## Adding Tools to the Marketplace

### 1. Identify the Tool
Locate the tool in the Fused Gaming organization (typically in Fused-Gaming-Skill-MCP/packages/tools/)

### 2. Extract Metadata

Required information:
- Tool name and ID (kebab-case)
- Current version number
- One-line description
- Primary category
- NPM package name (@h4shed/*)
- Status (active/beta/deprecated)

### 3. Add to Registry

Add entry to `marketplace-registry.json`:

```json
{
  "id": "my-tool",
  "name": "My Tool",
  "version": "1.0.0",
  "description": "What my tool does",
  "category": "development",
  "package": "@h4shed/my-tool",
  "status": "active",
  "author": "Fused Gaming",
  "license": "Apache-2.0",
  "capabilities": ["feature-1", "feature-2"],
  "dependencies": [],
  "repository": {
    "owner": "Fused-Gaming",
    "repo": "Fused-Gaming-Skill-MCP"
  },
  "tags": ["relevant", "tags"]
}
```

### 4. Update Statistics

Update the `stats` section with new totals.

### 5. Update Category Index

Update `categories` array if adding a new category.

## Querying the Marketplace

### By Category

```javascript
const devTools = registry.tools.filter(t => t.category === "development");
```

### By Capability

```javascript
const codeGenTools = registry.tools.filter(
  t => t.capabilities.includes("code-generation")
);
```

### By Status

```javascript
const activeTools = registry.tools.filter(t => t.status === "active");
```

### By Package Name

```javascript
const h4shedTools = registry.tools.filter(
  t => t.package.startsWith("@h4shed/")
);
```

### By Tag

```javascript
const frontendTools = registry.tools.filter(
  t => t.tags.includes("frontend")
);
```

## Tool Status Definitions

- **active**: Actively maintained, production-ready
- **beta**: Under active development, stable but may change
- **deprecated**: No longer recommended, marked for removal

## Capability Index

### Code Generation (5 tools)
Generate code, types, components, tests, or documentation

**Tools**: Type Generator, Component Generator, API Generator, Test Generator, Documentation Generator

### Caching & Performance (3 tools)
Optimize performance through caching and state management

**Tools**: Project State Cache, Cache Manager, Asset Optimizer

### Data Handling (2 tools)
Validate, transform, and process data

**Tools**: Validation Engine, Data Transformer

### Workflow & Orchestration (2 tools)
Define and execute automated processes

**Tools**: Workflow Engine, Deployment Validator

### Design & Styling (2 tools)
Create consistent visual design and themes

**Tools**: Theme Engine, SVG Rendering Engine

### Content Creation (3 tools)
Generate and manage narrative and creative content

**Tools**: Markdown Parser, Character Builder, Narrative Engine

## Common Use Patterns

### Full Stack Development
```
Frontend: Component Generator, Theme Engine, Code Formatter
Backend: API Generator, Database Tools, Authentication Manager
Infrastructure: Cache Manager, Error Handler, Analytics Engine
```

### Content Creation Workflow
```
Planning: Research Aggregator
Writing: Markdown Parser, Narrative Engine
Editing: Documentation Generator
Publishing: Asset Optimizer
```

### Data Pipeline
```
Input: Data Transformer
Validation: Validation Engine
Processing: Workflow Engine
Output: Documentation Generator
```

## Maintenance

The marketplace should be updated when:

- New tools are created or discovered
- Tools release new versions
- Tools change status (active → deprecated)
- Capabilities are added or modified
- Dependencies are updated
- Metadata requires corrections

### Update Checklist

- [ ] Tool metadata is accurate
- [ ] Version number is current
- [ ] Capabilities are complete
- [ ] Dependencies are listed
- [ ] Category is appropriate
- [ ] Tags are relevant
- [ ] License is correct
- [ ] Repository information is valid

## Integration Best Practices

### 1. Discovery Phase
Browse marketplace-registry.json or TOOLS_CATALOG.md to find needed tools

### 2. Evaluation Phase
Review tool documentation and examples

### 3. Installation Phase
```bash
npm install @h4shed/[tool-name]
```

### 4. Integration Phase
- Import tool in your project
- Review examples and API documentation
- Integrate with existing code

### 5. Maintenance Phase
- Keep tools updated regularly
- Monitor for deprecations
- Subscribe to security advisories

## Tool Dependencies

Most tools are designed to work independently. When tools have dependencies:

- **Direct dependencies**: Listed in tool entry
- **Peer dependencies**: May be in package.json
- **Optional dependencies**: Listed separately

## License

All tools are released under **Apache-2.0** with **Non-Commercial restrictions**:

- ✅ Free for individual and educational use
- ✅ Free for academic institutions
- ✅ Free for research and learning
- ❌ Commercial use requires separate license

See LICENSE file for complete terms.

## Related Documentation

- See `TOOLS_CATALOG.md` for organized directory
- See `README.md` for getting started guide
- See individual tool repositories for detailed docs

## Support & Contributions

### Getting Help
- Check tool documentation
- Review examples in registry
- Open GitHub issues
- Email: playxrewards@gmail.com

### Contributing
- Suggest new tools
- Report issues
- Submit improvements
- Share feedback

## Roadmap

Planned additions:

- Machine Learning utilities
- Advanced security tools
- Real-time collaboration utilities
- Blockchain integration tools
- Performance profiling tools
- Advanced testing frameworks
