import SwiftUI
struct playing_view:View{
    @Binding var isplaying:Bool
    @State private var answer = [Substring]()
    @State private var topics = [Substring]()
    @State private var topic=""
    @State private var iscorrect:Bool=false
    //the array of the correct pos,correct char
    @State private var correct=[Substring]()
    //the array of the wrong pos,correct char
    @State private var wrong_pos=[Substring]()
    //the array of the char never existed in the topic
    @State private var never_exist=[Substring]()
    var body: some View {
    VStack {
    if !topics.isEmpty {
        
        Text("Wordle")
        Text(topic)
        Text(answer.joined(separator: ""))
        if iscorrect{
            Text("NOICE")
        }
        keyboard(answer:$answer,topic: $topic,iscorrect:$iscorrect,correct:$correct,wrong_pos:$wrong_pos,never_exist:$never_exist)
        Button(action:  {isplaying=false}, label: {
            Image(systemName:"house.circle")
        })
    }
        
    }
    .onAppear {
    let content = readFile()
    topics = content.split(separator: "\n")
        topic=String(topics.randomElement()!)
    }
    }
    
}
