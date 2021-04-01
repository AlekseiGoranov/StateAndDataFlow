//
//  LettersCounter.swift
//  StateAndDataFlow
//
//  Created by Aleksei Goranov on 01.04.2021.
//

import Foundation
import Combine

class letterCounter: ObservableObject {
    var objectWillChange = PassthroughSubject<letterCounter, Never>()
    @Published private var lettersCounter = UserManager().name.count
    
   
    
}
