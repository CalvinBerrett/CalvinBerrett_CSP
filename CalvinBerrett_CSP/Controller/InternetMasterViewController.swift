//
//  InternetMasterViewController.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 11/29/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{

    private (set) lazy var internetTopics : [String] =
    {
        return[
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide",
        ]
    }()
    
    private func setup() -> Void
    {
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // uncomment the following line to preserve selections between presentations
        self.clearsSelectionOnViewWillAppear = false
    }
    
    //MARK: - Table view data source
    override public func numberOfSections(in tableView: UITableView) ->Int
    {
        //#warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
}
