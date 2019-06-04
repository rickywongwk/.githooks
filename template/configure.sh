#!/bin/bash

export GIT_DIR="$(git rev-parse --git-dir)"

. "$GIT_DIR/hooks/hook_switcher.sh"

main() {
	local source=${BASH_SOURCE[0]}
	local progdir="$(cd "$(dirname "$source")"; pwd)"
	local hookName
	for directory in $(find "$progdir/hooks" -type d | sort | \
	awk '$source !~ last "/" {print last} {last=$source} END {print last}')
	do
		hookName=${directory#$progdir/hooks/}
		echo "Configuring $hookName"
		switch_hook "$hookName"
		find "$directory" -name configure.sh -exec {} \;
	done
}

main
