//
//  locationScreen.swift
//  TextFieldText
//
//  Created by steve groves on 21/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct locationScreen: View {
        @Binding var Q3equipment: [equipment]
        @Binding var location: String
        @Binding var showEntryLocation: Bool
        
        var body: some View {
            VStack {
                HStack {
                           Text("Location")
                           TextField("Enter location", text: $location, onCommit: {self.showEntryLocation.toggle()})
                                .font(.headline)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
                            
                           Button(action: {
                               self.showEntryLocation.toggle()
                            if self.showEntryLocation == false {
                                   self.location = ""}
                           }){
                               if showEntryLocation == true {
                                   Image(systemName: "delete.left").font(.system(size: 24))
                               } else {
                                   Text("")}
                           }
                       }
                .padding()
                .background(Color.green)
                .cornerRadius(15)
                Spacer()
                locationResults(Q3equipment: $Q3equipment, showEntry: $showEntryLocation, location: $location)
                }
        }
    }
/*
struct locationScreen_Previews: PreviewProvider {
    static var previews: some View {
        locationScreen(location: .constant("Clinical Engineering"), showEntryLocation: .constant(false))
    }
}
*/
