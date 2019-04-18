//
//  AuthServices.swift
//  ParentsJournal
//
//  Created by Ngoc Tuan Le on 4/14/19.
//  Copyright © 2019 LifeOfCoder. All rights reserved.
//

import Foundation
import Firebase

class AuthServices {
    
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { _, _ in
            
        }
    }
    
}
