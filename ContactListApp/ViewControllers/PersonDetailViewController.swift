//
//  PersonDetailViewController.swift
//  ContactListApp
//
//  Created by Ярослав Кочкин on 22.11.2022.
//

import UIKit

class PersonDetailViewController: UITableViewController {

    private let persons = Person.getPersons()
    private let countCell = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
}


extension PersonDetailViewController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countCell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = persons[section].fullName
        return section
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0 ?
        person.phone : person.email
        content.image = indexPath.row == 0 ?
        UIImage(named: "phone") : UIImage(named: "email")
        cell.contentConfiguration = content
        return cell
    }
}

