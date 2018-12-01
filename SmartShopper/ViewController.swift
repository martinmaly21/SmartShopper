//
//  ViewController.swift
//  SmartShopper
//
//  Created by Martin Maly on 2018-12-01.
//  Copyright © 2018 Martin Maly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var productView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProductView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func setUpBackground() {
        
        
        
    }
    
    
    func setUpProductView() {
        productView.backgroundColor = UIColor.clear
        let productViewLayer = CAGradientLayer()
        productViewLayer.frame = productView.bounds
        productViewLayer.colors = [UIColor.lightGray.cgColor, UIColor.white.cgColor]
        productViewLayer.cornerRadius = 10
        productViewLayer.shadowRadius = 5
        productViewLayer.shadowOffset = CGSize(width: 0, height: 5)
        productViewLayer.shadowOpacity = 0.2
        productView.layer.addSublayer(productViewLayer)
    }
    
}

