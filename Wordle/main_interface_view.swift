import SwiftUI
struct main_interface_view:View{
    @Binding var isplaying:Bool
    @State private var decided_len:Int=0
    var body:some View{
        VStack{
            Text("Wordle")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
            Spacer()
            Button(action: {
                isplaying = true
            }, label: {
                Image(systemName: "play.fill")
                    .foregroundColor(.black)
            })
            .sheet(isPresented: $isplaying, content: {
                playing_view(isplaying:$isplaying)
            })
            
            Spacer()
        }
        

    }
    
}
