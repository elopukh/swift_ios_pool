//
//  tests.swift
//  
//
//  Created by Ekateryna LOPUKH on 2/4/20.
//

let firstCard = Card(color: Color.Clubs,value: Value.two)
let secondCard = Card(color:Color.Clubs,value:Value.two)
let thirdCard = Card(color:Color.Diamonds,value:Value.five)
if firstCard.isEqual(secondCard)
{
    print("Cards are equal")
}
print(firstCard == secondCard)

