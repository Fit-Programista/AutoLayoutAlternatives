//
//  AutoLayoutViewController.swift
//  AutoLayoutAlternatives
//
//  Created by Tomasz Kaminski on 9/17/18.
//  Copyright © 2018 Tomasz Kamiński. All rights reserved.
//

import UIKit
import FlexLayout

final class FlexLayoutViewController: UIViewController {
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    layoutSubviews()
  }
  
  private func layoutSubviews() {
    self.view.flex.alignItems(.center).addItem().marginTop(40).define { (outerFlex) in
      outerFlex.addItem().direction(.row).define({ (innerUpperFlex) in
        innerUpperFlex.addItem(firstView).width(75).height(80).marginEnd(10)
        innerUpperFlex.addItem(secondView).width(125).height(80).marginEnd(10)
        innerUpperFlex.addItem(thirdView).width(50).height(80).marginEnd(10)
        innerUpperFlex.addItem().define({ (mostInnerFlex) in
          mostInnerFlex.addItem(fourthView).width(60).height(35).marginBottom(10)
          mostInnerFlex.addItem(fifthView).width(60).height(35)
        })
      })
      outerFlex.addItem(sixthView).width(340).height(150).top(10)
    }
    
    self.view.flex.layout()
  }
}
