//
//  ItemListModel.swift
//  MoneyParadise
//
//  Created by 满孝意 on 2017/12/18.
//  Copyright © 2017年 满孝意. All rights reserved.
//

import UIKit

@objcMembers

class ItemListModel: NSObject {
    var icon: String = ""
    var title: String = ""
    var info: String = ""
    var actor: String = ""
    var urlStr: String = ""
    
    init(dict: [String: NSObject]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) { }
}
