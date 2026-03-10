#!/bin/bash

# validate-skills.sh - Local validation script for skills
# Usage: ./scripts/validate-skills.sh

set -e

SKILLS_DIR="${1:-skills}"
ERRORS=0

echo "🔍 Validating skills in $SKILLS_DIR..."
echo ""

for skill_dir in "$SKILLS_DIR"/*/; do
    if [[ ! -d "$skill_dir" ]]; then
        continue
    fi
    
    skill_name=$(basename "$skill_dir")
    skill_file="${skill_dir}SKILL.md"
    
    # Check SKILL.md exists
    if [[ ! -f "$skill_file" ]]; then
        echo "❌ $skill_name: Missing SKILL.md file"
        ERRORS=$((ERRORS + 1))
        continue
    fi
    
    # Check for YAML frontmatter
    if ! grep -q "^---" "$skill_file" 2>/dev/null; then
        echo "❌ $skill_name: Missing YAML frontmatter (---)"
        ERRORS=$((ERRORS + 1))
        continue
    fi
    
    # Check for name field
    if ! grep -q "^name:" "$skill_file" 2>/dev/null; then
        echo "❌ $skill_name: Missing 'name' field in frontmatter"
        ERRORS=$((ERRORS + 1))
        continue
    fi
    
    # Check for description field  
    if ! grep -q "^description:" "$skill_file" 2>/dev/null; then
        echo "❌ $skill_name: Missing 'description' field in frontmatter"
        ERRORS=$((ERRORS + 1))
        continue
    fi
    
    echo "✅ $skill_name: Valid"
done

echo ""
total=$(ls -1 "$SKILLS_DIR"/ 2>/dev/null | wc -l)
echo "📊 Total skills: $total"

if [[ $ERRORS -gt 0 ]]; then
    echo "❌ Validation failed with $ERRORS error(s)"
    exit 1
fi

echo "✅ All skills validated successfully!"
