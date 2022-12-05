//
//  NoteTableViewController.swift
//  QuickNote
//
//  Created by Lin Thit Khant on 12/5/22.
//

import UIKit

class NoteTableViewController: UITableViewController {
    
    var notes = ["Note 1", "Note 2", "Note 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 60
    }
    
    @IBAction func composeButtonPressed(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "composeToText", sender: self)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath)
        
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
    }
    
    //MARK: - Table view delegate method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "cellToText", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let textVC = segue.destination as! TextViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            textVC.text = notes[indexPath.row]
        }
        
    }

}
