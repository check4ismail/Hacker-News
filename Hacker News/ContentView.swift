
//  ContentView.swift
//  Hacker News
//
//  Created by Ismail Elmaliki on 6/29/20.
//  Copyright © 2020 Ismail Elmaliki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
	
	var body: some View {
		NavigationView {
			List {
				
				ForEach(0..<networkManager.posts.count, id: \.self) { index in
					HStack {
						Text("\(self.networkManager.posts[index].points)")
						Text(self.networkManager.posts[index].title)
					}
				}
			}
		.navigationBarTitle("Hacker News")
		}
		.onAppear {
			self.networkManager.fetchData()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
