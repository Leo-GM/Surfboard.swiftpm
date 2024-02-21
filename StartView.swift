import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color(hex: 0xCEFFFC) // Define a cor de fundo para a tela inteira
                    .edgesIgnoringSafeArea(.all) // Ignora as áreas seguras da tela
                
                VStack {
                    Image("boy")
                    
                    Spacer()
                    
                    Text("This is Peter, he lives by the beach and owns a Fish surfboard, which was a gift from his grandfather. He doesn't know much about surfing and wants to start by learning the basics. Shall we learn together about the seas and the best surfboards for each situation?")
                        .font(.custom("JetBrainsMono-Regular", size: 28
                                     ))
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    NavigationLink(destination: ContinueView()) {
                        Image("lets")
                    }
                    
                }
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

extension Color {
    init(hex: Int) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: 1.0
        )
    }
}
