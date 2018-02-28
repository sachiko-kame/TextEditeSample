//
//  ViewControllerView.swift
//  TextEditSample
//
//  Created by 水野祥子 on 2018/02/28.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewControllerView: UIView {
    
    let tableView = UITableView()
    
    required init(model: ViewContorollerModel) {
        super.init(frame: CGRect.zero)
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        self.tableView.dataSource = model
        self.tableView.delegate = model
        
        self.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //大きさの調節.Viewの操作を行う
    override func layoutSubviews() {
        super.layoutSubviews()
        tableView.frame = ViewFrame
    }
}
