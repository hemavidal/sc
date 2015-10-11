package sc

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TesteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Teste.list(params), model:[testeCount: Teste.count()]
    }

    def show(Teste teste) {
        respond teste
    }

    def create() {
        respond new Teste(params)
    }

    @Transactional
    def save(Teste teste) {
        if (teste == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (teste.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond teste.errors, view:'create'
            return
        }

        teste.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teste.label', default: 'Teste'), teste.id])
                redirect teste
            }
            '*' { respond teste, [status: CREATED] }
        }
    }

    def edit(Teste teste) {
        respond teste
    }

    @Transactional
    def update(Teste teste) {
        if (teste == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (teste.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond teste.errors, view:'edit'
            return
        }

        teste.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'teste.label', default: 'Teste'), teste.id])
                redirect teste
            }
            '*'{ respond teste, [status: OK] }
        }
    }

    @Transactional
    def delete(Teste teste) {

        if (teste == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        teste.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'teste.label', default: 'Teste'), teste.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teste.label', default: 'Teste'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
