package sc.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IgrejaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Igreja.list(params), model:[igrejaInstanceCount: Igreja.count()]
    }

    def show(Igreja igrejaInstance) {
        respond igrejaInstance
    }

    def create() {
        respond new Igreja(params)
    }

    @Transactional
    def save(Igreja igrejaInstance) {
        if (igrejaInstance == null) {
            notFound()
            return
        }

        if (igrejaInstance.hasErrors()) {
            respond igrejaInstance.errors, view:'create'
            return
        }

        igrejaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'igreja.label', default: 'Igreja'), igrejaInstance.id])
                redirect igrejaInstance
            }
            '*' { respond igrejaInstance, [status: CREATED] }
        }
    }

    def edit(Igreja igrejaInstance) {
        respond igrejaInstance
    }

    @Transactional
    def update(Igreja igrejaInstance) {
        if (igrejaInstance == null) {
            notFound()
            return
        }

        if (igrejaInstance.hasErrors()) {
            respond igrejaInstance.errors, view:'edit'
            return
        }

        igrejaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Igreja.label', default: 'Igreja'), igrejaInstance.id])
                redirect igrejaInstance
            }
            '*'{ respond igrejaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Igreja igrejaInstance) {
        println params
        if (igrejaInstance == null) {
            notFound()
            return
        }

        if (Pessoa.findByIgreja(igrejaInstance)) {
            println "Delete $igrejaInstance cannot!"
            flash.type = "alert-danger"
            flash.message = "Existem pessoas nesta igreja!\n Mova elas para outra igreja antes de remover a igreja $igrejaInstance!"
            redirect igrejaInstance
            return
        }

        igrejaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Igreja.label', default: 'Igreja'), igrejaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'igreja.label', default: 'Igreja'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
