//
//  OnboardView.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct OnboardView: View {
	  
	//Mark: - Properties
	var fruits: [FruitModel] = fruitsMock
	
    var body: some View {
			TabView {
				ForEach(fruits) {fruit in
					FruitCardView(fruit: fruit)
				}
				
			}
			.tabViewStyle(PageTabViewStyle())
			.padding(.horizontal,5)
			.padding(.vertical,20)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
