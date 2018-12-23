PS1='($?)\033[0;34m [\t] \033[1;33m\u\033[0;37m  🇺🇸  🇲🇽 \033[1;32m -> \033[0;37m'
function prompt_last_retval_if_failed {
    local RET=$?
    if [ $RET -ne 0 ]; then
        echo "($RET) "
    fi
}

