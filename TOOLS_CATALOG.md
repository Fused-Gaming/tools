# Fused Gaming Tools Catalog

Complete inventory of all 28 specialized tools and utilities available in the Fused Gaming ecosystem.

## Quick Summary

- **Total Tools**: 28
- **Active Status**: 100%
- **Source Repository**: Fused-Gaming/Fused-Gaming-Skill-MCP
- **Last Updated**: 2026-09-30

## Tools by Category

### Development (3 tools)
- **Type Generator** - Generate TypeScript types from JSON schemas and APIs
- **Code Formatter** - Multi-language code formatting and style consistency
- **API Generator** - Generate REST and GraphQL APIs from specifications

### Infrastructure (3 tools)
- **Project State Cache** - Intelligent caching system for project state management
- **Error Handler** - Comprehensive error handling and reporting system
- **Cache Manager** - Advanced caching strategies and invalidation patterns

### Frontend (2 tools)
- **Component Generator** - Generate React/Vue/Angular components from specs
- **Theme Engine** - Dynamic theme generation and management system

### Content Creation (3 tools)
- **Markdown Parser** - Advanced Markdown parser with custom syntax support
- **Character Builder** - Build and manage character profiles systematically
- **Narrative Engine** - Generate and manage narrative structures and story flows

### Graphics & Visualization (2 tools)
- **Flow Field Generator** - Generate vector flow fields for particle systems
- **SVG Rendering Engine** - High-performance SVG generation and manipulation

### Backend (2 tools)
- **Database Tools** - Database schema generation and migration utilities
- **API Generator** - REST and GraphQL API scaffolding and generation

### Analytics (2 tools)
- **Session Aggregator** - Aggregate and analyze sessions across multiple accounts
- **Analytics Engine** - Track, analyze, and report on application metrics

### Data Processing (2 tools)
- **Validation Engine** - Comprehensive data validation with custom rules
- **Data Transformer** - Transform data between formats and schemas

### Single-Category Tools (1 each)
- **Email Tools** (Communication) - Email sending and templating utilities
- **Asset Optimizer** (Media) - Optimize images, videos, and media assets
- **Deployment Validator** (DevOps) - Pre-deployment checks and validation
- **Research Aggregator** (Research) - Collect and synthesize research
- **Test Generator** (Testing) - Generate unit and integration tests
- **Documentation Generator** (Documentation) - Generate API docs and guides
- **Authentication Manager** (Security) - Multi-strategy authentication utilities
- **Workflow Engine** (Automation) - Define and execute automated workflows

## Tools by Primary Capability

### Code Generation
- Type Generator
- Component Generator
- API Generator
- Test Generator
- Documentation Generator

### Data Management
- Validation Engine
- Data Transformer
- Database Tools
- Session Aggregator

### Infrastructure & Performance
- Project State Cache
- Cache Manager
- Error Handler
- Asset Optimizer

### Content & Creativity
- Markdown Parser
- Character Builder
- Narrative Engine
- Research Aggregator

### Frontend & Design
- Component Generator
- Theme Engine
- SVG Rendering Engine
- Flow Field Generator

### Automation & Orchestration
- Workflow Engine
- Deployment Validator
- Analytics Engine

## Tool Metadata Structure

