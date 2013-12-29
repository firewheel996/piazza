package org.bef

import org.springframework.dao.DataIntegrityViolationException

class FillerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def fillerService

          
    def index() {
        redirect(action: "list", params: params)
    }
    
   def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [fillerInstanceList: Filler.list(params), fillerInstanceTotal: Filler.count()]
    }

    def create() {
        [fillerInstance: new Filler(params)]
    }

    def save() {
        def fillerInstance = new Filler(params)
        if (!fillerInstance.save(flush: true)) {
            render(view: "create", model: [fillerInstance: fillerInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'filler.label', default: 'Filler'), fillerInstance.id])
        redirect(action: "show", id: fillerInstance.id)
    }

    def show(Long id) {
        def fillerInstance = Filler.get(id)
        if (!fillerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filler.label', default: 'Filler'), id])
            redirect(action: "list")
            return
        }

        [fillerInstance: fillerInstance]
    }

    def edit(Long id) {
        def fillerInstance = Filler.get(id)
        if (!fillerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filler.label', default: 'Filler'), id])
            redirect(action: "list")
            return
        }

        [fillerInstance: fillerInstance]
    }

    def update(Long id, Long version) {
        def fillerInstance = Filler.get(id)
        if (!fillerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filler.label', default: 'Filler'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (fillerInstance.version > version) {
                fillerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'filler.label', default: 'Filler')] as Object[],
                          "Another user has updated this Filler while you were editing")
                render(view: "edit", model: [fillerInstance: fillerInstance])
                return
            }
        }

        fillerInstance.properties = params

        if (!fillerInstance.save(flush: true)) {
            render(view: "edit", model: [fillerInstance: fillerInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'filler.label', default: 'Filler'), fillerInstance.id])
        redirect(action: "show", id: fillerInstance.id)
    }

    def delete(Long id) {
        def fillerInstance = Filler.get(id)
        if (!fillerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filler.label', default: 'Filler'), id])
            redirect(action: "list")
            return
        }

        try {
            fillerInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'filler.label', default: 'Filler'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'filler.label', default: 'Filler'), id])
            redirect(action: "show", id: id)
        }
    }
    
    def nukeSetup(){}
    
    def massDelete(){
        def allFillers = Filler.findAllByIdGreaterThanEquals(params.low)
        def fillerCount = allFillers.size
        allFillers.each{
            if(!fillerService.delete(it.id)){
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'filler.label', default: 'Filler'), it.id])
                redirect (action: "nukeSetup")
            }
        }
        flash.message = "Mass delete completed. Deleted: ${fillerCount} Fillers"
        redirect (action: "list")
    }
    
    def genSetup(){
        [section: params.section]
    }
    def generate(){
        def secID = params.section
        def section = Section.get(secID)
        if(!section){
            redirect(action: "genSetup", params: params)
        }
        
        int start = Integer.parseInt(params.start)
                
        for(int i = 0; i < params.numRows; i++){
            if(!fillerService.generateBrickRow(start+i, section)){
                redirect(action: "genSetup") 
            }
        }
            
        redirect(action: "list")
    }
}
