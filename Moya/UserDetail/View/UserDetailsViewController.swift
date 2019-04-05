//
//  UserDetailsViewController.swift
//  Moya
//
//  Created by Samarth Paboowal on 05/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController, UserDetailViewProtocol {
    
    var presenter: UserDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showUserDetail(with user: User) {
        print(user.title)
    }
    
}
