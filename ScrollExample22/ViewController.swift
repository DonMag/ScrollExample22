//
//  ViewController.swift
//  ScrollExample22
//
//  Created by Don Mag on 3/30/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

	@IBOutlet var scrollView: UIScrollView!

	@IBOutlet var yellowView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		scrollView.delegate = self
	}

	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		// set yellowView alpha to the percentage that it is covered
		yellowView.alpha = (100.0 - min(100.0, scrollView.contentOffset.y)) / 100.0
	}

}

