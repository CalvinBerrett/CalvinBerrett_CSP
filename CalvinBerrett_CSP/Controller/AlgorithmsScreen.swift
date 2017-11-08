//
//  AlgorithmsScreen.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 10/26/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit

class AlgorithmsScreen: UIViewController
{
    
    @IBOutlet weak var algorithmText: UILabel!
    // MARK: Data members
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        // TODO: Define algorithm and all steps
        let algorithm : String = "These are instructions to create a project in java using Eclipse and Github \n"
        let stepOne : String = "First, create new java project file"
        let stepTwo : String = "Second, create GitHub repository of the java project"
        let stepThree : String = "Then in the src folder in project, create 3 packages (Controller, Model, View)"
        let stepFour : String = "Next, create Controller and Runner classes in package: Controller"
        let stepFive : String = "Fifth, create Display class in package: View"
        let stepSix : String = "Lastly, create class of the same name as your project inside package: Model"
        
        //TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet : String = "<3"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string : formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        return paragraphStyle
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
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
