#!/bin/bash

# Spec Mode Skill Installer
# Compatible with OpenCode, Cursor, Windsurf, Copilot

set -e

echo "🚀 Installing Spec Mode Skill..."

# Determine the skills directory based on the AI assistant
SKILLS_DIR=""

if [ -n "$OPENCODE_CONFIG" ]; then
  SKILLS_DIR="$HOME/.config/opencode/skills"
elif [ -n "$CURSOR_CONFIG" ]; then
  SKILLS_DIR="$HOME/.cursor/skills"
elif [ -n "$WINDSURF_CONFIG" ]; then
  SKILLS_DIR="$HOME/.windsurf/skills"
elif [ -n "$COPILOT_CONFIG" ]; then
  SKILLS_DIR="$HOME/.copilot/skills"
else
  # Default to OpenCode
  SKILLS_DIR="$HOME/.config/opencode/skills"
fi

# Create skills directory if it doesn't exist
mkdir -p "$SKILLS_DIR"

# Get the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Destination directory
DEST_DIR="$SKILLS_DIR/spec-mode"

# Remove existing installation if present
if [ -d "$DEST_DIR" ]; then
  echo "⚠️  Removing existing installation..."
  rm -rf "$DEST_DIR"
fi

# Create destination directory
mkdir -p "$DEST_DIR"

# Copy skill files (excluding .git and other unnecessary files)
echo "📁 Copying skill files to $DEST_DIR/"

# Copy core files
cp "$SCRIPT_DIR/SKILL.md" "$DEST_DIR/"
cp "$SCRIPT_DIR/README.md" "$DEST_DIR/" 2>/dev/null || true
cp "$SCRIPT_DIR/LICENSE" "$DEST_DIR/" 2>/dev/null || true

# Copy directories
for dir in examples prompts references templates tests; do
  if [ -d "$SCRIPT_DIR/$dir" ]; then
    cp -r "$SCRIPT_DIR/$dir" "$DEST_DIR/"
  fi
done

# Verify installation
if [ -f "$SKILLS_DIR/spec-mode/SKILL.md" ]; then
  echo "✅ Spec Mode Skill installed successfully!"
  echo ""
  echo "📖 Usage:"
  echo '   Say "spec", "specification", "spec-mode", "写规范", or "写 specs"'
  echo ""
  echo "📁 Installed to: $SKILLS_DIR/spec-mode/"
else
  echo "❌ Installation failed. Please check the error messages above."
  exit 1
fi
