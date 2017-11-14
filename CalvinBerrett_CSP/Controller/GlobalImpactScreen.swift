//
//  GlobalImpactScreen.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 10/26/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit

class GlobalImpactScreen: UIViewController
{
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var imageOne: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.

    }

    private func setup() -> Void
    {
        secondLabel.text = "Water is essential for everybody, and the dirty water that a lot of people currently drink harms their health. So we need to get clean water for people to live healthier lives"
        imageOne.image = #imageLiteral(resourceName: "AppGUI")
        thirdLabel.text = ""
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
