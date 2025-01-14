#!/usr/bin/env bash
###############################################################################
#File: add_rust_analyzer.sh
#
#License: MIT
#
#Copyright (C) 2025 Onur Ozuduru
#
#Follow Me!
#  github: github.com/onurozuduru
###############################################################################

## Run before astrocommunity rust pack so the pack works properly

# Check if rustup is installed
if ! command -v rustup &>/dev/null; then
	echo "Error: rustup could not be found"
	exit 1
fi

CMD="rustup component add rust-analyzer"
echo "Running: $CMD"
if ! $CMD; then
	echo "Error: Failed to install rust-analyzer"
	exit 1
fi
