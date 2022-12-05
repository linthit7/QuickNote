//
//  TextViewController.swift
//  QuickNote
//
//  Created by Lin Thit Khant on 12/5/22.
//

import Foundation
import UIKit

class TextViewController: UIViewController {
    
    var text: String = ""
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        textView.text = text
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    
}
