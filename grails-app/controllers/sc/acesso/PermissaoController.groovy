package sc.acesso

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PermissaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Permissao.list(params), model:[permissaoCount: Permissao.count()]
    }

    def show(Permissao permissao) {
        respond permissao
    }

    def create() {
        respond new Permissao(params)
    }

    @Transactional
    def save(Permissao permissao) {
        if (permissao == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (permissao.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond permissao.errors, view:'create'
            return
        }

        permissao.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'permissao.label', default: 'Permissao'), permissao.id])
                redirect permissao
            }
            '*' { respond permissao, [status: CREATED] }
        }
    }

    def edit(Permissao permissao) {
        respond permissao
    }

    @Transactional
    def update(Permissao permissao) {
        if (permissao == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (permissao.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond permissao.errors, view:'edit'
            return
        }

        permissao.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'permissao.label', default: 'Permissao'), permissao.id])
                redirect permissao
            }
            '*'{ respond permissao, [status: OK] }
        }
    }

    @Transactional
    def delete(Permissao permissao) {

        if (permissao == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        permissao.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'permissao.label', default: 'Permissao'), permissao.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'permissao.label', default: 'Permissao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
