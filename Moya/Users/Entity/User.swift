//
//  User.swift
//  Moya
//
//  Created by Samarth Paboowal on 04/04/19.
//  Copyright © 2019 Samarth Paboowal. All rights reserved.
//

import Foundation

struct User: Decodable {
    
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    private enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case id = "id"
        case title = "title"
        case body = "body"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId) ?? 0
        id = try values.decodeIfPresent(Int.self, forKey: .id) ?? 0
        title = try values.decodeIfPresent(String.self, forKey: .title) ?? ""
        body = try values.decodeIfPresent(String.self, forKey: .body) ?? ""
    }
}
