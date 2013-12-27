package org.bef

class Filler implements Comparable {
    
    String donator
    String type
    boolean specialPlacement = false
    boolean filled = false
    byte[] photo
    int x
    int y
    int length
    int height
    
    String firstRow
    String secondRow
    String thirdRow
    String fourthRow
    
    static searchable = true

    static constraints = {
        
        type inList: ["Brick", "Paver", "Bench"]
        donator nullable: true
        x min: 0
        y min: 0
        length range: 1..6
        height range: 1..3
        firstRow shared: "rows"
        secondRow shared: "rows", validator: {val, obj ->
            return obj.type !="Bench"
        }
        thirdRow shared: "paver"
        fourthRow shared: "paver"
        photo nullable: true
    }
    
    static belongsTo = [section: Section]
    
    int compareTo(obj){
        if(obj.y == y){return x.compareTo(obj.x)}
        y.compareTo(obj.y)
    }
    
    String toString(){
        def result
        result = (firstRow ? firstRow : "Filler: ${id}")
        if(secondRow) {result += "\n${secondRow}"}
        if(thirdRow) {result += "\n${thirdRow}"}
        if(fourthRow){result += "\n${fourthRow}"}
        
        if(!result){return super.toString()}
        return result
    }
}