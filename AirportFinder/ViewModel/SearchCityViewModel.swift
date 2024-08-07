//
//  SearchCityViewModel.swift
//  AirportFinder
//
//  Created by Eren Koç on 6.08.2024.
//

import RxCocoa

protocol SearchCityViewPresentable {
    
    typealias Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
}

class SearchCityViewModel: SearchCityViewPresentable{
    
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    
    init(input: SearchCityViewPresentable.Input) {
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
    }
}

private extension SearchCityViewModel {
    
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output {
        return ()
    }
}
