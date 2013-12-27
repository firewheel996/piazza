package org.bef

class Section {
    
    String designation
    byte[] photo
    int offsetX = 0
    int offsetY = 0
    SortedSet fillers
    
    static hasMany = [fillers: Filler]

    static constraints = {
        designation unique: true, blank: false, size: 1..10
        offsetX min: 0
        offsetY min: 0
        photo nullable: true
        fillers nullable: true
    }
    
    String toString(){
        designation
    }
}
