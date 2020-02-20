//
//  Deck.swift
//  
//
//  Created by Ekateryna LOPUKH on 2/4/20.
//
import Foundation
class Deck:NSObject{
    static let allSpades:[Card] = Value.allValues.map {Card(color:Color.Spades, value:$0)}
    static let allDiamonds:[Card] = Value.allValues.map {Card(color:Color.Diamonds, value:$0)}
    static let allHearts:[Card] = Value.allValues.map {Card(color:Color.Hearts, value:$0)}
    static let allClubs:[Card] = Value.allValues.map {Card(color:Color.Clubs, value:$0)}
    static let allCards:[Card] = allSpades + allDiamonds + allHearts + allClubs
    var cards: [Card] = allCards
    var discards: [Card] = []
    var outs: [Card] = []
    init(mixed: Bool) {
        self.cards = Deck.allCards
        if mixed == false {
            self.cards.shuffle()
        }
    }
    override var description: String {
        return (self.cards.description)
    }
    func  draw () -> Card?
    {
        let firstcard = self.cards.first
        self.outs.append(firstcard!)
        self.cards.remove(at:0)
        return firstcard
    }
    func fold (c: Card)
    {
        var j = 0
        for i in self.outs {
            if c == i {
                self.discards.append(i)
                self.outs.remove(at:j)
            }
            j = j + 1
        }
    }
    }
extension  Array
{
    mutating func shuffle() {
        for i in  0..<self.count {
            let n = Int(arc4random_uniform(UInt32(self.count)))
            self.swapAt(i, n)
    }
    }
}
