//
//  UserDetailRouter.swift
//  Moya
//
//  Created by Samarth Paboowal on 05/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UserDetailRouter: UserDetailRouterProtocol {
    
    class func createUserDetailModule(with userDetailRef: UserDetailsViewController, and user: User) {
        let presenter = UserDetailPresenter()
        presenter.user = user
        userDetailRef.presenter = presenter
        userDetailRef.presenter?.view = userDetailRef
        userDetailRef.presenter?.router = UserDetailRouter()
    }
    
    func goBackToUserListView(from view: UIViewController) {
        
    }
    
}
