//
//  RegisterViewModel.swift
//  FungiFinder
//
//  Created by 山本響 on 2021/06/14.
//

import Foundation
import Firebase

class RegisterViewModel: ObservableObject {
    
    var email: String = ""
    var password: String = ""
    
    func register(completion: @escaping() ->Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                print(error.localizedDescription)
            } else {
                completion()
            }
        }
    }
    
}
