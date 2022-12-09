//
//  SettingsLabelRow.swift
//  Fruts
//
//  Created by kenjimaeda on 08/12/22.
//

import SwiftUI

struct SettingsLabelRow: View {
	var leadingLabel: String
	var trailingLabel: String? = nil
	var linkLabel: String? = nil
	var destinationLink: String? = nil
	
	var body: some View {
		VStack {
			Divider()
				.padding(.vertical,4)
			HStack {
				Text(leadingLabel)
				Spacer()
				if let label = trailingLabel {
					Text(label)
						.fontWeight(.bold)
				} else if let label = linkLabel,let  destination = destinationLink {
					HStack {
						Link(label.capitalized, destination: URL(string: destination)!)
							.fontWeight(.bold)
						Image(systemName: "arrow.up.right.square")
							.foregroundColor(.pink)
					}
					
				}
			}
			
		}
	}
}

struct SettingsLabelRow_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			
			SettingsLabelRow(leadingLabel: "Developer",trailingLabel: "John / Jane")
				.previewLayout(.fixed(width: 380, height: 90))
				.padding()
			
			SettingsLabelRow(leadingLabel: "Website",linkLabel: "github", destinationLink: "https://github.com")
				.previewLayout(.fixed(width: 380, height: 90))
				.padding()
			
		}
		
		
	}
	
	
}
