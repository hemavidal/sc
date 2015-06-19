package sc.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfissaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Profissao.list(params), model:[profissaoInstanceCount: Profissao.count()]
    }

    def show(Profissao profissaoInstance) {
        respond profissaoInstance
    }

    def create() {
        respond new Profissao(params)
    }

    @Transactional
    def save(Profissao profissaoInstance) {
        if (profissaoInstance == null) {
            notFound()
            return
        }

        if (profissaoInstance.hasErrors()) {
            respond profissaoInstance.errors, view:'create'
            return
        }

        profissaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profissao.label', default: 'Profissao'), profissaoInstance.id])
                redirect profissaoInstance
            }
            '*' { respond profissaoInstance, [status: CREATED] }
        }
    }

    def edit(Profissao profissaoInstance) {
        respond profissaoInstance
    }

    @Transactional
    def update(Profissao profissaoInstance) {
        if (profissaoInstance == null) {
            notFound()
            return
        }

        if (profissaoInstance.hasErrors()) {
            respond profissaoInstance.errors, view:'edit'
            return
        }

        profissaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profissao.label', default: 'Profissao'), profissaoInstance.id])
                redirect profissaoInstance
            }
            '*'{ respond profissaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Profissao profissaoInstance) {

        if (profissaoInstance == null) {
            notFound()
            return
        }

        profissaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profissao.label', default: 'Profissao'), profissaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profissao.label', default: 'Profissao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
