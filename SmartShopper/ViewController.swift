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
    @IBOutlet weak var productRecomondation: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var navBar: UIView!
    @IBOutlet weak var shoppingCartButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProductView()
        setUpButtons()
        setUpNavBar()
    }
    
    @IBAction func clickedNo(_ sender: UIButton) {

    }
    
    @IBAction func clickedYes(_ sender: UIButton) {

    }
    
    func setUpButtons() {
        noButton.layer.cornerRadius = 0.5 * noButton.bounds.size.width
        noButton.layer.shadowRadius = 6
        noButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        noButton.layer.shadowOpacity = 0.4
        noButton.layer.shadowColor = UIColor.black.cgColor
        
        yesButton.layer.cornerRadius = 0.5 * noButton.bounds.size.width
        yesButton.layer.shadowRadius = 6
        yesButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        yesButton.layer.shadowOpacity = 0.4
        yesButton.layer.shadowColor = UIColor.black.cgColor
        
        buyButton.layer.cornerRadius = 0.5 * noButton.bounds.size.width
        buyButton.layer.shadowRadius = 6
        buyButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        buyButton.layer.shadowOpacity = 0.4
        buyButton.layer.shadowColor = UIColor.black.cgColor
    }
    
    @IBAction func clickedSettings(_ sender: UIButton) {
    }
    
    @IBAction func clickedCart(_ sender: UIButton) {
    }
    
    func setUpNavBar() {
        view.sendSubviewToBack(navBar)
        navBar.layer.shadowRadius = 3
        navBar.layer.shadowOpacity = 0.3
        navBar.layer.shadowColor = UIColor.black.cgColor
        navBar.layer.shadowOffset = CGSize(width: 0, height: 2)
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
        productImage.backgroundColor = UIColor.clear
        productView.bringSubviewToFront(productTitle)
        productView.bringSubviewToFront(productPrice)
        productView.bringSubviewToFront(productImage)
        productView.bringSubviewToFront(productRecomondation)
    }
}

