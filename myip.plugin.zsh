# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# Plugin Name: myip
# Description: Zsh plugin to provide myip command.
# Repository: https://github.com/johnstonskj/zsh-myip-plugin
#
# Public variables:
#
# * `MYIP`; plugin-defined global associative array with the following keys:
#   * `_PLUGIN_DIR`; the directory the plugin is sourced from.
#

############################################################################
# Standard Setup Behavior
############################################################################

# See https://wiki.zshell.dev/community/zsh_plugin_standard#zero-handling
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# See https://wiki.zshell.dev/community/zsh_plugin_standard#standard-plugins-hash
declare -gA MYIP
MYIP[_PLUGIN_DIR]="${0:h}"

############################################################################
# Plugin Unload Function
############################################################################

# See https://wiki.zshell.dev/community/zsh_plugin_standard#unload-function
myip_plugin_unload() {
    builtin emulate -L zsh
    
    unalias myip

    # Remove the global data variable (after above!).
    unset MYIP

    # Remove this function last.
    unfunction myip_plugin_unload
}

############################################################################
# Aliases
############################################################################

alias myip='curl http://ipecho.net/plain; echo'

############################################################################
# Initialize Plugin
############################################################################

true
