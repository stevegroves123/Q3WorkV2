//
//  modelScreen.swift
//  Q3Work
//
//  Created by steve groves on 02/06/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct modelScreen: View {
        @Binding var Q3equipment: [equipment]
        @Binding var model: String
        @Binding var showEntryModel: Bool
        
        var body: some View {
            VStack {
                HStack {
                           Text("Model").font(.headline)
                           TextField("Model e.g. N65", text: $model, onCommit: {self.showEntryModel.toggle()})
                               .font(.headline)
                               .textFieldStyle(RoundedBorderTextFieldStyle())
                               .disableAutocorrection(true)
                               .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
                           Button(action: {
                            self.showEntryModel.toggle()
                               if self.showEntryModel == false {
                                   self.model = ""}
                           }){
                               if showEntryModel == true {
                                   Image(systemName: "delete.left").font(.system(size: 24))
                               } else {
                                   Text("")}
                           }
                       }
                .padding()
                .background(Color.red)
                .cornerRadius(15)
                Spacer()
                modelResults(Q3equipment: $Q3equipment, showEntry: $showEntryModel, model: $model)
               }
        }
    }

/*
struct modelScreen_Previews: PreviewProvider {
    static var previews: some View {
        modelScreen()
    }
}
 */
