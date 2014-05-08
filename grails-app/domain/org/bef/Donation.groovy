package org.bef

class Donation {
    
    String type
    String name
    String email
    String phone
    String paymentType
    String specialInstructions
    boolean payed = false
    Date orderDate = new Date()
    Date fillDate = null
    Filler filler

    static constraints = {
       type inList: ["Brick", "Paver", "Bench"]
       name blank: false
       email email: true, blank: false
       phone size: 7..10, nullable: true
       specialInstructions maxSize: 1000, nullable: true
       payed display: false
       orderDate display: false
       filler nullable: true, display: false
       fillDate nullable: true, display: false
       
    }
    
    static unfilled = where{
        payed
        fillDate == null
    }
}
