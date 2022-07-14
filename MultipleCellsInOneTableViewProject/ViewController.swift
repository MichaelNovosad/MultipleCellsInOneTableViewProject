//
//  ViewController.swift
//  MultipleCellsInOneTableViewProject
//
//  Created by Michael Novosad on 14.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
    let table = UITableView()
       
        table.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        table.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            //show image cell
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            cell.configure(with: "image1")
            return cell
        }
        if indexPath.row == 1 {
            //show image cell
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier, for: indexPath) as! CodedTableViewCell
            cell.configure()
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = "Hello world"
        return cell
    }
    
}

