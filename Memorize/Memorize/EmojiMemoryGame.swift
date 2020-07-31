//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fitz Wong on 31/7/2020.
//  Copyright © 2020 Ph3ngz0r. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var game: MemoryGame<String> = EmojiMemoryGame.createEmojiMemoryGame() // model
    
    static func createEmojiMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐭", "🐮", "🐯", ]// "🐰", "🐲", "🐍", "🐴", "🐑", "🐵", "🐔", "🐶", "🐷"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]}
    }
    
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
