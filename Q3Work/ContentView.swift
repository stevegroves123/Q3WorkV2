//
//  ContentView.swift
//  Q3Work
//
//  Created by steve groves on 07/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var Q3equipment: [equipment] = Bundle.main.decode("eQuipV1.json")
    @State var textEntry: String = ""
    @State var showEntry: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Equipment No")
                TextField("Enter the asset_id", text: $textEntry)
                    .font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
                Spacer()
                Results(Q3equipment: $Q3equipment, textEntry: $textEntry, showEntry: $showEntry)
            }
            }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
