complete -c fisher --exclusive --long help -d "Print usage help"
complete -c fisher --exclusive --long version -d "Print version"
complete -c fisher --exclusive --condition "__fish_use_subcommand" -a install -d "Install plugins"
complete -c fisher --exclusive --condition "__fish_use_subcommand" -a update -d "Update installed plugins"
complete -c fisher --exclusive --condition "__fish_use_subcommand" -a remove -d "Remove installed plugins"
complete -c fisher --exclusive --condition "__fish_use_subcommand" -a list -d "List installed plugins matching optional regex"
complete -c fisher --exclusive --condition "__fish_seen_subcommand_from update remove" -a "(fisher list)"