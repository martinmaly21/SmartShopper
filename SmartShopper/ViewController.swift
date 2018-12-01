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
    @IBOutlet weak var thumbPicture: UIImageView!
    var cardBehindHasBeenCreated = false
    

    
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
    
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        //user has touched card
        
    
        if (cardBehindHasBeenCreated == false) {
            
            let newCard = UIView(frame: productView.frame)
            newCard.backgroundColor = UIColor.red
            //append new card to array
            view.addSubview(newCard)
            makeNextCardShow()
            cardBehindHasBeenCreated = true
        }
        
        
        
        
        let card = sender.view!
        //might need to change paramater below to 'view' from 'card'
        let point = sender.translation(in: card)
        let xFromCenter = card.center.x - view.center.x
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        
        if xFromCenter > 0 {
            thumbPicture.image = #imageLiteral(resourceName: "thumbUp.png")
        } else {
            thumbPicture.image = #imageLiteral(resourceName: "thumbDown.png")
        }
        
        thumbPicture.alpha = abs((xFromCenter) / view.center.x)
        
        if sender.state == UIPanGestureRecognizer.State.ended {
            if card.center.x < 75 {
                //move off to left
                UIView.animate(withDuration: 0.3) {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                    card.alpha = 0
                }
                cardBehindHasBeenCreated = false
                return
            }
            else if card.center.x > (view.frame.width - 75) {
                //move off to right
                UIView.animate(withDuration: 0.3) {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                }
                cardBehindHasBeenCreated = false
                return
            }
            //why here?
            UIView.animate(withDuration: 0.2) {
                //animates same card back to middle if it is not changed,
                card.center = self.view.center
                self.thumbPicture.alpha = 0
            }
        }
        

        
        
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
        productView.bringSubviewToFront(thumbPicture)
    }
    
    func makeNextCardShow() {
        //update cards images and shit
        
        
    }
    
    //no categories but okay
    // Also when user begins touch on view, then thats when the next card should appear.
}

