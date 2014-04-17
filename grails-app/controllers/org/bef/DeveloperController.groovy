package org.bef

class DeveloperController {
    
    def index(){
        redirect(action:'devDisplay')
    }
    
    def fillerService

    def devDisplay(){
        [fillers: Filler.list()]
    }
    
    def addBrickAjax(){
        try{
            def filler = fillerService.createBrick(params.id as Long,
                params.x as int, params.y as int, 
                params.orientation == "0")
            
            render(template: "table", model: [fillers: Filler.list(), offX: 0, offY: 0])
        }
        catch(FillerException fe){
            render{
                div(class: "errors", fe.message)
            }
        }
    }
    
    def generateRow(){
        [filler: Filler.list()]
    }
    
    def addRowAjax(){
        try{
            def secID = params.id
            //log.info(secID)
            def section = Section.get(secID)
            fillerService.generateBrickRow(params.row as int, section)
            
            render(template: "table", model: [fillers: Filler.list(), offX: 0, offY: 0])
        
        }
        catch(FillerException fe){
            render{
                div(class:"errors", fe.message)
            }
         
        }
    }  
}