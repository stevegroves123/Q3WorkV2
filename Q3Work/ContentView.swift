//
//  ContentView.swift
//  Q3Work
//
//  Created by steve groves on 07/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var Q3equipment = Bundle.main.decode("eQuipV1.json")
    
    @State var showEntryEquip: Bool = false
    @State var showEntrySerial: Bool = false
    @State var showEntryLocation: Bool = false
    @State var showEntryTeam: Bool = false

    @State var equipNo: String = ""
    @State var serial: String = ""
    @State var location: String = ""
    @State var team: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                VStack (alignment: .center) {
//                    equipment
                    NavigationLink (destination:equipScreen(Q3equipment: $Q3equipment, equipNo: $equipNo, showEntryEquip: $showEntryEquip)) {
                        Text("Equipment No")
                            .font(.title)
                            .foregroundColor(Color.primary)
                    }
                        .frame(width: 250, height: 60, alignment: .center)
                        .background(Color.orange)
                        .cornerRadius(15)
                        .padding(.vertical)
//                    serial number
                    NavigationLink (destination: serialNoScreen(Q3equipment: $Q3equipment, serial: $serial, showEntrySerial: $showEntrySerial)) {
                        Text("Serial No")
                            .font(.title)
                            .foregroundColor(Color.primary)
                    }
                        .frame(width: 250, height: 60, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .padding(.vertical)
//                    location
                    NavigationLink (destination: locationScreen(Q3equipment: $Q3equipment, location: $location, showEntryLocation: $showEntryLocation)) {
                        Text("Location")
                            .font(.title)
                            .foregroundColor(Color.primary)
                    }
                        .frame(width: 250, height: 60, alignment: .center)
                        .background(Color.green)
                        .cornerRadius(15)
                    .padding(.vertical)
//                    team
                    NavigationLink (destination: teamScreen(Q3equipment: $Q3equipment, team: $team, showEntryTeam: $showEntryTeam)) {
                        Text("Team")
                            .font(.title)
                            .foregroundColor(Color.primary)
                    }
                        .frame(width: 250, height: 60, alignment: .center)
                        .background(Color.yellow)
                        .cornerRadius(15)
                        .padding(.vertical)
                    Spacer()
//                    advert
                    VStack {
                        Text("Pinnacle Solutions")
                            .font(.title)
                            .padding(.leading)
                            .colorInvert()
                        Text("Equipment Management System")
                            .font(.headline)
                            .colorInvert()
                        Text("(EMS)")
                            .font(.headline)
                            .colorInvert()
                    }
                    .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.secondary)
                        .cornerRadius(15)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

