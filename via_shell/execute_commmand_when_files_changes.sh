# Reload Kitty terminal when its config file changes
fswatch -o kitty.conf --latency 0.1 --verbose | xargs -n1 -I{} killall -SIGUSR1 kitty

# Regenerate tree-sitter parser and parse sample file, when grammer file is changed
fswatch -o grammar.js queries/awk//highlights.scm | xargs -n1 -I{} fish -c 'clear && tree-sitter generate && tree-sitter parse example2.awk'
