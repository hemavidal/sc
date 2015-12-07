package sc.filtros

class IgrejaFilters {
    def dependsOn = [LoggingFilters]

    def filters = {
        usuarioIgrejaVisualizaSomenteSuaIgreja(controller:'igreja', action:'show|edit|update') {
            before = {
                // if ( session.user == 'igreja' && session.user.igreja) {
                    
                // }
            }
        }

    }
}
