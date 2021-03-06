package org.bef

class UIController {
    def fillerService

    def index(){
        redirect(action:'displayAll')
    }
    
    def displayAll(){
        render(view: 'display', model: [fillers: Filler.getAll(),
                    offx: 0, offy: 0])
    }
    
    def display(){}
    
    
    
    def displaySection(Long id){
        [section: Section.get(id)]
    }
    
    def search(){
        log.info('Entered search controller, making page...')
        return
    }
    
    def getRows(){}
    
    def displayRows(){
        def high = params.high
        def low = params.low
        def list = Filler.findAllByY(low)
        while(low<high){
            low++
            list += Filler.findAllByY(low)
        }
        [fillers: list]
    }
    
    def result(){
        log.info("result triggered, doing query: " +"field: ${params.field}, "
        +"val: ${params.val}")
        
        def val
        try{ val = Integer.parseInt(params.val) }
        catch(NumberFormatException){ val = params.val }
        
        def results = Filler.findAllWhere("${params.field}": val)
        log.info("found query resluts" + results)
        if(!results){
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filler.label', default: 'Filler')])
            log.info('nothing found, redirecting...')
            redirect(view: "search")
            return
        }
        if(results.size == 1){
            redirect(action: "show", controller: "filler", id: results.first().id)
            log.info('only one result, redirecting...')
            return
        }
        log.info('more than one result, putting info on page...')
        return [results: results, resultTotal: results.size]
    }
}
