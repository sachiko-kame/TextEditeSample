//
//  ViewContorollerModel.swift
//  TextEditSample
//
//  Created by 水野祥子 on 2018/02/28.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewContorollerModel: NSObject {
    let List:Array<String> = ["Pattern1", "Pattern2", "Pattern3"]
    var TableListtapded:((_ num:Int) -> ())?

}

extension ViewContorollerModel:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel?.text = List[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.TableListtapded!(indexPath.row)
    }
    
    
}
