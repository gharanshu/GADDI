#!/bin/bash

# 1. Track everything across the entire repository (new folders, audios, texts)
git add .

# 2. Visually show you exactly what changed
echo "========================================"
echo "📁 TRACKED CHANGES:"
echo "========================================"
git status --short
echo "========================================"

# 3. Prompt you for your custom commit note
echo "Type your commit message (what did you change/add?):"
read commit_message

# 4. Fallback if you leave it blank
if [ -z "$commit_message" ]; then
    commit_message="Updated Gaddi phonetic repository data"
fi

# 5. Execute the push sequence
git commit -m "$commit_message"
git push origin main

echo "========================================"
echo "✅ All changes successfully pushed to GitHub!"
echo "========================================"
read -p "Press Enter to close..."
