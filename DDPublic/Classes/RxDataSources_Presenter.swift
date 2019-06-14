//
//  RxDataSources_Presenter.swift
//  Alamofire
//
//  Created by DCH on 2019/6/14.
//

import Foundation
import RxSwift
import RxCocoa
import RxDataSources

public protocol ReloadListPresenter {
    associatedtype CellStyle
    typealias Model = ModolType<CellStyle>
    typealias Section = SectionModel<String, Model>
}

public protocol AnimaListPresenter {
    associatedtype CellStyle
    typealias Model = ModolType<CellStyle>
    typealias Section = AnimatableSectionModel<String, Model>
}

public protocol TableReloadListPresenter: ReloadListPresenter {
    typealias DataSource = RxTableViewSectionedReloadDataSource<Section>
    typealias SubDataSource = TableViewSectionedDataSource<Section>
    typealias ConfigureCell = (SubDataSource, UITableView, IndexPath, Model) -> UITableViewCell
}

public protocol ColectionReloadListPresenter: ReloadListPresenter {
    typealias DataSource = RxCollectionViewSectionedReloadDataSource<Section>
    typealias SubDataSource = CollectionViewSectionedDataSource<Section>
    typealias ConfigureCell = (SubDataSource, UITableView, IndexPath, Model) -> UITableViewCell
}

public protocol TableAnimaListPresenter: AnimaListPresenter {
    typealias DataSource = RxTableViewSectionedAnimatedDataSource<Section>
    typealias SubDataSource = TableViewSectionedDataSource<Section>
    typealias ConfigureCell = (SubDataSource, UITableView, IndexPath, Model) -> UITableViewCell
}


public protocol ColectionAnimaListPresenter: AnimaListPresenter {
    typealias DataSource = RxCollectionViewSectionedAnimatedDataSource<Section>
    typealias SubDataSource = CollectionViewSectionedDataSource<Section>
    typealias ConfigureCell = (SubDataSource, UITableView, IndexPath, Model) -> UITableViewCell
}

public struct ModolType<T>: IdentifiableType&Equatable {
    public var identity: String
    public var value: T
    
    public init(_ value: T) {
        self.value = value
        self.identity = "\(Date().timeIntervalSince1970)" + "\(value)"
    }
    
    public static func == (lhs: ModolType<T>, rhs: ModolType<T>) -> Bool {
        return lhs.identity == rhs.identity
    }
}
