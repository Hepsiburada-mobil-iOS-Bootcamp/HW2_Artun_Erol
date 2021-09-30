//
//  ActionButton.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 29.09.2021.
//

import Foundation
import UIKit

typealias buttonCompletion = () -> Void

class ActionButton: GenericButtonView<ActionButtonData> {
    
    override func addComponents() {
        super.addComponents()
        addingTapAction()
        configureButton()
    }
    
    ///Configuring Button's title,label, shadow
    func configureButton() {
        guard let data = getData() else { return }
        
        backgroundColor = data.type?.value
        setTitle(data.title, for: .normal)
        setTitleColor(.white, for: .normal)
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 0.4
        
        layer.cornerRadius = 10
        
    }
    
    //MARK: - Tapping Actions
    
    ///Tap Action called during init of the button.
    func addingTapAction() {
        self.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    ///DidTapButton gets the listener of the data, which is called in viewController by using completion block
    @objc func didTapButton() {
        guard let data = getData() else {return}
        data.buttonActionListener?()
        animateButton()
    }
    
    
    
}
