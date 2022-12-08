//
//  SettingsView.swift
//  Fruts
//
//  Created by kenjimaeda on 07/12/22.
//

import SwiftUI

struct SettingsView: View {
	//MARK: - Properties
	//Environment são propreidades acessadas externas
	//acessarei na configuracao do proprieo celulaar
	@Environment(\.dismiss) var dismiss
	
	//MARK: - Function
	func handleClosePresented() {
		dismiss()
	}
	
	var body: some View {
		NavigationView {
			ScrollView(.vertical) {
				VStack {
					GroupBox {
						Divider()
							.padding(8)
						HStack {
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80,height: 80)
								.cornerRadius(8)
							Text("Most fruits are naturally low in fat,sodium,and calories. None have cholesterol. Fruits are sources of many essential nutrients,including potassium,dietary fiber,vitamins, and much more.")
								.font(.footnote)
							
						}
						
						
					} label: {
						SettingsLabelView(text: "Fructus", nameIcon: "info.circle")
					}
					
					
				}//Vstack
				
			}//ScroolView
			
			.navigationTitle("Settings")
			.toolbar(content: {
				Button(action: handleClosePresented) {
					Image(systemName: "xmark")
						.padding(8)
				}
			})
			.padding()
		}//NavigationView
		
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
	}
}
