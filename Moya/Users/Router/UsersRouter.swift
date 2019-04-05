//
//  UsersRouter.swift
//  Moya
//
//  Created by Samarth Paboowal on 04/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UsersRouter: UsersRouterProtocol {
    
    func pushToUserDetail(with user: User, from view: UIViewController) {
        
    }
    
    class func createUsersModule(usersRef: UsersViewController) {
        let presenter: UsersPresenterProtocol & UsersOutputInteractorProtocol = UsersPresenter()
        
        usersRef.presenter = presenter
        usersRef.presenter?.router = UsersRouter()
        usersRef.presenter?.view = usersRef
        usersRef.presenter?.interactor = UsersInteractor()
        usersRef.presenter?.interactor?.presenter = presenter
    }
    
}
