//
//  PostData.swift
//  Hacker News
//
//  Created by Ismail Elmaliki on 6/29/20.
//  Copyright © 2020 Ismail Elmaliki. All rights reserved.
//

import Foundation

struct Results: Decodable {
	let hits: [Post]
}

struct Post: Decodable, Identifiable {
	var id: String {
		return objectID
	}
	let objectID: String
	let points: Int
	let title: String
	let url: String?
}
