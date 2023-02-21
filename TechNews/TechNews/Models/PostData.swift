//
//  PostData.swift
//  TechNews
//
//  Created by Jiri Matousek on 27.10.2022.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    var id: String { return objectID}
    let title: String
    let points: Int
    let url: String
    let objectID: String 
}
