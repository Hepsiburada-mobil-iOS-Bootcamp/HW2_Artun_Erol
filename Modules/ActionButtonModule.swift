//
//  ActionButtonModule.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import UIKit

class ActionModule: GenericButtonView<ActionButtonModuleData> {
    
    //MARK: - Computed Properties
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [negativeButton, positiveButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .horizontal
        temp.spacing = 20
        return temp
    }()
    
    private lazy var negativeButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 140).isActive = true
        return temp
    }()
    
    private lazy var positiveButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 140).isActive = true
        return temp
    }()
    
    //Initalizing the components with UIButton
    override func addComponents() {
        super.addComponents()
        addUserComponents()
    }
    
    private func addUserComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
        
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            
        ])
        
    }
    
    override func loadData() {
        super.loadData()
        guard let data = getData() else { return }
        negativeButton.setData(with: data.negativeButtonData)
        positiveButton.setData(with: data.positiveButtonData)

    }
    
}
