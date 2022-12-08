//
//  SourceLinkView.swift
//  Fruts
//
//  Created by kenjimaeda on 07/12/22.
//

import SwiftUI

struct SourceLinkView: View {
	var body: some View {
		//GroupBox faz tipo um retangulo em volta
		GroupBox {
			HStack{
				Text("Content Source")
					.font(.title2)
				
				Spacer()
				HStack {
					Link("Wikipedia", destination: URL(string:"https://wikipedi.com")!)
					Image(systemName: "arrow.up.right.square")
						.font(.system(size: 17))
					
				}
				.font(.footnote)
				.padding(8)
				
			}
		}
	}
}

struct SourceLinkView_Previews: PreviewProvider {
	static var previews: some View {
		SourceLinkView()
			.previewLayout(.sizeThatFits)
			.padding(20)
	}
}
