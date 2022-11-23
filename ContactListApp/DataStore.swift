//
//  DataStore.swift
//  ContactListApp
//
//  Created by Ярослав Кочкин on 22.11.2022.
//

import Foundation
import UIKit

// MARK: - DataStore Services

class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven"
    ]
    var surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins"
    ]
    var phone = [
        "+13979141",
        "+32179141",
        "+45379141",
        "+98279141",
        "+77779141"
    ]
    var email = [
        "Smith@mail.ru",
        "Aaron@mail.ru",
        "Tim@mail.ru",
        "Ted@mail.ru",
        "Steven@mail.ru"
    ]
}
