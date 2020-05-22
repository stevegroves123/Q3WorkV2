//
//  equipScreen.swift
//  TextFieldText
//
//  Created by steve groves on 21/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct equipScreen: View {
    @Binding var Q3equipment: [equipment]
    @Binding var equipNo: String
    @Binding var showEntryEquip: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Equipment No")
                TextField("Enter equipment id", text: $equipNo, onCommit: {self.showEntryEquip.toggle()})
                    .font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
               Button(action: {
                   self.showEntryEquip.toggle()
                   if self.showEntryEquip == false {
                       self.equipNo = ""}
               }){
                   if showEntryEquip == true {
                       Image(systemName: "delete.left").font(.system(size: 24))
                   } else {
                       Text("")}
                }
            }
                .padding()
                .background(Color.orange)
                .cornerRadius(15)
            Spacer()
            equipNoResults(Q3equipment: $Q3equipment, showEntry: $showEntryEquip, equipNo: $equipNo)
            }
    }
}
/*
struct equipScreen_Previews: PreviewProvider {
    static var previews: some View {
        equipScreen(Q3equipment: , equipNo: .constant(""), showEntryEquip: .constant(false))
    }
}
*/
