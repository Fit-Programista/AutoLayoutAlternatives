//
//  AutoLayoutViewController.swift
//  AutoLayoutAlternatives
//
//  Created by Tomasz Kaminski on 9/17/18.
//  Copyright © 2018 Tomasz Kamiński. All rights reserved.
//

import UIKit

final class AutoLayoutViewController: BaseLayoutViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    constraintViews()
  }
  
  private func constraintViews() {
    NSLayoutConstraint.activate([
      firstView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
      secondView.topAnchor.constraint(equalTo: firstView.topAnchor),
      thirdView.topAnchor.constraint(equalTo: firstView.topAnchor),
      fourthView.topAnchor.constraint(equalTo: firstView.topAnchor),
      
      secondView.leadingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: 10),
      thirdView.leadingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: 10),
      fourthView.leadingAnchor.constraint(equalTo: thirdView.trailingAnchor, constant: 10),
      
      fifthView.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor),
      fifthView.topAnchor.constraint(equalTo: fourthView.bottomAnchor, constant: 10),
      
      sixthView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 10),
      sixthView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      firstView.leadingAnchor.constraint(equalTo: sixthView.leadingAnchor),
      
      firstView.widthAnchor.constraint(equalToConstant: 75),
      firstView.heightAnchor.constraint(equalToConstant: 80),
      
      secondView.widthAnchor.constraint(equalToConstant: 125),
      secondView.heightAnchor.constraint(equalToConstant: 80),
      
      thirdView.widthAnchor.constraint(equalToConstant: 50),
      thirdView.heightAnchor.constraint(equalToConstant: 80),
      
      fourthView.widthAnchor.constraint(equalToConstant: 60),
      fourthView.heightAnchor.constraint(equalToConstant: 35),
      
      fifthView.widthAnchor.constraint(equalToConstant: 60),
      fifthView.heightAnchor.constraint(equalToConstant: 35),
      
      sixthView.widthAnchor.constraint(equalToConstant: 340),
      sixthView.heightAnchor.constraint(equalToConstant: 150),
    ])
  }
}
