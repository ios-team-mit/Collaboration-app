//
//  Authenticate.swift
//  Collaboration app
//
//  Created by student on 04/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import Foundation
import Firebase
class Authentication {
    var email = String()
    var password = String()
    var handle: AuthStateDidChangeListenerHandle?
    init (email: String, password: String) {
        self.email = email
        self.password = password
    }
    func loginWithEmailPassword(email: String, password: String) -> Bool {
        var authenticated = Bool()
        
//        Auth.auth().signIn(withEmail: email, password: password) { user, error in
//            //guard let strongSelf = self else { return }
//            if Error.self != nil {
//                authenticated = false
//            }
//        }
//        return authenticated
//    }
//        Auth.auth().signIn(withEmail: email, password: password) { (<#AuthDataResult?#>, <#Error?#>) in
//            <#code#>
//        }
}
