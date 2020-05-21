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
            HStack {
                Text("Equipment No")
                TextField("Enter the id No.", text: $textEntry, onCommit: {self.showEntry.toggle()})
                    .font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
                Button(action: {
                    self.showEntry.toggle()
                    if self.showEntry == false {
                        self.textEntry = ""}
                }){
                    if showEntry == true {
                        Image(systemName: "delete.left").font(.system(size: 24))
                    } else {
                        Text("")}
                }
            }
            Spacer()
            Results(Q3equipment: $Q3equipment, textEntry: $textEntry, showEntry: $showEntry)
        }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
