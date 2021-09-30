//
//  GenericButtonView.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import UIKit

class GenericButtonView<B>: MainButtonView {
    var buttonData: B?
    
    init(frame: CGRect = .zero, data: B? = nil) {
        self.buttonData = data
        super.init(frame: frame)
        loadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getData() -> B? {
        return buttonData
    }
    
    func loadData() {
        
    }
    
    func setData(with value: B?) {
        self.buttonData = value
        loadData()
    }
}

