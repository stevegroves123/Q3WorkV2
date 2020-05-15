//
//  equipment.swift
//  Q3Work
//
//  Created by steve groves on 07/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import Foundation

struct equipment: Codable, Identifiable, Hashable {
    let id = UUID()
    let EquipmentNo: Int32
    let SerialNo: String?
    let Brand: String?
    let Model: String?
    let ModelDescription: String?
    let Category: String?
    let Site: String?
    let Location: String?
    let LocationText: String?
    let Provider: String?
    let Service: String?
    let Status: String?
    let Team: String?
    let Technician: String?
    let LastRepairDate: String?
    let LastPPMDate: String?
    let LastMissedPPMDate: String?
    let NextPPMDate: String?
    let JobPriority: String?
    let InstallationDate: String?
    let OwnershipType: String?
    let MaintenanceSupplier: String?
    let LibraryReferenceNo: String?
    let LibraryStatus: String
    let IsinLibrary: Bool
    
    enum CodingKeys: String, CodingKey {
        case EquipmentNo
        case SerialNo = ""
        case Brand
        case Model
        case ModelDescription = "Model Description"
        case Category
        case Site
        case Location
        case LocationText
        case Provider
        case Service
        case Status
        case Team
        case Technician
        case LastRepairDate
        case LastPPMDate
        case LastMissedPPMDate
        case NextPPMDate
        case JobPriority
        case InstallationDate
        case OwnershipType
        case MaintenanceSupplier
        case LibraryReferenceNo
        case LibraryStatus
        case IsinLibrary
    }
}

/*
 {
   "EquipmentNo": 81065,
   "SerialNo": "A032941",
   "Brand": "THERAPY EQUIPMENT LTD",
   "Model": "9621 DIAMOND RANGE",
   "Model Description": "FLOWMETER AIR -REMOTE CLAMP",
   "Category": "FLOWMETER AIR",
   "Site": "QUEEN ALEXANDRA HOSP",
   "Location": "RESPIRATORY HIGH CARE -E6",
   "LocationText": "",
   "Provider": "PORTSMOUTH HOSPITALS",
   "Service": "RESPIRATORY MEDICINE",
   "Status": "ACCEPTED",
   "Team": "Q6",
   "Technician": "",
   "LastRepairDate": "",
   "LastPPMDate": "",
   "LastMissedPPMDate": "",
   "NextPPMDate": "01/05/2020",
   "JobPriority": "LOW",
   "InstallationDate": "15/05/2019",
   "OwnershipType": "PHT",
   "MaintenanceSupplier": "CLINICAL ENGINEERING",
   "LibraryReferenceNo": "",
   "LibraryStatus": "",
   "IsinLibrary": false
 },
 */
