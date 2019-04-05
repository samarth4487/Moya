//
//  UsersInteractor.swift
//  Moya
//
//  Created by Samarth Paboowal on 04/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UsersInteractor: UsersInputInteractorProtocol {

    weak var presenter: UsersOutputInteractorProtocol?
    
    func getUserList() {
        fetchData { (users) in
            self.presenter?.usersDidFetch(userList: users!)
        }
    }
    
    func fetchData(completion: @escaping ([User]?) -> ()) {
        
        let url = URL(string: "http://jsonplaceholder.typicode.com/posts")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                let usersList = try JSONDecoder().decode([User].self, from: data!)
                completion(usersList)
            } catch {
                print("error!")
                completion(nil)
            }
            }.resume()
    }
}
