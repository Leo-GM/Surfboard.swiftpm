//
//  SurfBoardView.swift
//  Surfboard
//
//  Created by Leonardo Guimaraes on 21/02/24.
//

import SwiftUI

struct SurfBoardView: View {
    @State var changeText2 = ""
    @State var changeImage2 = "pranchinha"
    @Binding var information: String

    var body: some View {

        ZStack{
            Color(hex: 0xCEFFFC) // Define a cor de fundo para a tela inteira
                .edgesIgnoringSafeArea(.all) // Ignora as áreas seguras da tela
            HStack{
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
                    HStack{
                        VStack{
                            
                            HStack{
                                Button(action: {
                                    if information == "selecionado1" {
                                        changeText2 = "Ótima prancha para esse caso. Ondas que vão até 2.0m são perfeitas para pranchinhas, a onda tem velocidade e força suficiente para levar uma prancha de baixa litragem e permitir a alta performance com manobras."
                                    }
                                    else if information == "selecionado2"{
                                        changeText2 = "Não é muito bom para esse caso. As ondas são fracas e sem velocidade, a dificuldade de se levantar com essas ondas é extrema. Muitas das vezes a pessoa vai ficar pra trás e a onda vai continuar seu rumo"
                                    }
                                    else if information == "selecionado3"{
                                        changeText2 = "Esse é um caso bem difícil. Não é nada recomendado usar pranchinhas em big waves. A prancha não tem estabilidade suficiente para se manter, porém alguns profissionais usam em casos específicos com quilhas centrais."
                                    }
                                    else{
                                        changeText2 = "essa é uma boa prancha, recoemndo usar, ela faz issogsdvsdafee isso e aquilo, boa escolha amigos ihuuu"
                                    }

                                
                                   
                                        
                                        }) {
                                            Image("pranchinhaCard")
                                                .padding()
                                        }
                            
                                Button(action: {
                                    if information == "selecionado1" {
                                        changeText2 = "é isso galera1"
                                    }
                                    else if information == "selecionado2"{
                                        changeText2 = "é isso galera2"
                                    }
                                    else if information == "selecionado3"{
                                        changeText2 = "é isso galera3"
                                    }
                                    else{
                                        changeText2 = "essa é uma boa prancha, recoemndo usar, ela faz issogsdvsdafee isso e aquilo, boa escolha amigos ihuuu"
                                    }

                                        }) {
                                            Image("fishCard")
                                                .padding()
                                        }
                            }
                            HStack{
                                Button(action: {
                                    if information == "selecionado1" {
                                        changeText2 = "é isso galera1"
                                    }
                                    else if information == "selecionado2"{
                                        changeText2 = "é isso galera2"
                                    }
                                    else if information == "selecionado3"{
                                        changeText2 = "é isso galera3"
                                    }
                                    else{
                                        changeText2 = "essa é uma boa prancha, recoemndo usar, ela faz issogsdvsdafee isso e aquilo, boa escolha amigos ihuuu"
                                    }

                                        }) {
                                            Image("gunCard")
                                                .padding()
                                        }
                                Button(action: {
                                    if information == "selecionado1" {
                                        changeText2 = ""
                                    }
                                    else if information == "selecionado2"{
                                        changeText2 = ""
                                    }
                                    else if information == "selecionado3"{
                                        changeText2 = ""
                                    }
                                    else{
                                        changeText2 = "essa é uma boa prancha, recoemndo usar, ela faz issogsdvsdafee isso e aquilo, boa escolha amigos ihuuu"
                                    }

                                        }) {
                                            Image("longCard")
                                                .padding()
                                        }
                            }
                            HStack{
                                Button(action: {
                                    if information == "selecionado1" {
                                        changeText2 = "é isso galera1"
                                    }
                                    else if information == "selecionado2"{
                                        changeText2 = "é isso galera2"
                                    }
                                    else if information == "selecionado3"{
                                        changeText2 = "é isso galera3"
                                    }
                                    else{
                                        changeText2 = "essa é uma boa prancha, recoemndo usar, ela faz issogsdvsdafee isso e aquilo, boa escolha amigos ihuuu"
                                    }

                                        }) {
                                            Image("gunCard")
                                                .padding()
                                        }
                                Button(action: {
                                    if information == "selecionado1" {
                                        changeText2 = "é isso galera1"
                                    }
                                    else if information == "selecionado2"{
                                        changeText2 = "é isso galera2"
                                    }
                                    else if information == "selecionado3"{
                                        changeText2 = "é isso galera3"
                                    }
                                    else{
                                        changeText2 = "essa é uma boa prancha, recoemndo usar, ela faz issogsdvsdafee isso e aquilo, boa escolha amigos ihuuu"
                                    }

                                        }) {
                                            Image("gunCard")
                                                .padding()
                                        }
                            }
                        }.padding(.trailing,40)
                        
                        Image(changeImage2)
                           
                    }
                    ScrollView {
                    Image("linha")

                     
                         Text(changeText2)
                            .padding()
                     }
                         
                     Button(action: {
                        
                                
                     }) {
                         Image("ready")
                     }
                    
                    
                }
                
                
               
            }
        }
    }
}


