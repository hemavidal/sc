package sc.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SetorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Setor.list(params), model:[setorInstanceCount: Setor.count()]
    }

    def show(Setor setorInstance) {
        respond setorInstance
    }

    def create() {
        respond new Setor(params)
    }

    @Transactional
    def save(Setor setorInstance) {
        if (setorInstance == null) {
            notFound()
            return
        }

        if (setorInstance.hasErrors()) {
            respond setorInstance.errors, view:'create'
            return
        }

        setorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.created.message', args: [message(code: 'setor.label', default: 'Setor'), setorInstance.nome])
                if (params['forwardURL']) {
                    redirect (uri:params['forwardURL'])
                } else {
                    redirect setorInstance
                }
                
            }
            '*' { respond setorInstance, [status: CREATED] }
        }
    }

    def edit(Setor setorInstance) {
        respond setorInstance
    }

    @Transactional
    def update(Setor setorInstance) {
        if (setorInstance == null) {
            notFound()
            return
        }

        if (setorInstance.hasErrors()) {
            respond setorInstance.errors, view:'edit'
            return
        }

        setorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Setor.label', default: 'Setor'), setorInstance.nome])
                redirect setorInstance
            }
            '*'{ respond setorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Setor setorInstance) {

        if (setorInstance == null) {
            notFound()
            return
        }

        setorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-warning"
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Setor.label', default: 'Setor'), setorInstance.nome])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'setor.label', default: 'Setor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
