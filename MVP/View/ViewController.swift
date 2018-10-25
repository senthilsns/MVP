//
//  ViewController.swift
//  MVP
//
//  Created by SENTHIL on 25/10/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,InfoDelegate {
    
    @IBOutlet var firstnameField: UITextField!
    @IBOutlet var lastnameField: UITextField!
    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var presenter: InfoPresenter?
    
    @IBAction func showAction(_ sender: Any) {
        
        // Model
        let model = InfoModel(firstName:firstnameField.text!, lastName: lastnameField.text!)
        // Presenter
        presenter?.showMessage(firstName: model.firstName, lastName: model.lastName)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "MVP"

        self.presenter = InfoPresenter(delegate: self as InfoDelegate)
    }

    //MARK: Info Delegate
    func didSuccess(welcomeMsg:String) {
      // Success
        print(welcomeMsg)
        // View
        welcomeMessageLabel.text = welcomeMsg
    }
    
    func didFailed(Message:String) {
        print("Error -> \(Message)")
    }

}

