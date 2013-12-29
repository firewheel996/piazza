package org.bef

class MappingTagLib {
    
    static namespace = "map"
    def fillerService
    
    def table = { attrs ->
        
        out << "<table border=\"1\">\n"
        out << "<tr>\n<th></th>\n"
        def fillers = attrs.from        
        def offX = (attrs.offX != null) ? attrs.offX : 0
        def offY = (attrs.offY != null) ? attrs.offY : 0
        def maxX = fillerService.findMaxX(fillers, offX)
        def maxY = fillerService.findMaxY(fillers, offY)
        Filler[][] grid = fillerService.organizeSet(fillers, offX, offY)
        
        boolean[] supportArray = new boolean[maxX+1]
        
        for(int i = 0; i < maxX; i++){
            out << "<th> ${i} </th>\n"
        }
        for(int row = 0; row < grid.length; row++)
        {
            //log.info(row)
            out << "</tr>\n"
            out << "<tr>\n"
            out << "<th>${row}</th>"
            
            for(int col = 0; col < grid[row].length; col++){
                
                Filler filler = grid[row][col]
                if(!filler){
                    
                        out << "<td>    </td>"
                }
                
                else{
                    if(filler.height == 2){
                        out << "<td>Tall</td>"
                    }
                    else{
                        out<< "<td>Wide</td>"
                    }
                    
                }
               
            }
            
        }
            
        
        out << "</tr>\n</table>"
    }

}