Each tool entry includes:
- **id**: Unique identifier
- **name**: Display name
- **version**: Semantic version
- **description**: Purpose and capabilities
- **category**: Classification
- **package**: NPM package name (@h4shed/*)
- **status**: active/beta/deprecated
- **capabilities**: Feature list
- **dependencies**: Required dependencies
- **repository**: GitHub location
- **tags**: Searchable keywords
- **author**: Maintainer
- **license**: Apache-2.0

## Installation & Usage

### NPM Installation
```bash
npm install @h4shed/[tool-name]
```

### Common Tools Quick Reference

#### Type Generator
Generate TypeScript types from schemas:
```bash
npm install @h4shed/type-generator
```

#### Component Generator
Scaffold UI components:
```bash
npm install @h4shed/component-generator
```

#### API Generator
Create REST/GraphQL APIs:
```bash
npm install @h4shed/api-generator
```

#### Theme Engine
Generate design system themes:
```bash
npm install @h4shed/theme-engine
```

## Tools by Use Case

### For Frontend Developers
- Component Generator
- Theme Engine
- Code Formatter
- Type Generator
- SVG Rendering Engine

### For Backend Developers
- API Generator
- Database Tools
- Authentication Manager
- Error Handler
- Workflow Engine

### For Content Creators
- Markdown Parser
- Character Builder
- Narrative Engine
- Documentation Generator
- Research Aggregator

### For DevOps/Infrastructure
- Deployment Validator
- Cache Manager
- Analytics Engine
- Session Aggregator

### For QA/Testing
- Test Generator
- Validation Engine
- Deployment Validator

### For Data Teams
- Data Transformer
- Validation Engine
- Analytics Engine
- Session Aggregator

## Accessing the Registry

### JSON Format
- **File**: `marketplace-registry.json`
- **Type**: Complete metadata for all 28 tools
- **Usage**: Query by category, tag, capability

### Query Examples

#### All Development Tools
```json
registry.tools.filter(t => t.category === "development")
```

#### Tools with Code Generation
```json
registry.tools.filter(t => t.capabilities.includes("code-generation"))
```

#### All Frontend Tools
```json
registry.tools.filter(t => ["frontend", "graphics"].includes(t.category))
```

## Capabilities Index

### Code Generation (5 tools)
Type Generator, Component Generator, API Generator, Test Generator, Documentation Generator

### Caching & Performance (3 tools)
Project State Cache, Cache Manager, Asset Optimizer

### Data Handling (2 tools)
Validation Engine, Data Transformer

### Workflow & Automation (2 tools)
Workflow Engine, Deployment Validator

### Design & Graphics (2 tools)
Theme Engine, SVG Rendering Engine

### Content & Narrative (3 tools)
Markdown Parser, Character Builder, Narrative Engine

### Backend Services (2 tools)
Database Tools, API Generator

### Analytics & Monitoring (3 tools)
Analytics Engine, Session Aggregator, Error Handler

## Statistics

### By Category
- Development: 3 tools (11%)
- Infrastructure: 3 tools (11%)
- Content: 3 tools (11%)
- Analytics: 2 tools (7%)
- Backend: 2 tools (7%)
- Data: 2 tools (7%)
- Frontend: 2 tools (7%)
- Graphics: 2 tools (7%)
- Other: 7 tools (25%)

### By Status
- Active: 28 tools (100%)
- Beta: 0 tools
- Deprecated: 0 tools

### Development Domains
- Frontend: 4 tools
- Backend: 2 tools
- Infrastructure: 3 tools
- Data: 2 tools
- Content: 3 tools
- Analytics: 2 tools
- DevOps: 1 tool
- Testing: 1 tool
- Security: 1 tool
- Automation: 1 tool
- Media: 1 tool
- Research: 1 tool
- Documentation: 1 tool

## Integration Guide

### 1. Browse Available Tools
Check `marketplace-registry.json` for tools matching your needs

### 2. Review Documentation
Read the tool-specific documentation in GitHub

### 3. Install Package
```bash
npm install @h4shed/[tool-name]
```

### 4. Import & Use
```typescript
import { ToolName } from '@h4shed/tool-name';
const tool = new ToolName(options);
```

## Maintenance

This catalog is maintained and updated when:
- New tools are created or released
- Existing tools release new versions
- Tools are deprecated or archived
- Capabilities are added or modified
- Dependencies are updated

## Related Resources

- **Skills Marketplace**: See skills repository for available skills
- **Marketplace Documentation**: See MARKETPLACE.md for registry specs
- **Original Source**: https://github.com/Fused-Gaming/Fused-Gaming-Skill-MCP

## Search Tips

### By Function Type
- **Generation**: Type Generator, Component Generator, API Generator
- **Transformation**: Data Transformer, Code Formatter
- **Analysis**: Analytics Engine, Validation Engine
- **Orchestration**: Workflow Engine, Deployment Validator

### By Framework Support
- **React**: Component Generator, Theme Engine
- **Node.js**: API Generator, Database Tools
- **TypeScript**: Type Generator, Code Formatter
- **Database**: Database Tools, Cache Manager

### By Performance Impact
- **High Performance**: Cache Manager, Flow Field Generator
- **Optimization**: Asset Optimizer, Code Formatter
- **Monitoring**: Analytics Engine, Error Handler
