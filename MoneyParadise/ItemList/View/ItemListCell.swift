//
//  ItemListCell.swift
//  MoneyParadise
//
//  Created by 满孝意 on 2017/12/19.
//  Copyright © 2017年 满孝意. All rights reserved.
//

import UIKit

class ItemListCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var actorLabel: UILabel!
    
    var itemModel: ItemListModel? {
        didSet {
            if let iconStr = itemModel?.icon {
                iconImageView.image = UIImage(named: iconStr)
            }
            
            if let titleStr = itemModel?.title {
                titleLabel.text = titleStr
            }
            if let infoStr = itemModel?.info {
                infoLabel.text = infoStr
            }
            if let actorStr = itemModel?.actor {
                actorLabel.text = actorStr
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        iconImageView.layer.cornerRadius = 5
        iconImageView.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension ItemListCell {
    class func cellWithTableView(tableView: UITableView) -> ItemListCell {
        let cell: ItemListCell = Bundle.main.loadNibNamed("ItemListCell", owner: nil, options: nil)?.last as! ItemListCell
        
        return cell
    }
}



