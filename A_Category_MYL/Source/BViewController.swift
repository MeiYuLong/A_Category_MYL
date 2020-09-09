//
//  BViewController.swift
//  A_Category_MYL
//
//  Created by yulong mei on 2020/9/9.
//  Copyright © 2020 yulong mei. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("welcom to 组件化")
        let alert = UIAlertController.init(title: "Hi!", message: "welcom to 组件化", preferredStyle: .alert)
        let action = UIAlertAction.init(title: "OK", style: .default) { (action) in
            self.view.backgroundColor = .systemPink
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}
