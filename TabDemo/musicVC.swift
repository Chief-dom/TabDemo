//
//  musicVC.swift
//  TabDemo
//
//  Created by Dominik Huffield on 4/7/21.
//

import UIKit

class musicVC: UIViewController {

    @IBOutlet weak var musicBar: UISlider!
    @IBOutlet weak var songMax: UILabel!
    @IBOutlet weak var songCurrent: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        songMax.text = String(musicBar.maximumValue)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func skipForward(_ sender: UIButton) {
        musicBar.value+=0.2
        songCurrent.text = String(format: "%.2f", musicBar.value)
    }
    
    @IBAction func skipBack(_ sender: UIButton) {
        musicBar.value-=0.2
        songCurrent.text = String(format: "%.2f", musicBar.value)
    }
    @IBAction func slideMusicBar(_ sender: Any) {
        songCurrent.text = String(format: "%.2f", musicBar.value)
    }
}
