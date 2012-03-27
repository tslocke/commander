
require 'commander'

include Commander::UI
include Commander::UI::AskForClass

$terminal.wrap_at = HighLine::SystemExtensions.terminal_size.first - 5 rescue 80 if $stdin.tty?
at_exit { Commander::Runner.instance.run! }
