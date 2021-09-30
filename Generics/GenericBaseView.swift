//
//  GenericBaseView.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import UIKit

class GenericBaseView<T>: BaseView {
    var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData() {
        
    }
    
    func getData() -> T? {
        return self.data
    }
    
    func setData(with value:T) {
        data = value
        loadData()
    }
    
}
