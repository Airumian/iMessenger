//
//  FirestoreService.swift
//  iChat
//
//  Created by Alexander Airumyan on 30.09.2021.
//

import Firebase
import FirebaseFirestore

class FirestoreService {
    
    static let shared = FirestoreService()
    
    let db = Firestore.firestore()
    
    private var userdRef: CollectionReference {
        return db.collection("users")
    }
    
    func saveProfileWith(id: String,
                         email: String,
                         username: String?,
                         avatarImageString: String?,
                         description: String?,
                         sex: String?,
                         completion: @escaping (Result<MUser, Error>) -> Void) {
        guard Validators.isFilled(username: username, description: description, sex: sex) else {
            completion(.failure(UserError.notFilled))
            return
        }
        
        let muser = MUser(username: username!,
                          email: email,
                          avatarStringURL: "not exist",
                          description: description!,
                          sex: sex!,
                          id: id)
        
        self.userdRef.document(muser.id).setData(muser.representation) { (error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(muser))
            }
        }
    }
}
