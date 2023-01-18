//  insetTextfield.swift

//  cazait_hsseor

//

//  Created by 홍서린 on 2023/01/16.

//

import Foundation

import UIKit

class InsetTextField : UITextField {
    var insetX: CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    var insetY: CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy:insetY)
    }
    
}
