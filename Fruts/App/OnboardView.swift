//
//  OnboardView.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
			TabView {
				ForEach(1..<5) {_ in
					FruitCardView()
				}
				
			}
			.tabViewStyle(PageTabViewStyle())
			.padding(.vertical,20)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
