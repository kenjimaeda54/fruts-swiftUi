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
	//com dismiss a tela qeu abrir esse modal ou sheet ira enteder que ele
	//esta fechado
	@Environment(\.dismiss) var dismiss
	@AppStorage("onBoarding") var onBoarding: Bool = false
	
	//MARK: - Function
	func handleClosePresented() {
		dismiss()
	}
	
	var body: some View {
		NavigationView {
			ScrollView(.vertical) {
				VStack(spacing: 20) {
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
					}// Group
					GroupBox {
			      Divider()
							.padding(.vertical,4)
						Text("If you wish,you can restart the application by toggle the switch in this box.That way it starts the onboarding process and you will see the welcome screen again")
							.font(.footnote)
							.layoutPriority(1)
							.multilineTextAlignment(.leading)
						
						Toggle(isOn: $onBoarding) {
							if onBoarding {
								Text("Restarted")
									.fontWeight(.bold)
									.foregroundColor(.green)
							} else {
								Text("Restart")
									.fontWeight(.bold)
							}
						}
						.padding(.horizontal,15)
						.padding(.vertical,10)
						.background(
							Color(UIColor.tertiarySystemBackground)
								.clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
							
						)
						
					} label: {
						 SettingsLabelView(text: "Customization", nameIcon: "paintbrush")
					}

					
					
					GroupBox {
						SettingsLabelRow(leadingLabel: "Developer",trailingLabel: "Kenji Maeda")
						SettingsLabelRow(leadingLabel: "Designer",trailingLabel: "Robert Petras")
						SettingsLabelRow(leadingLabel: "Compatibility",trailingLabel: "iOS 14")
						SettingsLabelRow(leadingLabel: "Github",linkLabel:  "kenjimaeda54", destinationLink: "https://github.com/kenjimaeda54")
						SettingsLabelRow(leadingLabel: "Linkedin",linkLabel:  "Ricardo Maeda", destinationLink: "https://www.linkedin.com/in/kenjimaeda1233/")
						SettingsLabelRow(leadingLabel: "SwiftUI",trailingLabel: "4")
						SettingsLabelRow(leadingLabel: "Version",trailingLabel: "1.1.0")
					} label: {
						SettingsLabelView(text: "application", nameIcon: "apps.iphone")
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
		
		}//NavigationView
		
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
	}
}
