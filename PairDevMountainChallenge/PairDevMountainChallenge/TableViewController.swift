//
//  TableViewController.swift
//  PairDevMountainChallenge
//
//  Created by Mitch Praag on 8/29/17.
//  Copyright © 2017 Mitch Praag. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addPerson2Button(_ sender: Any) {
        let personName = insertNameField.text
        PersonController1.createPerson1(personName)
        insertNameField.text = ""
        tableView.reloadData()
    }
    @IBAction func AddbuttonTapped(_ sender: Any) {
        let personName = insertNameField.text
        PersonController1.createPerson2(personName)
        insertNameField.text = ""
        tableView.reloadData()
        
        
    }
    @IBAction func RandomizeButtonTapped(_ sender: Any) {
        didWork()
    }
    @IBOutlet weak var AddNameButton: UIBarButtonItem!
    @IBOutlet weak var insertNameField: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PersonController1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person1 = PersonController1.sharedController.persons[indexPath.row]
        let person2 = PersonController2.sharedController2.persons2[indexPath.row]
        
        cell.textLabel?.text = person1.name1
        cell.detailTextLabel?.text = person2.name2
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
