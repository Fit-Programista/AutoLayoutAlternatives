//
//  AutoLayoutViewController.swift
//  AutoLayoutAlternatives
//
//  Created by Tomasz Kaminski on 9/17/18.
//  Copyright © 2018 Tomasz Kamiński. All rights reserved.
//

import UIKit
import PinLayout

final class PinLayoutViewController: BaseLayoutViewController {
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    pinViews()
  }
  
  private func pinViews() {
    firstView.pin.top(40).width(75).height(80)
    sixthView.pin.width(340).height(150).top(to: firstView.edge.bottom).hCenter().marginTop(10)
    firstView.pin.start(to: sixthView.edge.start)
    
    secondView.pin.top(to: firstView.edge.top).width(125).height(80).start(to: firstView.edge.end).marginStart(10)
    thirdView.pin.top(to: firstView.edge.top).width(50).height(80).start(to: secondView.edge.end).marginStart(10)
    fourthView.pin.top(to: firstView.edge.top).width(60).height(35).start(to: thirdView.edge.end).marginStart(10)
    fifthView.pin.start(to: fourthView.edge.start).width(60).height(35).top(to: fourthView.edge.bottom).marginTop(10)
  }
}
