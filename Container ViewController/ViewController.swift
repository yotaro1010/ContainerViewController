//
//  ViewController.swift
//  Container ViewController
//
//  Created by Yotaro Ito on 2020/11/30.
//

import UIKit

class ViewController: UIViewController {

    let secondVC = SecondViewController()
    let thirdVC = ThirdViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      setUp()
        
    }
//    1 　他２つのviewControllerをchildViewControllerにする機能
    private func setUp(){
        addChild(secondVC)
        addChild(thirdVC)
        
        self.view.addSubview(secondVC.view)
        self.view.addSubview(thirdVC.view)
        
//    2  frameの設定と二つのvcを呼びだす機能
        secondVC.didMove(toParent: self)
        thirdVC.didMove(toParent: self)
        
        secondVC.view.frame = self.view.bounds
        thirdVC.view.frame = self.view.bounds
        
//    3
        thirdVC.view.isHidden = true
    }
    
    @IBAction func didTapSegment(segment: UISegmentedControl){
        secondVC.view.isHidden = true
        thirdVC.view.isHidden = true

        if segment.selectedSegmentIndex == 0 {
//            secondvcを表示
            secondVC.view.isHidden = false

        }
        else {
//            thirdvcを表示
            thirdVC.view.isHidden = false

        }
    }

}

