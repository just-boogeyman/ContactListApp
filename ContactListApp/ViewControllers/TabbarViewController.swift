//
//  TabbarViewController.swift
//  ContactListApp
//
//  Created by Ярослав Кочкин on 24.11.2022.
//

import UIKit

class TabbarViewController: UITabBarController {

    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let firstVC = viewController as? PersonViewController {
                firstVC.persons = persons
            } else if let seccondVC = viewController as? PersonDetailViewController {
                seccondVC.persons = persons
            }
        }
    }
}
