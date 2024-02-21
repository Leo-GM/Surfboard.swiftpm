//
//  ContinueView.swift
//  Surfboard
//
//  Created by Leonardo Guimaraes on 20/02/24.
//

import SwiftUI

struct ContinueView: View {
    
    @State var changeText = ""
    @State var changeImage = "lets"
    @State var changeImage2 = "praia1"
    @State var changeImage3 = "praia2"
    @State var changeImage4 = "praia3"
    @State var changeScreen = false
    @State var information = ""
    var body: some View {
        ZStack{
            
            Color(hex: 0xCEFFFC) // Define a cor de fundo para a tela inteira
                .edgesIgnoringSafeArea(.all) // Ignora as áreas seguras da tela
           
                

            VStack{
                Spacer()
                HStack{
                    Image("boy")
                    ZStack{
                        Image("balon")
                        Text("I don't know\r which one to\r choose. Can\r you help me?")
                            .position(x:160, y:110)

                    }

                }.position(x:240, y: 65)
                
                Spacer()
                Text("Select one, please")
                    
                    
                Button(action: {
                        
                    changeText = "Este é um mar médio, mais conhecido como praia do Stone, com ondas variando de 0.5m e 2.0m, ideais para surfistas um pouco mais experientes. Nesse nível começam a aparecer as pranchas menores e o foco passa a ser a performance."
                    changeImage2 = "selecionado1"
                    changeImage3 = "praia2"
                    changeImage4 = "praia3"
                    changeScreen = true
                    information = changeImage2

                }) {
                    Image(changeImage2)
                    
                }
                Spacer()
                Button(action: {
                        
                    changeText = "Este é um mar pequeno, mais conhecido como praia do Tur, com ondas de até 0.5m, ideais para iniciantes que pretendem começar com o surf com pranchas um pouco maiores e com volumes mais altos."
                    changeImage4 = "praia3"
                    changeImage3 = "selecionado2"
                    changeImage2 = "praia1"
                    changeScreen = true
                    information = changeImage3


                }) {
                    Image(changeImage3)
                }
                Spacer()
                Button(action: {
                        
                          changeText = "Este é um mar grande, mais conhecido como mar do Baza, com ondas maiores de 2.0m, as famosas big waves. Nesse mar somente surfistas profissionaisentram, o risco de vida é muito grande e sao necessárias pranchas pesadas."
                    changeImage4 = "selecionado3"
                    changeImage2 = "praia1"
                    changeImage3 = "praia2"
                    changeScreen = true
                    information = changeImage4

                }) {
                    Image(changeImage4)
                }
                
               Image("linha")
                Spacer()

                ScrollView {
                    Text(changeText)
                        .padding()
                }
                if changeScreen{
                    NavigationLink(destination: SurfBoardView(information : $information)) {
                        Image("ready")
                            .padding(.top, 30)
                    }
                }
                else{
                    Image("ready")
                        .padding(.top, 30)
                }
                
                
                
                

            }
           
        }
    }
}

#Preview {
    ContinueView()
}


