//
//  equipNoResults.swift
//  TextFieldText
//
//  Created by steve groves on 21/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//
import SwiftUI

struct equipNoResults: View {
    @Binding var Q3equipment: [equipment]
    @Binding var showEntry: Bool
    @Binding var equipNo: String
    
    var body: some View {
        VStack {
            if self.showEntry == true {
                VStack {
                    List (Q3equipment.filter({equipNo.isEmpty ? true : $0.EquipmentNo.description.contains(equipNo)} )) {q3equip in
                        VStack (alignment: .leading, spacing: 8) {
                            Group {
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
                            Group {
                                if q3equip.OwnershipType != "*OBSOLETE" {
                                    Text("Active Status: \(q3equip.OwnershipType ?? "none")").foregroundColor(.primary)
                                } else {
                                    Text("Active Status: \(q3equip.OwnershipType ?? "none")").foregroundColor(.red)
                                }
                                Text("Technician: \(q3equip.Technician ?? "none")")
                                Text("Last PPM: \(q3equip.LastPPMDate ?? "none")")
                                Text("Next PPM Date: \(q3equip.NextPPMDate ?? "none")").font(.headline)
                                Text("Last Missed PPM: \(q3equip.LastMissedPPMDate ?? "none")")
                                Text("Last Repair Date: \(q3equip.LastRepairDate ?? "none")")
                                if q3equip.IsinLibrary == true {
                                    Text("Library item: Yes")
                                } else {
                                    Text("Library item: No")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
/*
struct equipNoResults_Previews: PreviewProvider {
    static var previews: some View {
        equipNoResults(showEntry: .constant(false))
    }
}
*/
