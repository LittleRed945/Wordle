import SwiftUI
struct instruction_view:View{
    @Binding var show_instruction:Bool
    @State private var decided_len:Int=0
    var body:some View{
        Text("derdz,fopfkoeal;ddspfokofesffdfssf")
            .overlay(
                Button(action: {show_instruction=false}, label: {
                    Image(systemName: "xmark")
                })
                
            )
        

    }
    
}
