//
//  PhoneBookViewController.swift
//  OpenBank
//
//  Created by Aleksander Evtuhov on 15/09/2017.
//  Copyright © 2017 Aleksander Evtuhov. All rights reserved.
//

import UIKit
import ContactsUI
import EPContactsPicker

class PhoneBookViewController: UIViewController,EPPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getphones(_ sender: Any) {
        let contactPickerScene = EPContactsPicker(delegate: self, multiSelection:false, subtitleCellType: SubtitleCellValue.phoneNumber)
        let navigationController = UINavigationController(rootViewController: contactPickerScene)
        self.present(navigationController, animated: true, completion: nil)
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
