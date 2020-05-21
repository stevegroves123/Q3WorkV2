//
//  teamScreen.swift
//  TextFieldText
//
//  Created by steve groves on 21/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct teamScreen: View {
        @Binding var Q3equipment: [equipment]
        @Binding var team: String
        @Binding var showEntryTeam: Bool
        
        var body: some View {
            VStack {
                HStack {
                           Text("Team")
                           TextField("Enter team  e.g. Q3", text: $team, onCommit: {self.showEntryTeam.toggle()})
                               .font(.headline)
                               .textFieldStyle(RoundedBorderTextFieldStyle())
                               .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 35, alignment: Alignment.topLeading)
                           Button(action: {
                               self.showEntryTeam.toggle()
                               if self.showEntryTeam == false {
                                   self.team = ""}
                           }){
                               if showEntryTeam == true {
                                   Image(systemName: "delete.left").font(.system(size: 24))
                               } else {
                                   Text("")}
                           }
                       }
                    Spacer()
                    teamResults(Q3equipment: $Q3equipment, showEntry: $showEntryTeam, team: $team)
                   }
        }
    }
/*
struct teamScreen_Previews: PreviewProvider {
    static var previews: some View {
        teamScreen(team: .constant("Q3"), showEntryTeam: .constant(false))
    }
}
*/
