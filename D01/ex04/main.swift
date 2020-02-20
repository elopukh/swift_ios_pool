//
//  tests.swift
//  
//
//  Created by Ekateryna LOPUKH on 2/4/20.
//

var testCards :Deck = Deck(mixed: true)
var card1: Card
card1 = testCards.draw()!
print(testCards)
print(testCards.outs)
testCards.fold(c:card1)
print(testCards.discards)
print(testCards.outs)
//for i in testDeck.outs {
//    print("outs[i] = \(i)")
//}
//print("")
//testDeck.fold(c: testDeck.outs[0])
//for i in testDeck.discards {
//    print("discards[i] = \(i)")
//}

