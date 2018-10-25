//
//  InfoPresenter.swift
//  MVP
//
//  Created by SENTHIL on 25/10/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

protocol InfoDelegate {
    
    func didSuccess(welcomeMsg:String)
    func didFailed(Message:String)
}

class InfoPresenter {
    
    var delegate : InfoDelegate
    
    init(delegate: InfoDelegate) {
        self.delegate = delegate
    }
    
    func showMessage(firstName:String,lastName:String) {
        
        if firstName.isEmpty {
            self.delegate.didFailed(Message: "First Name Field Empty")
            return
        }
        
        if lastName.isEmpty {
            self.delegate.didFailed(Message: "Last Name Field Empty")
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            let message:String = "Hello " + firstName + lastName + ", " + "Welcome to MVP Pattern"
            self.delegate.didSuccess(welcomeMsg: message)
        }
        
    }

}
