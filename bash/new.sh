#!/usr/bin/env bash
# A simple script to check:
# 1) If a file exists
# 2) If a folder exists
# 3) If a number is even or odd

set -euo pipefail

# --- Helper functions ---

check_file() {
  local file_path=$1
  if [ -f "$file_path" ]; then
    echo "✅ File exists: $file_path"
  else
    echo "❌ File does NOT exist: $file_path"
  fi
}

check_dir() {
  local dir_path=$1
  if [ -d "$dir_path" ]; then
    echo "✅ Directory exists: $dir_path"
  else
    echo "❌ Directory does NOT exist: $dir_path"
  fi
}

check_even_odd() {
  local num=$1
  # Validate integer (supports optional leading minus)
  if [[ "$num" =~ ^-?[0-9]+$ ]]; then
    if (( num % 2 == 0 )); then
      echo "🔢 $num is EVEN"
    else
      echo "🔢 $num is ODD"
    fi
  else
    echo "⚠️ '$num' is not a valid integer"
    return 1
  fi
}

# --- Main logic ---

# If arguments are provided, use them; otherwise prompt the user.
# Usage:
#   ./check_things.sh <file_path> <dir_path> <number>
# Example:
#   ./check_things.sh /etc/hosts /tmp 7

file_input=${1:-}
dir_input=${2:-}
num_input=${3:-}

if [[ -z "${file_input}" ]]; then
  read -r -p "Enter a file path to check: " file_input
fi

if [[ -z "${dir_input}" ]]; then
  read -r -p "Enter a directory path to check: " dir_input
fi

if [[ -z "${num_input}" ]]; then
  read -r -p "Enter an integer number to check even/odd: " num_input
fi

echo
check_file "$file_input"
check_dir "$dir_input"
check_even_odd "$num_input"