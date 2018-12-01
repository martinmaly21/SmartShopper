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
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProductView()
        setUpButtons()
    }
    
    @IBAction func clickedNo(_ sender: UIButton) {
    }
    
    @IBAction func clickedYes(_ sender: UIButton) {
    }
    
    func setUpButtons() {
        noButton.layer.cornerRadius = 0.5 * noButton.bounds.size.width
        noButton.layer.shadowRadius = 6
        noButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        noButton.layer.shadowOpacity = 0.4
        noButton.layer.shadowColor = UIColor.black.cgColor
        
        yesButton.layer.cornerRadius = 0.5 * noButton.bounds.size.width
        yesButton.layer.shadowRadius = 6
        yesButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        yesButton.layer.shadowOpacity = 0.3
        yesButton.layer.shadowColor = UIColor.black.cgColor
    }
    
    
    func setUpProductView() {
        productView.backgroundColor = UIColor.clear
        let productViewLayer = CAGradientLayer()
        productViewLayer.frame = productView.bounds
        productViewLayer.colors = [UIColor.white.cgColor, UIColor.white.cgColor]
        productViewLayer.cornerRadius = 10
        productViewLayer.shadowRadius = 6
        productViewLayer.shadowOffset = CGSize(width: 0, height: 4)
        productViewLayer.shadowOpacity = 0.3
        productViewLayer.borderWidth = 1
        productViewLayer.borderColor = UIColor.lightGray.cgColor
        productView.layer.addSublayer(productViewLayer)
        
        productView.bringSubviewToFront(productTitle)
        productView.bringSubviewToFront(productPrice)
        productView.bringSubviewToFront(productImage)
    }
}

