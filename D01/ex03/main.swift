//
//  tests.swift
//  
//
//  Created by Ekateryna LOPUKH on 2/4/20.
//

var testCards = Deck.allCards
for elem in testCards {
    print(elem)
}
testCards.shuffle()
for elem in testCards {
    print(elem)
}
