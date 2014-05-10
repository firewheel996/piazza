package org.bef

class DeveloperController {
    
    def index(){
        redirect(action:'devDisplay')
    }
    
    def fillerService

    def devDisplay(){
        [fillers: Filler.list()]
    }
    
    def fillDonation(){
        def donations = Donation.unfilled.list(sort:"orderDate")
        [candidates: donations]
    }
    
    def autoPlaceDonation(){
        def donation = Donation.get(params.id)
        if(!donation){
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'donation.label', default: 'Donation'), params.id])
        }
        if(donation.type == "Brick"){
            
        }
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
    
    def customRow(){
        [filler: Filler.list()]
    }
    def customRowAjax(){
        try{
            def secID = params.id
            //log.info(secID)
            def section = Section.get(secID)
            fillerService.generateCustomBrickRow(section,params.row,
                    params.orientation,params.startCol,params.rowLen)
                
            render(template: "table", model: [fillers: Filler.list(), offX: 0, offY: 0])
        }
        catch(FillerException fe){
            render{
                div(class:"errors", fe.message)
            }
         
        }
    }
    
    def editMessage(){
        
        [filler: Filler.list()]
    }
    
    def editMessageAjax(){
        
        def filler = Filler.get(params.id)
        if(!filler){
            render{
                div(class:"errors", "Filler does not exist")
            }
        }
        filler.firstRow = params?.row1
        filler.secondRow = params?.row2
        if(filler.save()){
            render(template: "table", model: [fillers: Filler.list(), offX: 0, offY: 0])
        }
        else{
            render{
                div(class:"errors","Problem saving filler")
            }
        }
        
    }
}
