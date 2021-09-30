//
//  BaseView.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import Foundation
import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorComponents()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func addMajorComponents() {
        
    }
}
