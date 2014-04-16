package org.bef

import org.springframework.dao.DataIntegrityViolationException

class FillerException extends RuntimeException{
    String message
    Filler filler
}

class FillerService {
    boolean transactional = true

    int findMaxX(List collection, int offset){
        
        int hold, max = 0
        collection.each{
            if((hold = (it.x + it.length - offset)) > max){max = hold}
        }
        
        return max
    }
    
    int findMaxX(Set collection, int offset){
        
        int hold, max = 0
        collection.each{
            if((hold = (it.x + it.length - offset)) > max){max = hold}
        }
        
        return max
    }
    
    int findMaxY(List collection, int offset){
        
        int hold, max = 0
        collection.each{
            if((hold = (it.y + it.height - offset)) > max){max = hold}
        }
        
        return max
    }
    
    int findMaxY(Set collection, int offset){
        
        int hold, max = 0
        collection.each{
            if((hold = (it.y + it.height - offset)) > max){max = hold}
        }
        
        return max
    }
    
    
    Filler[][] organizeSet(Set fillers, int offsetX, int offsetY){
        
        Filler[][] grid = new Filler[findMaxX(fillers, offsetX)][findMaxY(
            fillers, offsetY)]
    
        fillers.each{
            grid[it.x][it.y] = it
        }
        
        return grid
    }
    
    Filler[][] organizeSet(ArrayList fillers, int offsetX, int offsetY){
        
        Filler[][] grid = new Filler[findMaxY(fillers, offsetY)][findMaxX(
            fillers, offsetX)]
    
        fillers.each{
            //log.info("ID:${it.id}  X: ${it.x}  Y: ${it.y}")
            grid[it.y][it.x] = it
        }
        
        return grid
    }
    
    private Filler generateLong(int x, int y){
        return new Filler(donator: "Placeholder", x: x, y: y, length: 2,
            height: 1, type:"Brick")
    }
    
    private Filler generateTall(int x, int y){
        return new Filler(donator: "Placeholder", x: x, y: y, length: 1,
            height: 2, type:"Brick")
    }
    
    void generateBrickRow(int rowNum, Section sec){
        //log.info(sec)
        if(sec){
            int determinant = (rowNum + 1) % 4
            log.info(determinant)
            if(determinant == 0){
                sec.addToFillers(generateLong(0, rowNum))
                sec.addToFillers(generateTall(3, rowNum))
                sec.addToFillers(generateLong(4, rowNum))
                sec.addToFillers(generateTall(7, rowNum))
                sec.addToFillers(generateLong(8, rowNum))
                sec.addToFillers(generateTall(11, rowNum))
                sec.addToFillers(generateLong(12,rowNum))
                sec.addToFillers(generateTall(5,rowNum))
                sec.addToFillers(generateLong(16,rowNum))
            }
            else if(determinant == 1){
                sec.addToFillers(generateTall(0, rowNum))
                sec.addToFillers(generateLong(1, rowNum))
                sec.addToFillers(generateTall(4, rowNum))
                sec.addToFillers(generateLong(5, rowNum))
                sec.addToFillers(generateTall(8, rowNum))
                sec.addToFillers(generateLong(9,rowNum))
                sec.addToFillers(generateTall(12,rowNum))
                sec.addToFillers(generateLong(13,rowNum))
                sec.addToFillers(generateTall(16,rowNum))
                sec.addToFillers(generateLong(17,rowNum))
            }
            else if(determinant == 2) {
                sec.addToFillers(generateTall(1, rowNum))
                sec.addToFillers(generateLong(2, rowNum))
                sec.addToFillers(generateTall(5, rowNum))
                sec.addToFillers(generateLong(6, rowNum))
                sec.addToFillers(generateTall(9, rowNum))
                sec.addToFillers(generateLong(10,rowNum))
                sec.addToFillers(generateTall(13,rowNum))
                sec.addToFillers(generateLong(14,rowNum))
                sec.addToFillers(generateTall(17,rowNum))
            }
            else{
                sec.addToFillers(generateTall(2, rowNum))
                sec.addToFillers(generateLong(3, rowNum))
                sec.addToFillers(generateTall(6, rowNum))
                sec.addToFillers(generateLong(7, rowNum))
                sec.addToFillers(generateTall(10, rowNum))
                sec.addToFillers(generateLong(11,rowNum))
                sec.addToFillers(generateTall(14,rowNum))
                sec.addToFillers(generateLong(15,rowNum))
                sec.addToFillers(generateTall(18,rowNum))
                
            }

            if(sec.save()){
                return
            }
            else{
                throw new FillerException(
                message: "Something went wrong")
            }
        }
        else{
            log.info("Invalid Section: ${sec}")
            throw new FillerException(message:
            "Invalid Section")
        }
    }
    
    def getConstraintNames(){
        Set names
        def fill = Filler.get(1)
        for(constraint in fill.constraints){
            names.add(constraint.name)
        }
        return names
    }
    
    boolean delete(Long id){
        def filler = Filler.get(id)
        if(!filler){
            return false
        }
        else{
            try{
                filler.delete(flush:true)
                return true
            }
            catch(DataIntegrityViolationException e){
                return false
            }
        }
    }
    
    Filler createBrick(Long secID, int x, int y, boolean orientation){
        def sec = Section.get(secID)
        if(sec){
            Filler filler
            if(orientation){
                filler = generateLong(x,y)
            }
            else{
                filler = generateTall(x,y)
            }
            sec.addToFillers(filler)
            if(sec.save()){
                return filler
            }
            else{
                throw new FillerException(
                message: "Invalid Filler", filler: filler)
            }
        }
        throw new FillerException(message: "Invalid Section")
    }
}
