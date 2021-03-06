//
//  Data&InfoScreen.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 10/26/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit

class Data_InfoScreen: UITableViewController
{
    lazy var bucketList : [BucketItem] =
    {
        return loadBucketFromFile()
    }()
    
    private func loadBucketFromFile() -> [BucketItem]
    {
        var items = [BucketItem]()
        if let filePath = Bundle.main.url(forResource: "bucket", withExtension: "csv")
        {
            do
            {
                let input = try String(contentsOf: filePath)
                let bucketLines = input.components(separatedBy: "\n")
                for line in bucketLines
                {
                    let item = line.components(separatedBy: ",")
                    items.append(BucketItem(contents: item[0],author: item[1]))
                }
            }
            catch
            {
                print("File load error")
            }
        }
        return items
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return bucketList.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "dataIdentifier", for: indexPath) as! BucketItemCell
        
        currentCell.bucketItem = bucketList[indexPath.row]
        
        return currentCell
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
}
