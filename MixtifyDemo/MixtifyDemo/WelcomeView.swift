import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("AppIcon")
                    .resizable()
                        .frame(width: 250, height: 250)
                Image("inkpx-word-art")
                NavigationLink("Continue", destination: GridView())
            }
        }
    }
}



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
