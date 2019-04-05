//
//  ViewController.swift
//  Moya
//
//  Created by Samarth Paboowal on 04/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController, UsersViewProtocol {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: UsersPresenterProtocol?
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UsersRouter.createUsersModule(usersRef: self)
        presenter?.viewDidLoad()
    }

    func showUsers(with users: [User]) {
        self.users = users
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}


extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        let user = users[indexPath.row]
        cell.textLabel?.text = user.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showUsersSelection(with: users[indexPath.row], from: self)
    }
}

