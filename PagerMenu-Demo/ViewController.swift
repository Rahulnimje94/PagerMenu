//
//  ViewController.swift
//  PagerMenu-Demo
//
//  Created by Anand on 05/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pageMenu: CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpMenu()
    }
    
    fileprivate func setUpMenu(){
        var controllerArray : [UIViewController] = []
        let controller1 : FirstViewController = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        controller1.title = "First"
        controllerArray.append(controller1)
        
        let controller2 : SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller2.title = "Second"
        controllerArray.append(controller2)
        
        let controller3 : ThirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        controller3.title = "Third"
        controllerArray.append(controller3)
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor.clear),
            .viewBackgroundColor(UIColor.purple),
            .menuItemSeparatorWidth(1),
            .menuItemSeparatorColor(UIColor.darkGray),
            .selectionIndicatorColor(UIColor.white),
            .bottomMenuHairlineColor(UIColor(red: 0/255.0, green: 112.0/255.0, blue: 205/255.0, alpha: 1.0)),
            .menuHeight(44.0),
            .menuItemWidth((self.view.frame.width/2)-25),
            .centerMenuItems(true),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(44.0),
            .unselectedMenuItemLabelColor(UIColor.white.withAlphaComponent(0.50))
        ]
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 20.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
    }
    
    func didMoveToPage(_ controller: UIViewController, index: Int) {
        print("did move to page")}
    
    func willMoveToPage(_ controller: UIViewController, index: Int) {
        print("will move to page")}
}
