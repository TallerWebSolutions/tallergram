#! /usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${DIR}/build"
	npm install -g grunt-cli
	npm install
	grunt download-atom-shell
popd


if [ "$(uname)" == 'Darwin' ]; then
  "${DIR}/build/atom-shell/Atom.app/Contents/MacOS/Atom" "${DIR}/tallergram"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  "${DIR}/build/atom-shell/atom" "${DIR}/tallergram"
else
  echo "Your platform ($(uname -a)) is not supported. Yet ;)"
  exit 1
fi
