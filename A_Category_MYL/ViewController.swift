//
//  ViewController.swift
//
//  Created by casa on 2020/2/21.
//  Copyright © 2020 casa. All rights reserved.
//

import UIKit
import CTMediator
import SwiftHandyFrame

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.hf.fill()
    }

    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.text = dataSource[indexPath.row]
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let result = CTMediator.sharedInstance().A_Category_MYL_showViewController(name: "casa") { (responseString) in
                debugPrint(responseString)
            }
            print(result as Any)
        }
        if indexPath.row == 1 {
            let result = CTMediator.sharedInstance().A_Category_MYL_demo(name: "1111") { (responseString) in
                debugPrint(responseString)
            }
            print(result as Any)
        }
        if indexPath.row == 2 {
            let result = CTMediator.sharedInstance().A_Category_MYL_demo_2(name: "22") { (responseString) in
                debugPrint(responseString)
            }
            print(result as Any)
        }
    }

    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }

    // MARK: Getters and Setters
    private lazy var tableView:UITableView = {
        let _tableView = UITableView.init(frame: .zero, style: .plain)
        _tableView.delegate = self
        _tableView.dataSource = self
        _tableView.tableFooterView = UIView()
        _tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return _tableView
    }()

    private lazy var dataSource:[String] = {
        return [
            "test",
            "demo",
            "demo2"
        ]
    }()
}
