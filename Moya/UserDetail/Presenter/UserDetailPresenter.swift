//
//  UserDetailPresenter.swift
//  Moya
//
//  Created by Samarth Paboowal on 05/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UserDetailPresenter: UserDetailPresenterProtocol {
    
    var view: UserDetailViewProtocol?
    var router: UserDetailRouterProtocol?
    var user: User?
    
    func viewDidLoad() {
        view?.showUserDetail(with: user!)
    }
    
    func backButtonPressed(from view: UIViewController) {
        
    }
    
}
