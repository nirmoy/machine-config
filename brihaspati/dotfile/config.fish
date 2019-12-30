alias vim='nvim'
alias git-remove-last='git reset --hard HEAD~1'
abbr -a vim nvim
abbr -a c cargo
abbr -a cb 'cargo build'
abbr -a cr 'cargo run'
abbr -a e nvim
abbr -a m make
abbr -a g git
abbr -a gc 'git checkout'
abbr -a vimdiff 'nvim -d'
abbr journal-clean 'journalctl --vacuum-time=2d'
abbr -a t task
if command -v xcp > /dev/null
	abbr cp xcp
end


set PATH $HOME/.cargo/bin ~/.local/bin $PATH


if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a ll 'exa -l --sort newest'
	abbr -a lll 'exa -la --sort newest'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

function fish_greeting
	if type -q fish-welcome
		fish-welcome; set_color normal #fish-welcome doesn't reset color
	end
	#if type -q task and type -q boxed
	#		task|boxed
	#end
end

source ~/.config/fish/functions/fish_prompt.fish
source ~/.config/fish/functions/fish_title.fish
source ~/.config/fish/completions/docker.fish

set -g theme_display_git no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_sudo_user yes
set -g theme_display_vi no
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme zenburn
set -g theme_project_dir_length 1
set -g theme_newline_cursor no
#set -g theme_title_use_abbreviated_path yes
