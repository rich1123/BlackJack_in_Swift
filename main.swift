//
//  main.swift
//  blackjack
//
//  Created by rich on 4/29/20.
//  Copyright © 2020 rich. All rights reserved.
//

import Foundation

//# import unittest
//from card_detail import hand_val as hv
//# from card_detail import blackjack as bj
//import random
//import numpy as np
//import sys


var comp_hand: [String: Int] = [:]

var player_hand: [String: Int] = [:]

var undealt: [String: Int] = [:]

let faces = ["H", "S", "D", "C"]

let deck = [("A", 1), ("2", 2), ("3", 3), ("4", 4),("5", 5), ("6", 6), ("7", 7), ("8", 8), ("9", 9), ("10", 10), ("J", 10), ("Q", 10), ("K", 10)]
//deck build

for suit in faces {
    
    for (face, value) in [("A", 1), ("2", 2), ("3", 3), ("4", 4),("5", 5), ("6", 6), ("7", 7), ("8", 8), ("9", 9), ("10", 10), ("J", 10), ("Q", 10), ("K", 10)] {
            let name = String(format: "\(face) of \(suit)")
            undealt[name] = value
    }
}

func move_card(from_hand: Dictionary <String, Int>, to_hand: Dictionary <String, Int>, card: String) {
    var to_hand.updateValue(card) = from_hand.pop(card)
}


func mv_random_card(to_hand: [String: Int]) {
    var random_card = random.choice(list(undealt.keys()))
    move_card(undealt, to_hand, random_card)
}

func comp_build(c_card: (String: Int)) -> Dictionary {
    var comp_hand.update(c_card)
    return comp_hand
}

var comp_hand = comp_build(c_card: <#T##(Int)#>)

func player_build(p_card: (String: Int)) {
    var player_hand.update(p_card)
    return player_hand
}

func show_status() {
    print("Dealer's show card ...\({next(iter(comp_hand))})\n")
    print("Player showing .......\(player_hand)\n")
}

func winner() {
    if hv(comp_hand) == hv(player_hand) {
        //self.dealer_play(hv(comp_hand))
        print("That's a draw.\n")
        new_round()
    }
    if hv(comp_hand) > hv(player_hand) {
        print("Dealer's high \(hv(comp_hand)) to \(hv(player_hand))... Loser!!!\n")
        new_round()
    }
    else hv(comp_hand) < hv(player_hand) {
        print("Dealer's low \(hv(comp_hand)) to \(hv(player_hand))... Winner!!!\n")
        new_round()
    }}

class Hit {
    pass

    func input_player_action(self) {
      //
        //:rtype: object
        //"""
//    var action = input("[H]it, [S]tand, or [Q]uit \n").upper()  python version for user input
        print("[H]it, [S]tand, or [Q]uit \n", terminator: ".")
        let action = readLine()
    if action == "H"{
            mv_random_card(player_hand)
            print(f"{player_hand}...And you're holding {hv(player_hand)}\n")
            blackjack(hv(player_hand))
            Hit.input_player_action(self)
        }
    elif action == "Q" {
            print("goodbye")
            sys.exit(0)
    }
    elif action == "S" {
            print(f"...Dealers showing ...{hv(comp_hand)}")
            print(f"...And you're holding {hv(player_hand)}\n")
            Hit.dealer_play(self, hv(comp_hand))}
    }
    }
    
    func dealer_play(self, v_sum: int){
        if v_sum < 15:
            mv_random_card(comp_hand)
            print(f"Dealers showing {hv(comp_hand)}\n")
            Hit.dealer_play(self, hv(comp_hand))
        if v_sum in range(15, 22):
            # print(f"Dealers showing {hv(comp_hand)}")
            winner()
        if v_sum > 21:
            print(f"Dealer busts {hv(comp_hand)}... Winner!!!\n")
}
}

    func blackjack(v_sum: int){
    if v_sum > 21 {
        print(f"You busted:..... {v_sum}\n")
        new_round()
    }
    if v_sum == 21 {
        print(f"BlackJack!!!.... {v_sum}\n")
        new_round()
    else {
        pass
    }

    func new_round() {
    print("Let's play again...\n")
    undeal_cards(player_hand)
    undeal_cards(comp_hand)
    mv_random_card(player_hand)
    mv_random_card(player_hand)
    mv_random_card(comp_hand)
    mv_random_card(comp_hand)
    show_status()
    }

func undeal_cards(hand: dict) {
var cards: ListFormatter = list(hand.keys())
for card in cards{
        move_card(hand, undealt, card)
}

    func main(self=None) {
    # print(undealt)
    print("\nWELCOME TO THE BLACKJACK TABLE")
    mv_random_card(player_hand)
    mv_random_card(comp_hand)
    mv_random_card(player_hand)
    mv_random_card(comp_hand)
    show_status()
    # print(len(undealt))
    Hit.input_player_action(self)
    new_round()
    print("flag main")
while True {
        // show_status()
        Hit.input_player_action(self)
}
    # comp_build(c_card=tuple)
    # c_hand_val(comp_hand)
    # player_build()
    # p_hand_val()
    # hands()
    }

if __name__ == '__main__':
    main()
