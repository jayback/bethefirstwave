//
//  eventsTableViewController.swift
//  beTheFirstWave
//
//  Created by Macbook on 26/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class eventsTableViewController: UITableViewController {

    var VM = viewModel()
    var sectionArray: [sectionsEvents] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        sectionArray = VM.tableViewSectionArray()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sectionArray[section].allEvents.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! eventsTableViewCell

        cell.setCell(name:sectionArray[indexPath.section].allEvents[indexPath.row].name, logo: sectionArray[indexPath.section].allEvents[indexPath.row].eventImage)
//        cell.textLabel?.text = sectionArray[indexPath.section].events[indexPath.row].name
        return cell
    }
  

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionArray[section].sectionName
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
    // MARK: - Navigation*/

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "eventDetails"{
            if let i = tableView.indexPathForSelectedRow{
                let destVC = segue.destination as! detailsViewController
                destVC.eventDescriptionText = sectionArray[i.section].allEvents[i.row].shortEventSummary()
                destVC.eventName = sectionArray[i.section].allEvents[i.row].name
            }
        }
    }

}
