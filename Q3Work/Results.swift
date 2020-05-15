//
//  Results.swift
//  Q3Work
//
//  Created by steve groves on 10/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct Results: View {
    @Binding var Q3equipment: [equipment]
    @Binding var textEntry: String
    @Binding var showEntry: Bool
    
    var body: some View {
            VStack {
                HStack {
                           
                    Button(action: {
                        self.showEntry.toggle()
                        if self.showEntry == false {self.textEntry = ""}
                    }) {
                        if showEntry == true {Text("Close record")}
                        else {Text("Show record")}
                        }
                    }
                    Spacer()
                    if self.showEntry == true {
                        List (Q3equipment.filter({textEntry.isEmpty ? true : $0.EquipmentNo.description.contains(textEntry) })){q3equip in
                            VStack (alignment: .leading, spacing: 8) {
                                VStack (alignment: .leading, spacing: 8) {
                                    Text("Equipment No: \(q3equip.EquipmentNo.description)").font(.title)
                                    Text("Team: \(q3equip.Team ?? "none")")
                                    Text("Serial No: \(q3equip.SerialNo ?? "none")")
                                    Text("Brand: \(q3equip.Brand ?? "none")")
                                    Text("Model: \(q3equip.Model ?? "none")")
                                    Text("Description: \(q3equip.ModelDescription ?? "none")")
                                    Text("Category: \(q3equip.Category ?? "none")")
                                    Text("Service: \(q3equip.Service ?? "none")")
                                    Text("Location: \(q3equip.Location ?? "none")")
                                    Text("Status: \(q3equip.Status ?? "none")")
                                }
                                VStack (alignment: .leading, spacing: 8) {
                                    Text("Technician: \(q3equip.Technician ?? "none")")
                                    Text("Last PPM: \(q3equip.LastPPMDate ?? "none")")
                                    Text("Next PPM Date: \(q3equip.NextPPMDate ?? "none")").font(.headline)
                                    Text("Last Missed PPM: \(q3equip.LastMissedPPMDate ?? "none")")
                                    Text("Last Repair Date: \(q3equip.LastRepairDate ?? "none")")
                                    if q3equip.IsinLibrary == true {
                                        Text("Libray item: Yes")
                                    } else {
                                        Text("Libray item: No")
                                    }
                                }
                            }
                            
                        }
                    }
                }
            }
        }

/*
struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results(Q3equipment: Binding<[equipment]>, textEntry: .constant("none"), showEntry: .constant(false))
    }
}
*/
