alias nvim='vim'
alias git-remove-last='git reset --hard HEAD~1'
abbr -a nvim vim
abbr -a c cargo
abbr -a cb 'cargo build'
abbr -a cr 'cargo run'
abbr -a e vim
abbr -a m make
abbr -a g git
abbr -a gcl git clone
abbr -a gc 'git checkout'
abbr journal-clean 'journalctl --vacuum-time=2d'
abbr -a t task

if command -v rg > /dev/null
	abbr -a grep rg
end
function agrep
	vgrep "$argv" ~/devel/linux/linux/drivers/gpu/drm/amd/amdgpu/
end

function gitfetchamd
	git -C /home/nirmoy/devel/linux/linux/ fetch brahma amd-staging-drm-next
end

function dgrep
	vgrep $argv drivers/gpu/drm/*
end

function hex_to_bin
	echo "ibase=16; obase=2; "(string upper $argv)"" | bc
end

function hex_to_dec
	echo "ibase=16; obase=A; "(string upper $argv)"" | bc
end


function bin_to_hex
	echo "ibase=2; obase=16; $argv" | bc
end


function bin_to_dec
	echo "ibase=2;obase=A; $argv"|bc
end

function dec_to_bin
	echo "ibase=A;obase=2; $argv"|bc
end

function dec_to_hex
	echo "ibase=A;obase=16; $argv"|bc
end

# config.fish
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end


function bt
	bluetoothctl power on
	sudo bluetoothctl connect E8:07:BF:36:61:D0
end

if command -v xcp > /dev/null
	abbr cp xcp
end

function ncp
	if test (count $argv) -lt 4; or test $argv[1] = "--help"
		echo "passed 4 args"
	else
		echo 'tar  cf - $argv[1] | pigz | ssh  $argv[2]@$argv[3] "pigz -d| tar -xC $argv[4]"'
	end
end

set PATH $HOME/.cargo/bin ~/.local/bin $PATH /usr/local/bin


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
	#if type -q fish-welcome
	#	fish-welcome; set_color normal #fish-welcome doesn't reset color
	#end
	#if type -q task and type -q boxed
	#			task|boxed
	#end
end

#source ~/.config/fish/functions/fish_title.fish
#source ~/.config/fish/completions/docker.fish
starship init fish | source
