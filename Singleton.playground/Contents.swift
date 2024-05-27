import UIKit

class FileManager{
    
    // create a singleton
    static let shared = FileManager()
    
    // create a private initializer
    private init() {
        
    }
    
    // method to request file
    func checkFileAccess(user: String) {
        
        // condition to check username
        if user == ("@ligia.mx") {
            
            print("Access Granted")
        }
        
        else {
            print(" Access Denied")
        }
    }
}

let userName = "@ligia.mx"

// access method
let file = FileManager.shared

file.checkFileAccess(user: userName)

