//
//  TabBarController.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/01/22.
//

import UIKit

class TabBarController: UITabBarController {
	
	override func viewDidLoad() {
		setTabBarColor()
	}

    override func viewWillAppear(_ animated: Bool) {

        let homeTitle = Localization.Components.TabBarController.home
        let homeViewController = HomeRouter.createModule()
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        let homeTabBar = UITabBarItem(title: homeTitle, image: UIImage(named: "house.fill"), tag: 0)
        homeNavigationController.tabBarItem = homeTabBar

        let transfersTitle = Localization.Components.TabBarController.transfers
		let transfersViewController = TransfersRouter.createModule()
		let transfersNavigationController = UINavigationController(rootViewController: transfersViewController)
		let transfersTabBar = UITabBarItem(title: transfersTitle, image: UIImage(named: "arrow.up.arrow.down"), tag: 1)
		transfersNavigationController.tabBarItem = transfersTabBar
		
		self.viewControllers = [homeNavigationController, transfersNavigationController]
	}
	
	private func setTabBarColor() {
		UITabBar.appearance().backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0)
	}
}
