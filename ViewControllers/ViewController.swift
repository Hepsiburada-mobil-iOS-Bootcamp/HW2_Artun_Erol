//
//  ViewController.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var cameraButton: ActionButton!
    private var photoButton: ActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpButtons()
        
    }
    
    //MARK: -Setting Up buttons constraints & Actions and adding them to view.
    
    func setUpButtons() {
        
        cameraButton = ActionButton(frame: .zero, data: ActionButtonData(title: "Camera", type: .positive).actionButtonListener(by: {
            self.present(CameraViewController(), animated: true, completion: nil)
        }))
        
        photoButton = ActionButton(frame: .zero, data: ActionButtonData(title: "Photos", type: .photos).actionButtonListener(by: {
            self.present(PhotosViewController(), animated: true, completion: nil)
        }))
        
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        photoButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(cameraButton)
        view.addSubview(photoButton)
        
        NSLayoutConstraint.activate([
            cameraButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            cameraButton.widthAnchor.constraint(equalToConstant: 120),
            cameraButton.heightAnchor.constraint(equalToConstant: 50),
            
            photoButton.topAnchor.constraint(equalTo: cameraButton.bottomAnchor,constant: 35),
            photoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            photoButton.widthAnchor.constraint(equalToConstant: 120),
            photoButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
}

