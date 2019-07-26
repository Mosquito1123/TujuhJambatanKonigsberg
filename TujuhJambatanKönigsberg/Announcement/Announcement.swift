//
//  Announcement.swift
//  TujuhJambatanKönigsberg
//
//  Created by Mosquito1123 on 26/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

class Announcement {
    
    static func new(title: String, message: String, action: ((UIAlertAction) -> Void)? = nil, cancelable: Bool = false) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // add the "Cancel" button if the announcement is cancelable
        if cancelable {
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        }
        
        // add the "Clear" button
        alert.addAction(UIAlertAction(title: "Clear", style: .default, handler: action))
        
        // present the announcement
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
