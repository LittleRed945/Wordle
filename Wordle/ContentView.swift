//
//  ContentView.swift
//  Wordle
//
//  Created by User04 on 2022/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isplaying=false
    @State private var topic_len=[Substring]()
    var body:some View{
        main_interface_view(isplaying: $isplaying)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
