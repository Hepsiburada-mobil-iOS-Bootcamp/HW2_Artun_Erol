//
//  PermissionViewController.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import Foundation
import UIKit

class PermissionViewController: UIViewController {
    
    var permissionView : PermissionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTest()
        
    }
    
    func configureTest() {
        permissionView = PermissionView()
        permissionView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(permissionView)
        
        NSLayoutConstraint.activate([
            permissionView.topAnchor.constraint(equalTo: view.centerYAnchor),
            permissionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            permissionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
            
        ])
    }
    
}
