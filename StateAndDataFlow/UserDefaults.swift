//
//  UserDefaults.swift
//  StateAndDataFlow
//
//  Created by Aleksei Goranov on 01.04.2021.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var userName: String {
        didSet {
            UserDefaults.standard.set(userName, forKey: "userName")
        }
    }
    
    init() {
        self.userName = UserDefaults.standard.object(forKey: "userName") as? String ?? ""
    }
}
