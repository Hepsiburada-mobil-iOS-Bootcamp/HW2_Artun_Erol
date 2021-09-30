//
//  ActionButtonData.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import UIKit

enum ButtonType:GenericValueProtocol {
    
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .camera:
            return UIColor(hue: 0.5028, saturation: 1, brightness: 0.93, alpha: 1.0)
        case .photos:
            return UIColor(hue: 0.1083, saturation: 1, brightness: 0.98, alpha: 1.0)
        case .positive:
            return UIColor(hue: 0.4194, saturation: 1, brightness: 0.99, alpha: 1.0)
        case .negative:
            return UIColor(hue: 0.0056, saturation: 0.68, brightness: 1, alpha: 1.0)
            
        }
    }
    
    case camera
    case photos
    case positive
    case negative
}

class ActionButtonData {
    
    private(set) var title: String?
    private(set) var type: ButtonType?
    private(set) var buttonActionListener: buttonCompletion?
    
    init(title: String, type: ButtonType) {
        self.title = title
        self.type = type
    }
    
    func actionButtonListener(by buttonAction: buttonCompletion?) -> Self {
        buttonActionListener = buttonAction
        return self
    }
    
}

