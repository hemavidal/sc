package sc.acesso

import sc.model.*

class Usuario {

	String login
	String senha
    boolean isAdmin = false
    static hasOne = [pessoa: Pessoa]

    static hasManny = [permissoes:Permissao]

    static constraints = {
        login  nullable :false, blank:false, unique:true
        senha  nullable :false, blank:false
        pessoa nullable :true
    }

    def boolean temPermissaoPara(objeto) {
        if (isAdmin) {
            return true
        }
        def classeSelecionada = String.valueOf(objeto.getClass())

        if (Permissao.findByClasseAndClasseIdAndUsuario(classeSelecionada, objeto.id, this)) {
            return true
        }

        if (objeto instanceof GrupoCaseiro) {
            if (Permissao.findByClasseAndClasseIdAndUsuario("Setor", objeto.setor.id, this)) {
                return true
            }
        } 
        if (objeto instanceof Setor) {
            if (Permissao.findByClasseAndClasseIdAndUsuario("Igreja", objeto.igreja.id, this)) {
                return true
            }
        }

        return false
    }

    def boolean isAdmin() {
        return isAdmin
    }

    def associarPermissao(objeto) {
        def classeSelecionada = String.valueOf(objeto.getClass())
        println "classe: $classeSelecionada"
        println "classeId: ${objeto.id}"
        def permissao = Permissao.findByClasseAndClasseId(classeSelecionada, objeto.id)
        if (!permissao) {
            permissao = new Permissao(classe:classeSelecionada, classeId:objeto.id, usuario:this)
            permissao.save(flush:true)
            
        } 
        
        this.save(flush:true)
    }
}
