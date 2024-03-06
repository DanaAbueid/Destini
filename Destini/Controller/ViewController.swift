//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Dana Sami Abu Eid on 06/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let story0 = "You see a fork in the road."
    let story1 = "Take a left."
    let story2 = "Take a right."
    
    var StorySelection = StoryBrain()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    /*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print("viewIsAppearing")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    */
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        
        StorySelection.nextStory(userChoise: sender.currentTitle!)
        updateUI()

        
    }
    
    
    func updateUI (){
        
            storyLabel.text = StorySelection.getStoryText()
            choice1Button.setTitle(StorySelection.getButtonText(), for: .normal)
            choice2Button.setTitle(StorySelection.getSecButtonText(), for: .normal)
        
    }
}

