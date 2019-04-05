//
//  UsersPresenter.swift
//  Moya
//
//  Created by Samarth Paboowal on 04/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UsersPresenter: UsersPresenterProtocol {
    
    var router: UsersRouterProtocol?
    var view: UsersViewProtocol?
    var interactor: UsersInputInteractorProtocol?
    var presenter: UsersPresenterProtocol?
    
    func showUsersSelection(with user: User, from view: UIViewController) {
        router?.pushToUserDetail(with: user, from: view)
    }
    
    func viewDidLoad() {
        self.loadUsersList()
    }
    
    func loadUsersList() {
        interactor?.getUserList()
    }
    
}

extension UsersPresenter: UsersOutputInteractorProtocol {
    
    func usersDidFetch(userList usersList: [User]) {
        view?.showUsers(with: usersList)
    }
    
}
