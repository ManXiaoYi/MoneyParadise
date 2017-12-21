//
//  ItemListViewModel.swift
//  MoneyParadise
//
//  Created by 满孝意 on 2017/12/18.
//  Copyright © 2017年 满孝意. All rights reserved.
//

import UIKit

class ItemListViewModel: NSObject {
    
    lazy var listModels: [ItemListModel] = [ItemListModel]()
}

extension ItemListViewModel {
    
    func requestData(_ finishCallback: @escaping () -> ()) {
        
        let listItems = NSArray(contentsOfFile: Bundle.main.path(forResource: "ItemList", ofType: "plist")!)
        
        guard let array = listItems else { return }
        
        for dict in array {
            self.listModels.append(ItemListModel(dict: dict as! [String : NSObject]))
        }
        
        finishCallback()
    }
}
