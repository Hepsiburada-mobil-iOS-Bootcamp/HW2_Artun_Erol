//
//  PermissionViewData.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import Foundation
import UIKit

class PermissionViewData {
    private(set) var image: UIImage
    private(set) var label: UILabel
    private(set) var button: ActionModule
    
    init(image: UIImage, label: UILabel,button: ActionModule) {
        self.image = image
        self.label = label
        self.button = button
    }
}
