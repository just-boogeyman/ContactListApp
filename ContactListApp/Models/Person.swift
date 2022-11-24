//
//  Person.swift
//  ContactListApp
//
//  Created by Ярослав Кочкин on 22.11.2022.
//


// MARK: - Persone model
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    var fullName: String {
        name + " " + surname
    }
}



extension Person {
    static func getPersons() -> [Person] {
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phone = DataStore.shared.phone.shuffled()
        let email = DataStore.shared.email.shuffled()
        var persons: [Person] = []
        
        for index in 0..<names.count {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                phone: phone[index],
                email: email[index]
            ))
        }
        return persons
    }
}
