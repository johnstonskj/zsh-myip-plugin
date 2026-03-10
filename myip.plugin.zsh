# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# @name: myip
# @brief: Provide `myip` alias to show external IP address.
# @repository: https://github.com/johnstonskj/zsh-myip-plugin
# @version: 0.1.1
# @license: MIT AND Apache-2.0
#

myip_plugin_init() {
    @zplugins_define_alias myip alias myip='curl http://ipecho.net/plain; echo'
}
