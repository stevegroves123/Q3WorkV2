//
//  SerialNoScreen.swift
//  TextFieldText
//
//  Created by steve groves on 21/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct serialNoScreen: View {
        @Binding var Q3equipment: [equipment]
        @Binding var serial: String
        @Binding var showEntrySerial: Bool
        
        var body: some View {
            VStack {
                HStack {
                    Text("Serial No").font(.headline)
                        TextField("Enter Serial No", text: $serial, onCommit: {self.showEntrySerial.toggle()})
                            .font(.headline)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
                            
                           Button(action: {
                               self.showEntrySerial.toggle()
                            if self.showEntrySerial == false {
                                   self.serial = ""}
                           }){
                               if showEntrySerial == true {
                                   Image(systemName: "delete.left").foregroundColor(.white)
                                    .font(.system(size: 24))
                               } else {
                                   Text("")}
                           }
                       }
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                Spacer()
                serialResults(Q3equipment: $Q3equipment, showEntry: $showEntrySerial, serial: $serial)
                }
        }
    }
/*
struct serialNoScreen_Previews: PreviewProvider {
    static var previews: some View {
        locationScreen(location: .constant("Clinical Engineering"), showEntryLocation: .constant(false))
    }
}
*/
