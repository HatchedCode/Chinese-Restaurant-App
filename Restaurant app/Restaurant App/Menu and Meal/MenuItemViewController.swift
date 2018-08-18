//
//  MenuItemViewController.swift
//  Restaurant App
//
//  Created by Osman Bakari on 8/16/18.
//  Copyright © 2018 Osman Bakari. All rights reserved.
//

import UIKit

class MenuItemViewController: UIViewController {
    @IBOutlet weak var PathRow: UILabel!
    var StringTester: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  PathRow.text = ""
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PathRow?.text = StringTester
        
    }

    override func didReceiveMemoryWarning() {
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
