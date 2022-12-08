//
//  ContentView.swift
//  Fruts
//
//  Created by kenjimaeda on 05/12/22.
//

import SwiftUI

struct ContentView: View {
	//MARK: - Properties
	@State var isShowsettingsView = false
	var fruits = fruitsMock
	
	//MARK: - Functions
	func handleToggleTolBar() {
		isShowsettingsView = true
	}
	
	var body: some View {
		NavigationStack {
			
			//shuffled e para embaralhar a lista
			List(fruits.shuffled()) {fruit in
				
				NavigationLink(destination: FruitDetails(fruit: fruit)){
					FruitRowView(fruit: fruit)
				}
				
			}
			.navigationTitle("Fruits")
			.toolbar {
				Button(action: handleToggleTolBar) {
					Image(systemName: "slider.horizontal.3")
				}
			}
			//			Use this method when you want to present a modal view to the user when a Boolean value you provide is true.
			.sheet(isPresented: $isShowsettingsView) {
				SettingsView()
				
			}
			
		}//Navigation
		.listStyle(.plain)
		.padding(.vertical,8)
		
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
