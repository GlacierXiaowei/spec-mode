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

# Copy skill files to skills directory
echo "📁 Copying skill files to $SKILLS_DIR/spec-mode/"

# Remove existing installation if present
if [ -d "$SKILLS_DIR/spec-mode" ]; then
  echo "⚠️  Removing existing installation..."
  rm -rf "$SKILLS_DIR/spec-mode"
fi

# Copy files
cp -r "$SCRIPT_DIR" "$SKILLS_DIR/spec-mode"

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
