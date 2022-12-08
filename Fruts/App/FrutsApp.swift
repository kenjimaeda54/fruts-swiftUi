//
//  FrutsApp.swift
//  Fruts
//
//  Created by kenjimaeda on 05/12/22.
//

import SwiftUI

@main
struct FrutsApp: App {
	//se comecar a ter comportamento estranho com appStorage deleta o app do simulador e testa novamente
	@AppStorage("onBoarding") var isOnbardingView: Bool = true
	
    var body: some Scene {
        WindowGroup {
					if isOnbardingView {
						OnboardView()
					}else {
						ContentView()
					}
           
        }
    }
}
