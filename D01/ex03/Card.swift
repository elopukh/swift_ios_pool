//
//  Card.swift
//  
//
//  Created by Ekateryna LOPUKH on 2/4/20.
//

import Foundation
class Card:NSObject
{
    var color:Color
    var value:Value
    init(color:Color, value:Value) {
        
        
        self.color = color
        self.value = value
    }
    override var description: String
    {
        return("Card color is \(color), card value is \(value)")
    }
    override func isEqual(_ object: Any?) -> Bool
    {
        if let obj = object as? Card{
            return (obj.color == color && obj.value == value)
        }
        return false
    }
    
    
}
func ==(first: Card, second: Card) -> Bool {
    return (first.color == second.color && first.value == second.value)}
