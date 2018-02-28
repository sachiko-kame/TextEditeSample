//
//  ViewController.swift
//  TextEditSample
//
//  Created by 水野祥子 on 2018/02/28.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewControllerModel = ViewContorollerModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllerModel.TableListtapded = { num in
            self.Patternhow(Num:num)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func loadView() {
        self.view = ViewControllerView(model: viewControllerModel)
    }
    
    func Patternhow(Num:Int){
        print("Pattern")
        var viewcontollore:UIViewController!
        switch Num {
        case 0:
            viewcontollore = Pattern1ViewController()
            viewcontollore.view.backgroundColor = .red
        case 1:
            viewcontollore = Pattern1ViewController()
            viewcontollore.view.backgroundColor = .green
        default:
            viewcontollore = Pattern1ViewController()
            viewcontollore.view.backgroundColor = .orange
        }
        
        self.navigationController?.pushViewController(viewcontollore, animated: true)
    }


}


