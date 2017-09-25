//
//  LaucherView.swift
//  LaucherView
//
//  Created by Ngoc Duong Phan on 9/25/17.
//

import Foundation
import UIKit

public class LaucherView: UIView {

  dynamic var duration: Double = 0.6

  private var startFrame: CGRect = CGRect()

  private var endFrame: CGRect = CGRect()

  private var laucherView = UIView()

  private var windowView : UIWindow {
    return UIApplication.shared.keyWindow ?? UIWindow()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

 public func showSlide(width: CGFloat) {
    startFrame =  CGRect(x: -windowView.frame.width, y: 0, width: width, height: windowView.frame.height)
    endFrame = CGRect(x: 0, y: 0, width: width, height: windowView.frame.height)
    self.showLaucher()
  }

 public func showBottom(height: CGFloat) {
    startFrame = CGRect(x: 0, y: windowView.frame.height, width: windowView.frame.width, height: height)
    endFrame = CGRect(x: 0, y: windowView.frame.height - height, width: windowView.frame.width, height: height)
    self.showLaucher()
  }

  private func showLaucher() {
    self.setupLaucherView()
    self.setupSelfView()
    self.show()
  }

  private func show() {
    UIView.animate(withDuration: self.duration, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
      self.laucherView.alpha = 1
      self.frame = self.endFrame
    }, completion: nil)
  }

  private func setupSelfView() {
    windowView.addSubview(self)
    self.frame = startFrame
  }

  private func setupLaucherView() {
    laucherView.backgroundColor = UIColor(white: 0, alpha: 0.4)
    laucherView.frame = windowView.frame
    laucherView.alpha = 0
    laucherView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hide)))
    windowView.addSubview(laucherView)
  }

  public func hide() {
    UIView.animate(withDuration: self.duration, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
      self.laucherView.alpha  = 0
      self.frame = self.startFrame
    }, completion: nil)
  }
}

