//
//  AutoLayoutViewController.swift
//  AutoLayoutAlternatives
//
//  Created by Tomasz Kaminski on 9/17/18.
//  Copyright © 2018 Tomasz Kamiński. All rights reserved.
//

import UIKit

class BaseLayoutViewController: UIViewController {
  var firstView: UIView!
  var secondView: UIView!
  var thirdView: UIView!
  var fourthView: UIView!
  var fifthView: UIView!
  var sixthView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  private func setupViews() {
    firstView = initView(with: .red, identifier: "firstView")
    secondView = initView(with: .green, identifier: "secondView")
    thirdView = initView(with: .blue, identifier: "thirdView")
    fourthView = initView(with: .yellow, identifier: "fourthView")
    fifthView = initView(with: .magenta, identifier: "fifthView")
    sixthView = initView(with: .orange, identifier: "sixthView")
    
    [firstView, secondView, thirdView, fourthView, fifthView, sixthView].forEach { self.view.addSubview($0) }
  }
  
  private func initView(with color: UIColor, identifier: String) -> UIView {
    let view = UIView(frame: .zero)
    view.accessibilityIdentifier = identifier
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = color
    view.layer.cornerRadius = 10
    return view
  }
}
