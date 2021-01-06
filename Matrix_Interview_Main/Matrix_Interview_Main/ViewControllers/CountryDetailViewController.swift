//
//  CountryDetailViewController.swift
//  Matrix_Interview_Main
//
//  Created by hyperactive on 06/01/2021.
//

import UIKit

class CountryDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var borderingCountries: [Country] = []
    var selectedCountry: Country!
    
    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if borderingCountries.count == 0 {
            return 1
        }
        return borderingCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: Constants.cellIdentifier)
        }
        
        if borderingCountries.count > 0 {
            cell!.textLabel?.text = borderingCountries[indexPath.row].name
            cell!.detailTextLabel?.text = borderingCountries[indexPath.row].nativeName
        } else {
            cell!.textLabel?.text = "No counties have borders with \(selectedCountry.name)"
        }
        
        return cell!
    }
    
    func setTableView() {
        view.pin(view: tableView, with: .zero)
        tableView.delegate = self
        tableView.dataSource = self
    }
}
