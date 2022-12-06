//
//  FruitCardView.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct FruitCardView: View {
	//MARK: - Properties
	@State private var isAnimation = false
	
	
	var body: some View {
		ZStack {
			VStack(spacing: 20) {
				Image("blueberry")
					.resizable()
					.scaledToFit()
					.shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15),radius: 8,x:6,y:8)
					.scaleEffect(isAnimation ? 1 : 0.6)//a imgem vai comecar pequena ate atingir o seu tamanho 
				
				Text("Blueberry")
					.foregroundColor(.white)
					.shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15),radius: 2,x: 2,y: 2)
					.font(.largeTitle)
				
				Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
					.multilineTextAlignment(.center)
					.frame(maxWidth: 480)
					.foregroundColor(.white)
					.padding(.horizontal, 26)
			  StartButton()
				
			} // VStack
			.onAppear(perform: {
				withAnimation(.linear(duration: 1)) {
					isAnimation = true
				}
			})
			.frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
			.background(
				LinearGradient(colors: [Color("ColorBlueBerryLight"),Color("ColorBlueBerryDark")], startPoint: .leading, endPoint: .trailing)
					.cornerRadius(20)
					.padding(.horizontal,10)
				
			)
		}//ZStack
	}
}

struct FruitCardView_Previews: PreviewProvider {
	static var previews: some View {
		FruitCardView()
			.previewLayout(.fixed(width: 320, height: 640))
			
	}
}
