package sc.filtros

class LoggingFilters {

    def niveisDePermissao = ["admin":5, "igreja":4, "setor":3, "grupoCaseiro":2, "pessoa":1]

/*    def mapaDePermissoes = [ "igreja"       : ["igreja": ["show", "edit", "update"],
                                               "setor" : ["index", "create", "edit", "show", "delete", "update"],
                                               "grupoCaseiro" : ["index", "create", "edit", "show", "delete", "update"],
                                               "pessoa" : ["index", "create", "edit", "show", "delete", "update"]
                                              ],
                             "setor"        :  ["setor" : ["index", "create", "edit", "show", "delete", "update"],
                                                "grupoCaseiro" : ["index", "create", "edit", "show", "delete", "update"],
                                                "pessoa" : ["index", "create", "edit", "show", "delete", "update"]
                                               ],
                             "grupoCaseiro" :  ["grupoCaseiro" : ["index", "create", "edit", "show", "delete", "update"],
                                                "pessoa" : ["index", "create", "edit", "show", "delete", "update"]
                                               ],
                             "pessoa" :  ["grupoCaseiro" : ["index", "create", "edit", "show", "delete", "update"],
                                                "pessoa" : ["index", "create", "edit", "show", "delete", "update"]
                                               ]                                               

                           ]
*/
    def filters = {
        habilitarAcessoSomenteParaSessaoAberta(controller:'assets', action:'*', invert:true) {
            before = {
                if (!session.user && !(actionName in ["login", "autenticar"])) {
                    redirect (controller: "usuario", action: "login")
                    return false
                } else {
                    return true
                }
            }
        }
    }
}
