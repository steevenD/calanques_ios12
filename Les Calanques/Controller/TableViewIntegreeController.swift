//
//  TableViewIntegreeController.swift
//  Les Calanques
//
//  Created by Steeven DEMAY on 17/10/2019.
//  Copyright © 2019 Steeven DEMAY. All rights reserved.
//

import UIKit

class TableViewIntegreeController: UITableViewController {
    
    var calanques: [Calanque] = []
    var cellId = "CalanqueCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calanques = CalanqueCollection().all()
        
        //image en background
        tableView.backgroundColor = UIColor.clear
        let bg = UIImageView(frame: view.bounds)
        bg.image = calanques[0].image
        bg.contentMode = .scaleAspectFill
        tableView.backgroundView = bg
    }

    // MARK: - Table view data source

    //nb de section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    //nb de lignes
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calanques.count
    }

    //cellule
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? CalanqueCell {
            cell.setupCell(calanques[indexPath.row])
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            
            let calanque = calanques[indexPath.row]
            
            cell.textLabel?.text = calanque.nom
            cell.imageView?.image = calanque.image
            
            return cell
        }
        
    }
    
    //retourner une hauteur de cellule
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
