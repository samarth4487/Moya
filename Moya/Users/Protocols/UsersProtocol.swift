//
//  UsersProtocol.swift
//  Moya
//
//  Created by Samarth Paboowal on 04/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

protocol UsersViewProtocol: class {
    // PRESENTER -> VIEW
    func showUsers(with users: [User])
}

protocol UsersPresenterProtocol: class {
    //View -> Presenter
    var interactor: UsersInputInteractorProtocol? {get set}
    var view: UsersViewProtocol? {get set}
    var router: UsersRouterProtocol? {get set}
    
    func viewDidLoad()
    func showUsersSelection(with user: User, from view: UIViewController)
}

protocol UsersInputInteractorProtocol: class {
    var presenter: UsersOutputInteractorProtocol? {get set}
    //Presenter -> Interactor
    func getUserList()
}

protocol UsersOutputInteractorProtocol: class {
    //Interactor -> Presenter
    func usersDidFetch(userList: [User])
}

protocol UsersRouterProtocol: class {
    //Presenter -> Router
    func pushToUserDetail(with fruit: User,from view: UIViewController)
    static func createUsersModule(usersRef: UsersViewController)
}
