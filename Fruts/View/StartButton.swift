//
//  StartButton.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct StartButton: View {
	//MARK:- Properties
	
	//MARK: - Functions
	func handleAction() {
		print("ola")
	}
	
	var body: some View {
		Button(action: handleAction, label: {
			HStack(spacing: 10) {
				Text("Start")
					.foregroundColor(.white)
				Image(systemName: "arrow.right.circle")
					.imageScale(.large)
					.foregroundColor(.white)
			    
				
			}
			.padding(.horizontal,10)
			.padding(.vertical,5)
			.background(
				Capsule()
					.strokeBorder(Color.white,lineWidth: 1)
			)
			
		})
		
	}
}

struct StartButton_Previews: PreviewProvider {
	static var previews: some View {
		StartButton()
			.previewLayout(.sizeThatFits)
			.preferredColorScheme(.dark)
	}
}
