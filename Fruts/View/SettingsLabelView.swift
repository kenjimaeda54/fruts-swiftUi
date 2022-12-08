//
//  SettingsLabelView.swift
//  Fruts
//
//  Created by kenjimaeda on 07/12/22.
//

import SwiftUI

struct SettingsLabelView: View {
	var text: String
	var nameIcon: String
	
	var body: some View {
		HStack {
			Text(text.uppercased())
			Spacer()
			Image(systemName: nameIcon)
		}
	}
}

struct SettingsLabelView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsLabelView(text: "Fructus",nameIcon: "info.circle")
			.previewLayout(.sizeThatFits)
	}
}
