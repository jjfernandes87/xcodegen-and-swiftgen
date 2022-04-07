//
//  HomeViewController.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Properties

    var presenter: HomePresenterProtocol
    
    // MARK: Components

    lazy var homeView: HomeView = {
        let homeView = HomeView()
        homeView.delegate = self
        return homeView
    }()
    
    // MARK: Init

    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError(Localization.Generic.fatalError)
    }
    
    override func viewDidLoad() {
        presenter.viewDidLoad()
        let rightButton = Localization.Modules.HomeViewController.rightBarButtonItem
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: rightButton, style: .plain, target: self, action: #selector(openProfile))
    }

    override func loadView() {
        self.view = homeView
    }
    
    // MARK: Methods

    @objc
    func openProfile() {
        let navigationController = UserProfileRouter.createModule()
        self.present(navigationController, animated: true)
    }
}

// MARK: Extensions

extension HomeViewController: HomeViewDelegate {
    func didSelectActivity() {
        let activityDetailsViewController = ActivityDetailsRouter.createModule()
        self.navigationController?.pushViewController(activityDetailsViewController, animated: true)
    }
}

extension HomeViewController: HomePresenterDelegate {
    func showData() {
        print("HomeViewController - HomePresenterDelegate - showData()")
    }
}
