//
//  UserInfoVCViewController.swift
//  GHFollowers
//
//  Created by Nazrin Atayeva on 19.02.24.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneBtn
        
        print(username!)
    }
    
    
    @objc func dismissVC(){
        dismiss(animated: true)
    }

}
