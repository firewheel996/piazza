package org.bef

class Donation {
    
    String type
    String name
    String streetAddress, city, state, zip
    String email
    String phone
    String paymentType
    String specialInstructions
    String firstRow,secondRow,thirdRow,fourthRow
    String cardNumber, securityCode
    Date expirationDate = new Date()
    boolean payed = false
    Date orderDate = new Date()
    Date fillDate = null
    Filler filler = null

    static constraints = { 
       type inList: ["Brick", "Paver", "Bench"]
       importFrom Filler, include:["firstRow","secondRow","thirdRow","fourthRow"]
       
       name blank: false
       streetAddress blank: false
       city blank: false
       state blank: false
       zip blank: false, size: 5..9
       phone size: 7..10, nullable: true
       email email: true, blank: false
       specialInstructions maxSize: 1000, nullable: true
       paymentType inList: ["Mastercard","Visa","Check"]
       cardNumber nullable: true, validator: {val,obj ->
           obj.paymentType == "Check" || val != null
        }
       securityCode nullable: true, validator: {val,obj ->
           if(obj.paymentType == "Check") {return val == null}
           else {return val?.toString()?.length == 3}
        }
       expirationDate nullable: true, attributes: [precision: "month"], validator: {val, obj ->
           obj.paymentType == "Check" || val > new Date()
        }
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
