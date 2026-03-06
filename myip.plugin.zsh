# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# @name myip
# @brief Zsh plugin to provide a `myip` command/alias.
# @repository https://github.com/johnstonskj/zsh-myip-plugin
#
#

myip_plugin_init() {
    @zplugins_define_alias myip alias myip='curl http://ipecho.net/plain; echo'
}
