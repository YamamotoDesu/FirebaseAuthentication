//
//  LoginViewModel.swift
//  FungiFinder
//
//  Created by 山本響 on 2021/06/15.
//

import Foundation
import Firebase

class LoginViewModel: ObservableObject {
    
    var email: String = ""
    var password: String = ""
    
    func login(completion: @escaping () -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                print(error.localizedDescription)
            } else {
                completion()
            }
        }
    }
}
