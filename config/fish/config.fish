alias ls='ls --color=auto'
alias l='ls -l --color=auto'
alias grep='grep --color'

set -U fish_user_paths $HOME/.cargo/bin
export SPARK_HOME=/opt/spark

# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

function fish_prompt
    set_color yellow
    printf (whoami)
    set_color red
    printf " @ "
    set_color yellow
    printf (hostname)
    set_color white
    printf " %s " (pwd)
    echo
    echo -n "> "
    set_color normal
end

if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
