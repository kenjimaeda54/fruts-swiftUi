# Fruts
Aplicativo com descricao de frutas </br>
E possivel selecionar uma fruta da lista e verificar seus detalhes. Tambem verficar os detalhes do desenvolvedor pelo botao de configuracao


## Feature
- Utilizei o conceito de sheet, a ideia e sobrepor uma tela sobre a outra, parecido com modal
- Para funcionanmento correto precisei no navigationStack determinar edgesIgnoringSafeArea(.all)
- Sem ignorar o safe area o botao para abrir o modal as vezes funcionava e outros momenots nao
- Para o swifui entender que a tela do modal esta fechada usamos Environment com a propriedade demiss
- E possivel fechar o modal tanto arrastando quanto por um botao de close 


```swift
//modal
@Environment(\.dismiss) var dismiss
	func handleClosePresented() {
		dismiss()
	}
	
//quem vai abrir o modal
@State var isShowsettingsView = false
.sheet(isPresented: $isShowsettingsView) {
				SettingsView()
}


```
##
- Abaixo alguns recursos interessantes no momento de criar interfaces
- Para criar outiline nos usamos o background e a propriedade strokeBorder
- Percebi que o padding em alguns momenots pode gerar bug no momento de criar corner radius, caso decida usar a propriedade cornerRadius retire o padding e testa
- Com zstack podemos aplicar um linear gradiente na screen toda
- Para criar links externos clicaveis podemos usar a prorpiedade link
- Com disclosuregroup criamos aquelas caixinhas suspensas que ao clicar abre um conteudo interno
- Repare que no forEach usamos uma propriedade id o motivo e que ele de um inteiro para criar gerar sequencia , erro que pode acusar e nao existe um inteiro ou constante literal
- Para retirar os epscaos em brancos da list usamos a propriedade listStyle(.plain)
- 

```swift

//outline 
.background(
				Capsule()
					.strokeBorder(Color.white,lineWidth: 1)
			)

//==================

/linear gradient
ZStack {
		
			LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)

			Image(fruit.image)
				.resizable()
				.scaledToFit()
				.shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8,x:6,y: 8)
				
			
			
		}//Zstack
		.frame(height: 440)
	}

//===============

// Link externo
	Link("Wikipedia", destination: URL(string:"https://wikipedi.com")!)
					Image(systemName: "arrow.up.right.square")
						.font(.system(size: 17))
            
            
//===============


//caixinha com conteudo
GroupBox() {
			DisclosureGroup("Nutritional value per 100g",content:  {
				ForEach(0..<nutrients.count,id: \.self){ it in
					Divider()
						.padding(.vertical,3)
					HStack() {
						Group {
							Image(systemName: "info.circle")
							Text(nutrients[it])
							
						}
						.foregroundColor(fruit.gradientColors[1])
						.font(Font.system(.body).bold())
						
						Spacer(minLength: 20)
						Text(fruit.nutrition[it])
							.multilineTextAlignment(.trailing)
					}
				}
				
			})
		}
    
//toggle
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
            

```
