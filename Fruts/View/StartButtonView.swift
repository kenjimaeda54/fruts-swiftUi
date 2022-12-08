//
//  StartButton.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct StartButtonView: View {
	//MARK:- Properties
	@AppStorage("onBoarding") var isBonboarding:Bool?
	
	//MARK: - Functions
	func handleAction() {
		isBonboarding = false
	}
	
	var body: some View {
		Button(action: handleAction, label: {
			HStack(spacing: 10) {
				Text("Start")
				Image(systemName: "arrow.right.circle")
					.imageScale(.large)
				
				
				
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
		StartButtonView()
			.previewLayout(.sizeThatFits)
			.preferredColorScheme(.dark)
	}
}
