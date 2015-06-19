package sc.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GrupoCaseiroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GrupoCaseiro.list(params), model:[grupoCaseiroInstanceCount: GrupoCaseiro.count()]
    }

    def show(GrupoCaseiro grupoCaseiroInstance) {
        respond grupoCaseiroInstance
    }

    def create() {
        respond new GrupoCaseiro(params)
    }

    @Transactional
    def save(GrupoCaseiro grupoCaseiroInstance) {
        if (grupoCaseiroInstance == null) {
            notFound()
            return
        }

        if (grupoCaseiroInstance.hasErrors()) {
            respond grupoCaseiroInstance.errors, view:'create'
            return
        }

        grupoCaseiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'grupoCaseiro.label', default: 'GrupoCaseiro'), grupoCaseiroInstance.id])
                redirect grupoCaseiroInstance
            }
            '*' { respond grupoCaseiroInstance, [status: CREATED] }
        }
    }

    def edit(GrupoCaseiro grupoCaseiroInstance) {
        respond grupoCaseiroInstance
    }

    @Transactional
    def update(GrupoCaseiro grupoCaseiroInstance) {
        if (grupoCaseiroInstance == null) {
            notFound()
            return
        }

        if (grupoCaseiroInstance.hasErrors()) {
            respond grupoCaseiroInstance.errors, view:'edit'
            return
        }

        grupoCaseiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GrupoCaseiro.label', default: 'GrupoCaseiro'), grupoCaseiroInstance.id])
                redirect grupoCaseiroInstance
            }
            '*'{ respond grupoCaseiroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GrupoCaseiro grupoCaseiroInstance) {

        if (grupoCaseiroInstance == null) {
            notFound()
            return
        }

        grupoCaseiroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GrupoCaseiro.label', default: 'GrupoCaseiro'), grupoCaseiroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoCaseiro.label', default: 'GrupoCaseiro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
