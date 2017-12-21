//
//  ViewController.swift
//  MoneyParadise
//
//  Created by 满孝意 on 2017/12/18.
//  Copyright © 2017年 满孝意. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    lazy var itemVM: ItemListViewModel = ItemListViewModel()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(self.tableView)
        
        itemVM.requestData {
            self.tableView.reloadData()
        }
    }
    
}

extension ItemListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int  {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemVM.listModels.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ItemListCell = ItemListCell.cellWithTableView(tableView: tableView)
        
        cell.itemModel = itemVM.listModels[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let itemModel: ItemListModel = itemVM.listModels[indexPath.row]
        
        UIApplication.shared.openURL(URL(string: itemModel.urlStr)!)
    }
}






