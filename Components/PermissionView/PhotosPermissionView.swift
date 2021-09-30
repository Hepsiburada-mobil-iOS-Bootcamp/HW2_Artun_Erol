//
//  PhotosPermissionView.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import UIKit

class PhotosPermissionView: GenericBaseView<PermissionViewData> {
    
    //MARK: - Computed Properties
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.backgroundColor = .cyan
        
        return temp
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [negativeButton, positiveButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.spacing = 10
        temp.contentMode = .scaleToFill
        
        return temp
    }()
    
    private lazy var image: UIImageView = {
        let temp = UIImageView()
        temp.image = UIImage(named: "notif_")
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.contentMode = .scaleToFill
        
        return temp
    }()
    
    private lazy var label: UILabel = {
        let temp = UILabel()
        temp.text = "Please athorize the access to Photos"
        temp.font = .boldSystemFont(ofSize: 18)
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        return temp
    }()
    
    private lazy var positiveButton: ActionButton = {
        let temp = ActionButton(frame: .zero, data: ActionButtonData(title: "Ok", type: .positive).actionButtonListener(by: {
            print("PositiveButtonPressed")
        }))
        
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius  = 10
        
        return temp
    }()
    
    private lazy var negativeButton: ActionButton = {
        let temp = ActionButton(frame: .zero, data: ActionButtonData(title: "Not now", type: .negative).actionButtonListener(by: {
            print("Negative button Pressed")
        }))
        
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius  = 10
        
        return temp
    }()
    
    //Add Major Components meant to init everything inside.
    
    override func addMajorComponents() {
        setViews()
    }
    
    //Setting views by giving them constraints
    
    private func setViews() {
        
        addSubview(containerView)
        containerView.addSubview(buttonStackView)
        containerView.addSubview(image)
        containerView.addSubview(label)
        
        containerView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            buttonStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -30),
            buttonStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            buttonStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            
            negativeButton.widthAnchor.constraint(equalToConstant: 180),
            
            image.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 50),
            image.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            image.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: 20),
            image.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -20),
            image.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: -20),

            image.widthAnchor.constraint(equalToConstant: 150),
            image.heightAnchor.constraint(equalToConstant: 300),
            
            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 30),
            label.widthAnchor.constraint(equalTo: containerView.widthAnchor,constant: -30),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.bottomAnchor.constraint(equalTo: buttonStackView.topAnchor,constant: -20)
                            
        ])
        
    }
    
}
