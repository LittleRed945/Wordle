import SwiftUI
struct generate_board:View{
    let answer:[Substring]
    var body: some View{
        let rows=Array(repeating: GridItem(spacing:10), count:5)
        LazyHGrid(rows:rows,spacing:10){
            ForEach(answer.indices,id: \.self){
                index in
                board_view(str: answer[index])
                
            }
        
        }
    
    }
    
}
