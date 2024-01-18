//
//  ViewController.swift
//  RandomApperanceCircle
//
//  Created by azinavi on 17/1/24.
//

import UIKit

class CircleViewController: UIViewController {
    
    var circleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupCircleView()
        swipeToTopGesture()
        swipeToDownGesture()
        swipeToRightGesture()
        swipeToLeftGesture()
        tapGesture()
        
    }
    
    func setupCircleView() {
        let circleSize: CGFloat = 100
        let randomX = CGFloat.random(in: 0...(view.bounds.width - circleSize))
        let randomY = CGFloat.random(in: 0...(view.bounds.height - circleSize))
        
        circleView.backgroundColor = .white
        circleView.layer.cornerRadius = circleSize / 2
        circleView.frame = CGRect(x: randomX, y: randomY, width: circleSize, height: circleSize)
        view.addSubview(circleView)
    }
    
    func setupView() {
        view.backgroundColor = .black
    }
    
    // Tap gesture
    func tapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        self.circleView.addGestureRecognizer(tapGesture)
    }
    @objc func tap() {
        let circleSize: CGFloat = 100
        let randomX = CGFloat.random(in: 0...(view.bounds.width - circleSize))
        let randomY = CGFloat.random(in: 0...(view.bounds.height - circleSize))
        let randomColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        UIView.animate(withDuration: 0.3) {
            self.circleView.frame = CGRect(x: randomX, y: randomY, width: circleSize, height: circleSize)
        }
        UIView.animate(withDuration: 1.0) {
            self.circleView.backgroundColor = randomColor
        }
        UIView.animate(withDuration: 1.0) {
            self.circleView.transform = .init(scaleX: 1.5, y: 1.5)
        } completion: { _ in
            
            UIView.animate(withDuration: 1.0) {
                self.circleView.transform = .identity
            }
        }
        
    }
    
    // Swipe to TOP gesture
    func swipeToTopGesture() {
        let swipeToTopGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeToTop))
        swipeToTopGesture.direction = .up
        self.circleView.addGestureRecognizer(swipeToTopGesture)
    }
    @objc func swipeToTop() {
        let randomColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        var circleFrame = circleView.frame
        UIView.animate(withDuration: 0.3) {
            circleFrame.origin.y -= 60
            self.circleView.frame = circleFrame
        }
        UIView.animate(withDuration: 1.0) {
            self.circleView.backgroundColor = randomColor
        }
    }
    
    // Swipe to DOWN gesture
    func swipeToDownGesture() {
        let swipeToDownGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeToDown))
        swipeToDownGesture.direction = .down
        self.circleView.addGestureRecognizer(swipeToDownGesture)
    }
    @objc func swipeToDown() {
        let randomColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        var circleFrame = circleView.frame
        UIView.animate(withDuration: 0.3) {
            circleFrame.origin.y += 60
            self.circleView.frame = circleFrame
        }
        UIView.animate(withDuration: 1.0) {
            self.circleView.backgroundColor = randomColor
        }
    }
    
    // Swipe to RIGHT gesture
    func swipeToRightGesture() {
        let swipeToRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeToRight))
        swipeToRightGesture.direction = .right
        self.circleView.addGestureRecognizer(swipeToRightGesture)
    }
    @objc func swipeToRight() {
        let randomColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        var circleFrame = circleView.frame
        UIView.animate(withDuration: 0.3) {
            circleFrame.origin.x += 60
            self.circleView.frame = circleFrame
        }
        UIView.animate(withDuration: 1.0) {
            self.circleView.backgroundColor = randomColor
        }
    }
    
    // Swipe to LEFT gesture
    func swipeToLeftGesture() {
        let swipeToLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeToLeft))
        swipeToLeftGesture.direction = .left
        self.circleView.addGestureRecognizer(swipeToLeftGesture)
    }
    @objc func swipeToLeft() {
        let randomColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        var circleFrame = circleView.frame
        UIView.animate(withDuration: 0.3) {
            circleFrame.origin.x -= 60
            self.circleView.frame = circleFrame
        }
        UIView.animate(withDuration: 1.0) {
            self.circleView.backgroundColor = randomColor
        }
    }
}
