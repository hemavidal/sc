package sc.model

import sc.acesso.Usuario
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.util.Random

@Transactional(readOnly = true)
class PessoaController {
    Random randomGenerator = new Random()

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        respond Pessoa.list(params), model:[pessoaCount: Pessoa.count()]
    }

    def show(Pessoa pessoa) {
        respond pessoa
    }

    def create() {
        Pessoa pessoa = new Pessoa(params)
        if (params.grupoCaseiroId) {
            def grupoCaseiro = GrupoCaseiro.findById(params.grupoCaseiroId)
            pessoa.grupoCaseiro = grupoCaseiro
        }
        respond pessoa
    }

    @Transactional
    def save(Pessoa pessoa) {
        println params
        if (pessoa == null) {
            notFound()
            return
        }

        if (pessoa.hasErrors()) {
            flash.type = "alert-danger"
            respond pessoa.errors, view:'create'
            return
        }
        def usuario = null
        if (pessoa.email) {
            usuario = new Usuario(login:pessoa.email, senha:"sc_" + randomGenerator.nextInt(5000)).save(flush:true)
        } else {
            usuario = new Usuario(login:pessoa.nome.trim().split(' ')[0].toLowerCase()+randomGenerator.nextInt(5000), senha:"sCadastroIgreja2016").save(flush:true) 
        }
        pessoa.usuario = usuario
        pessoa.save flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.created.message', args: [message(code: 'pessoa.label', default: 'Pessoa'), pessoa])
                redirect pessoa
            }
            '*' { respond pessoa, [status: CREATED] }
        }
    }

    def edit(Pessoa pessoa) {
        respond pessoa
    }

    @Transactional
    def update(Pessoa pessoa) {
        if (pessoa == null) {
            notFound()
            return
        }

        if (pessoa.hasErrors()) {
            flash.type = "alert-danger"
            respond pessoa.errors, view:'edit'
            return
        }

        pessoa.save flush:true

        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pessoa.label', default: 'Pessoa'), pessoa])
                redirect pessoa
            }
            '*'{ respond pessoa, [status: OK] }
        }
    }

    @Transactional
    def delete(Pessoa pessoa) {

        if (pessoa == null) {
            notFound()
            return
        }
        pessoa.usuario.delete flush:true
        pessoa.delete flush:true


        request.withFormat {
            form multipartForm {
                flash.type = "alert-success"
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pessoa.label', default: 'Pessoa'), pessoa])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.type = "alert-danger"
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pessoa.label', default: 'Pessoa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
