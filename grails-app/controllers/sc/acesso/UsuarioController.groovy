package sc.acesso



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def login() {
        render view:"login"
    }

    def autenticar = {
        Usuario usuario = Usuario.findByLoginAndSenha(params["login"], params["senha"])
        if (usuario) {
            session.user = usuario
            redirect (uri: "/")
        } else {
            flash.message = "Usuário ou senha inválidos!"
            flash.type = "alert-danger"
            redirect(action:"login")
        }

    }

    def logout = {
        session.user = null 
        redirect (action:"login")
    }

    def index(Integer max) {
        respond Usuario.list(), model:[usuarioCount: Usuario.count()]
    }

    def show(Usuario usuario) {
        usuario.senha = ''
        respond usuario
    }

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def save(Usuario usuario) {
        if (usuario == null) {
            notFound()
            return
        }

        if (usuario.hasErrors()) {
            respond usuario.errors, view:'create'
            return
        }

        usuario.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*' { respond usuario, [status: CREATED] }
        }
    }

    def edit(Usuario usuario) {
        println usuario.senha
        usuario.senha = ''
        respond usuario
    }

    @Transactional
    def update(Usuario usuario) {
        if ((usuario.senha && usuario.senha.trim().isEmpty()) || !usuario.senha) {
            def usuarioDoDB = Usuario.findById(usuario.id)
            println "${usuarioDoDB.login}: ${usuarioDoDB.senha}"
            usuario.senha = usuarioDoDB.senha
        } 

        if (usuario == null) {
            notFound()
            return
        }

        if (usuario.hasErrors()) {
            respond usuario.errors, view:'edit'
            return
        }

        usuario.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*'{ respond usuario, [status: OK] }
        }
    }

    @Transactional
    def delete(Usuario usuario) {

        if (usuario == null) {
            notFound()
            return
        }

        usuario.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuario.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
