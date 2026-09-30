#!/bin/bash

# Fused Gaming Tools Marketplace - Validation Script
# Validates tool entries in marketplace-registry.json

set -e

REGISTRY_FILE="docs/configuration/marketplace-registry.json"
CATALOG_FILE="docs/reference/TOOLS_CATALOG.md"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "🔍 Fused Gaming Tools Marketplace Validator"
echo "=========================================="
echo ""

# Check if registry exists
if [ ! -f "$REGISTRY_FILE" ]; then
    echo -e "${RED}❌ Error: $REGISTRY_FILE not found${NC}"
    exit 1
fi

# Validate JSON
echo "📋 Validating JSON structure..."
if ! jq empty "$REGISTRY_FILE" 2>/dev/null; then
    echo -e "${RED}❌ Invalid JSON in $REGISTRY_FILE${NC}"
    exit 1
fi
echo -e "${GREEN}✅ JSON is valid${NC}"

# Count tools
echo ""
echo "📊 Counting tools..."
TOOL_COUNT=$(jq '.registry.tools | length' "$REGISTRY_FILE")
echo -e "${GREEN}✅ Total tools: $TOOL_COUNT${NC}"

# Validate each tool
echo ""
echo "🔎 Validating tool entries..."
VALID=0
INVALID=0

for i in $(seq 0 $((TOOL_COUNT - 1))); do
    TOOL=$(jq ".registry.tools[$i]" "$REGISTRY_FILE")
    ID=$(echo "$TOOL" | jq -r '.id')
    NAME=$(echo "$TOOL" | jq -r '.name')

    # Check required fields
    ERRORS=0

    if [ "$ID" = "null" ] || [ -z "$ID" ]; then
        echo -e "${RED}  ❌ Tool $i: Missing 'id' field${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    if [ "$NAME" = "null" ] || [ -z "$NAME" ]; then
        echo -e "${RED}  ❌ Tool $i: Missing 'name' field${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    CATEGORY=$(echo "$TOOL" | jq -r '.category')
    if [ "$CATEGORY" = "null" ] || [ -z "$CATEGORY" ]; then
        echo -e "${RED}  ❌ Tool $ID: Missing 'category' field${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    STATUS=$(echo "$TOOL" | jq -r '.status')
    if [ "$STATUS" = "null" ] || [ -z "$STATUS" ]; then
        echo -e "${RED}  ❌ Tool $ID: Missing 'status' field${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    if [ $ERRORS -eq 0 ]; then
        echo -e "${GREEN}  ✅ $ID ($NAME)${NC}"
        VALID=$((VALID + 1))
    else
        INVALID=$((INVALID + 1))
    fi
done

# Validate statistics
echo ""
echo "📈 Validating statistics..."

STAT_TOTAL=$(jq '.stats.totalTools' "$REGISTRY_FILE")
if [ "$STAT_TOTAL" -eq "$TOOL_COUNT" ]; then
    echo -e "${GREEN}✅ Statistics match tool count ($STAT_TOTAL)${NC}"
else
    echo -e "${YELLOW}⚠️  Statistics don't match: registry has $TOOL_COUNT but stats say $STAT_TOTAL${NC}"
fi

# Validate categories
echo ""
echo "🏷️  Validating categories..."
CATEGORIES=$(jq '.categories | length' "$REGISTRY_FILE")
echo -e "${GREEN}✅ Categories defined: $CATEGORIES${NC}"

# Validate licenses
echo ""
echo "🔐 Validating licenses..."
LICENSE_COUNT=$(jq '[.registry.tools[] | select(.license | type != "null")] | length' "$REGISTRY_FILE")
echo -e "${GREEN}✅ Tools with licenses: $LICENSE_COUNT / $TOOL_COUNT${NC}"

# Validate tool structure consistency
echo ""
echo "✨ Validating tool structure consistency..."
REQUIRED_FIELDS=("id" "name" "category" "status" "description")
STRUCTURE_OK=true

for field in "${REQUIRED_FIELDS[@]}"; do
    MISSING=$(jq "[.registry.tools[] | select(.\"$field\" | type == \"null\" or . == \"\")] | length" "$REGISTRY_FILE")
    if [ "$MISSING" -gt 0 ]; then
        echo -e "${YELLOW}⚠️  Missing '$field' in $MISSING tool(s)${NC}"
        STRUCTURE_OK=false
    fi
done

if [ "$STRUCTURE_OK" = true ]; then
    echo -e "${GREEN}✅ All tools have required fields${NC}"
fi

# Summary
echo ""
echo "=========================================="
echo "📋 Summary"
echo "=========================================="
echo -e "Valid tools:        ${GREEN}$VALID${NC}"
echo -e "Invalid tools:      ${RED}$INVALID${NC}"
echo -e "Total tools:        ${GREEN}$TOOL_COUNT${NC}"
echo -e "Total categories:   ${GREEN}$CATEGORIES${NC}"

if [ "$INVALID" -eq 0 ] && [ "$STRUCTURE_OK" = true ]; then
    echo -e ""
    echo -e "${GREEN}✅ Registry validation PASSED${NC}"
    exit 0
else
    echo -e ""
    echo -e "${RED}❌ Registry validation FAILED${NC}"
    exit 1
fi
