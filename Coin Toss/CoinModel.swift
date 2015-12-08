//
//  CoinModel.swift
//  Coin Toss
//
//  Created by Paul Wochnick on 12/7/15.
//  Copyright © 2015 Paul Wochnick. All rights reserved.
//

import GameKit

struct CoinModel {

    let coinSides = [
        "Heads",
        "Tails"
    ]
    
    func getRandomCoinToss() -> String {
        
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(coinSides.count)
        
        return coinSides[randomNumber]
        
    }
}