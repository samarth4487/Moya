//
//  UserDetailProtocol.swift
//  Moya
//
//  Created by Samarth Paboowal on 05/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//


import UIKit

protocol UserDetailPresenterProtocol: class {
    
    var router: UserDetailRouterProtocol? {get set}
    var view: UserDetailViewProtocol? {get set}
    
    //View -> Presenter
    func viewDidLoad()
    func backButtonPressed(from view: UIViewController)
    
}

protocol UserDetailViewProtocol: class {
    //Presenter -> View
    func showUserDetail(with user: User)
}

protocol UserDetailRouterProtocol: class {
    func goBackToUserListView(from view: UIViewController)
}
