//
//  ViewController.swift
//  StoreApp
//
//  Created by 조재흥 on 19. 4. 9..
//  Copyright © 2019 hngfu. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    //MARK: IBOutlet
    @IBOutlet weak var storeTableView: UITableView!
    
    //MARK: Presenter
    private let storePresenter = StorePresenter()
    
    //MARK: - Methods
    //MARK: Initialization
    override func viewDidLoad() {
        super.viewDidLoad()

        storeTableView.register(UINib(nibName: StoreTableViewCell.nibName, bundle: nil),
                                forCellReuseIdentifier: StoreTableViewCell.identifier)
        storeTableView.register(UINib(nibName: StoreTableViewHeaderView.nibName, bundle: nil),
                                forHeaderFooterViewReuseIdentifier: StoreTableViewHeaderView.identifier)
        storeTableView.dataSource = storePresenter
        storeTableView.delegate = storePresenter
        storeTableView.separatorColor = .clear
    }
}

extension ViewController: StoreTableView {
    
}