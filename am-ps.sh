for example in $(pgrep bash); do pmap $example | tail -n 1 | awk '/[0-9]K/{print $2}'; done
