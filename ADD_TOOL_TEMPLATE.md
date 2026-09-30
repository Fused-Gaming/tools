# Adding New Tools to Marketplace

This document provides a template for adding discovered tools to the Fused Gaming Tools Marketplace.

## Tool Addition Checklist

### 1. Tool Identification
- [ ] Tool name confirmed
- [ ] Tool purpose clear
- [ ] Repository location identified
- [ ] License verified (Apache-2.0 + Non-Commercial)
- [ ] Production-ready status confirmed

### 2. Metadata Extraction
Complete the following information:

```json
{
  "id": "tool-id-kebab-case",
  "name": "Tool Display Name",
  "version": "x.y.z",
  "description": "Brief description of what the tool does",
  "category": "development|infrastructure|frontend|backend|...",
  "package": "@h4shed/tool-name or null",
  "status": "active",
  "author": "Fused Gaming",
  "license": "Apache-2.0",
  "capabilities": [
    "capability-1",
    "capability-2"
  ],
  "dependencies": [
    "optional-dependency"
  ],
  "repository": {
    "owner": "Fused-Gaming",
    "repo": "repository-name"
  },
  "tags": [
    "tag1",
    "tag2"
  ]
}
```

### 3. Registry Update

Add entry to `marketplace-registry.json`:
- Add to `registry.tools` array
- Update `stats.totalTools`
- Update category counts in `stats.byCategory`
- Ensure all fields populated

### 4. Catalog Update

Update `TOOLS_CATALOG.md`:
- Add tool to appropriate category section
- Add to use-case section if applicable
- Update statistics if needed
- Add to capability index

### 5. Documentation

Document in `MARKETPLACE.md` if adding new category:
- Add to categories list
- Describe category purpose
- List representative tools

### 6. Version Update

Update `VERSION.json`:
- Increment total tools count
- Update categories if needed
- Update last updated timestamp
- Note changes in metadata

### 7. Commit & Push

Create commit with:
```bash
git add marketplace-registry.json TOOLS_CATALOG.md VERSION.json
git commit -m "Add [tool-name] to tools marketplace

- Add [tool-name] tool for [purpose]
- Extends [category] category
- Provides [key capability]
- Production-ready and [key feature]"
git push origin main
```

## Tool Categories

- **development**: Code generation, type systems, formatters
- **frontend**: UI components, styling, design
- **backend**: API generation, database, services
- **infrastructure**: Caching, state, error handling
- **devops**: Deployment, monitoring, CI/CD
- **automation**: Workflow, orchestration
- **data**: Validation, transformation, processing
- **analytics**: Metrics, tracking, reporting
- **communication**: Email, messaging
- **media**: Asset optimization, compression
- **security**: Authentication, authorization
- **research**: Data aggregation, synthesis
- **documentation**: Doc generation, guides
- **testing**: Test generation, QA
- **graphics**: Visualization, rendering

## Example: Adding a New Tool

### Input Information
```
Name: API Documentation Generator
Purpose: Generate OpenAPI/Swagger docs from code
Repository: Fused-Gaming/tools
NPM Package: @h4shed/api-doc-generator
```

### JSON Entry
```json
{
  "id": "api-doc-generator",
  "name": "API Documentation Generator",
  "version": "1.0.0",
  "description": "Generate OpenAPI/Swagger documentation from code annotations",
  "category": "documentation",
  "package": "@h4shed/api-doc-generator",
  "status": "active",
  "author": "Fused Gaming",
  "license": "Apache-2.0",
  "capabilities": ["doc-generation", "api-specification", "openapi-support"],
  "dependencies": [],
  "repository": {
    "owner": "Fused-Gaming",
    "repo": "tools"
  },
  "tags": ["documentation", "api", "openapi", "swagger", "generation"]
}
```

### Catalog Entry
Under **Documentation (2 tools)** section:
```markdown
- **API Documentation Generator** - Generate OpenAPI/Swagger documentation from code
```

### Statistics Update
```json
"documentation": 2  // Changed from 1 to 2
```

## Quality Assurance

Before committing:
- [ ] JSON is valid (use jq)
- [ ] All required fields present
- [ ] Capabilities are realistic
- [ ] Category is appropriate
- [ ] Description is clear
- [ ] Tags are relevant
- [ ] License is correct
- [ ] Tool is production-ready

## Testing Addition

After commit, verify:

```bash
# Check JSON validity
jq '.registry.tools[] | select(.id=="new-tool-id")' marketplace-registry.json

# Verify statistics
jq '.stats' marketplace-registry.json

# Check git history
git log -1 --oneline

# Validate registry
jq '.registry | keys' marketplace-registry.json
```

## Common Issues

### Issue: Tool not in registry
**Solution**: Ensure entry added to `registry.tools` array with all required fields

### Issue: Statistics don't match
**Solution**: Count tools manually and update stats.totalTools and stats.byCategory

### Issue: JSON invalid
**Solution**: Validate with `jq '.' marketplace-registry.json`

### Issue: Duplicate ID
**Solution**: Use unique kebab-case id, check existing entries

## Maintenance

After adding tools:
1. Track in VERSION.json
2. Update MANIFEST.md if major changes
3. Keep TOOLS_CATALOG.md in sync
4. Update MARKETPLACE.md if new category

## Support

For tool integration questions:
- Check existing entries in marketplace-registry.json
- Review MARKETPLACE.md for specifications
- Verify LICENSE compliance
- Consult TOOLS_CATALOG.md for examples
