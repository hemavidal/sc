package sc.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfissaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        respond Profissao.list(), model:[profissaoCount: Profissao.count()]
    }

    def show(Profissao profissao) {
        respond profissao, model : [pessoas:Pessoa.findAllByProfissao(profissao)]
    }

    def create() {
        respond new Profissao(params)
    }

    @Transactional
    def save(Profissao profissao) {
        if (profissao == null) {
            notFound()
            return
        }

        if (profissao.hasErrors()) {
            respond profissao.errors, view:'create'
            return
        }

        profissao.save flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.created.message', args: [message(code: 'profissao.label', default: 'Profissao'), profissao.nome])
                redirect profissao
            }
            '*' { respond profissao, [status: CREATED] }
        }
    }

    def edit(Profissao profissao) {
        respond profissao
    }

    @Transactional
    def update(Profissao profissao) {
        if (profissao == null) {
            notFound()
            return
        }

        if (profissao.hasErrors()) {
            respond profissao.errors, view:'edit'
            return
        }

        profissao.save flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profissao.label', default: 'Profissao'), profissao.nome])
                redirect profissao
            }
            '*'{ respond profissao, [status: OK] }
        }
    }

    @Transactional
    def delete(Profissao profissao) {

        if (profissao == null) {
            notFound()
            return
        }

        if (Pessoa.findByProfissao(profissao)) {
            flash.type = "alert-warning"
            flash.message = "A profissão está sendo usada por alguma pessoa!\nVocê não pode deletar essa profissão!"
            redirect profissao
            return 
        }

        profissao.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-warning"
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profissao.label', default: 'Profissao'), profissao.nome])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.type = "alert-danger"
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profissao.label', default: 'Profissao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
