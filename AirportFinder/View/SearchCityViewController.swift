//
//  ViewController.swift
//  AirportFinder
//
//  Created by Eren Koç on 6.08.2024.
//

import UIKit
import RxSwift

class SearchCityViewController: UIViewController {

    @IBOutlet private weak var roundedView: UIView!
    @IBOutlet private weak var searchTextField: UITextField!
    @IBOutlet private weak var tableView: UITableView!
    
    var viewModel: SearchCityViewPresentable!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

