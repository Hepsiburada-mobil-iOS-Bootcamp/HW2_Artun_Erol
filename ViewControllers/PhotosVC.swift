//
//  PhotosVC.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import Foundation
import UIKit

class PhotosViewController: UIViewController {
    
    var permissionView : PhotosPermissionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    //Adding permissionView to view hierarcy
    
    func configureView() {
        permissionView = PhotosPermissionView()
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
