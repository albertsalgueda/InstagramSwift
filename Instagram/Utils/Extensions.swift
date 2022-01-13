//
//  Extensions.swift
//  Instagram
//
//  Created by MYX on 1/13/22.
//

import Foundation
import UIKit

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder),to:nil,from:nil,for:nil)
    }
}
