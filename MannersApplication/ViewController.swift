//
//  ViewController.swift
//  MannersApplication
//
//  Created by Omar Sherief on 4/18/16.
//  Copyright © 2016 Project(X). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var selectedManner : Manner?


    @IBOutlet weak var mannersTableView: UITableView!
    
    var mannersList : [Manner] =
    [Manner("Eye Contact", false, "eyecontact", "Making eye contact when talking to someone is not only respectful, it also shows you are actually listening to what they are saying" ), Manner("Giving Compliments", false, "compliment", "Do not comment on other people's physical characteristics unless, of course, it's to compliment them, which is always welcome."),
        Manner("Sneezing", false, "sneezing", " Cover your mouth when you cough or sneeze, and don't pick your nose in public."),
        Manner("Using the Restroom", false, "bathroom", "Respect other people's privacy, especilly in public restrooms"),
        Manner("Eating", false, "eating", "Use eating utensils properly. If you are unsure how to do so, ask someone to teach you or watch what people you respect do."),
        Manner("Drinking", false, "drinking", "Just don't do that"),
        Manner("Asking Nicely", false, "asking", "When asking for something, say Please."),
        Manner("Don't make fun of anyone", false,
        "makingfun", "Do not make fun of anyone for any reason. Teasing shows others you are weak, and ganging up on someone else is cruel.")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mannersTableView.dataSource = self
        mannersTableView.delegate = self
        
        let cellNib = UINib(nibName: "MannerTableViewCell", bundle: nil)
        self.mannersTableView.registerNib(cellNib, forCellReuseIdentifier: "mannerCell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mannersList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let mannerAtPosition = self.mannersList[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("mannerCell") as!MannerTableViewCell
        cell.initValues(mannerAtPosition.name!, mannerAtPosition.didLearn!)
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        selectedManner = mannersList[indexPath.row]
        selectedManner!.didLearn = true
        tableView.reloadData()
        self.performSegueWithIdentifier("toMannerDetail", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let MannerDetailVC = segue.destinationViewController as? MannersDetailViewController{
            MannerDetailVC.recievedManner = selectedManner
        }
    }
    

}

