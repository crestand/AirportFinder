//
//  SearchCityViewModel.swift
//  AirportFinder
//
//  Created by Eren Koç on 6.08.2024.
//

import RxSwift
import RxCocoa
import RxRelay

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
    private let airportService: AirportAPI
    private let bag = DisposeBag()
    
    typealias State = (airports: BehaviorRelay<Set<AirportModel>>, ())
    private let state: State = (airports: BehaviorRelay<Set<AirportModel>>(value: []), ())
    
    init(input: SearchCityViewPresentable.Input,
         airportService: AirportAPI) {
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
        self.airportService = airportService
        self.process()
    }
}

private extension SearchCityViewModel {
    
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output {
        return ()
    }
    
    func process() -> Void {
        self.airportService
            .fetchAirports()
            .map({ Set($0) })
            .map({ [state] in state.airports.accept($0) })
            .subscribe()
            .disposed(by: self.bag)
    }
}
