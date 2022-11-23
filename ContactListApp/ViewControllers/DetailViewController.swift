//
//  ViewController.swift
//  ContactListApp
//
//  Created by Ярослав Кочкин on 22.11.2022.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var phoneLable: UILabel!
    @IBOutlet weak var mailLable: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    // MARK: - Private metods
    private func prepareView() {
        navigationItem.title = person.fullName
        phoneLable.text = "\(person.phone)"
        mailLable.text = "\(person.email)"
    }
}

