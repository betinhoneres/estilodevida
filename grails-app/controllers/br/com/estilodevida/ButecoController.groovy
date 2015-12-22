package br.com.estilodevida



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ButecoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Buteco.list(params), model:[butecoInstanceCount: Buteco.count()]
    }

    def show(Buteco butecoInstance) {
        respond butecoInstance
    }

    def create() {
        respond new Buteco(params)
    }

    @Transactional
    def save(Buteco butecoInstance) {
        if (butecoInstance == null) {
            notFound()
            return
        }

        if (butecoInstance.hasErrors()) {
            respond butecoInstance.errors, view:'create'
            return
        }

        butecoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buteco.label', default: 'Buteco'), butecoInstance.id])
                redirect butecoInstance
            }
            '*' { respond butecoInstance, [status: CREATED] }
        }
    }

    def edit(Buteco butecoInstance) {
        respond butecoInstance
    }

    @Transactional
    def update(Buteco butecoInstance) {
        if (butecoInstance == null) {
            notFound()
            return
        }

        if (butecoInstance.hasErrors()) {
            respond butecoInstance.errors, view:'edit'
            return
        }

        butecoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Buteco.label', default: 'Buteco'), butecoInstance.id])
                redirect butecoInstance
            }
            '*'{ respond butecoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Buteco butecoInstance) {

        if (butecoInstance == null) {
            notFound()
            return
        }

        butecoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Buteco.label', default: 'Buteco'), butecoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buteco.label', default: 'Buteco'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
