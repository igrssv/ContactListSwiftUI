//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 19.01.2022.
//

import Foundation

class DataManager {
    static var shared = DataManager()

    let names = [
        "Tony", "Harry", "Ron", "Stvien",
        "Ivan", "Sonya", "Vong", "Stas",
        "Jon", "Tim"
    ]
    let lastNames = [
        "Cook", "Stark", "Potter", "Strange",
        "Perlman", "Blade", "Chan", "Asafiev",
        "Pim", "Groznyi"
    ]
    let mails = ["@gmail.com", "@live.com", "@ya.ru", "@mail.ru"]
    let operatorNumber = ["8999", "8927", "8977", "8966"]
    let number = Int.random(in: 111111...999999)
    
    
    init () {}
}
