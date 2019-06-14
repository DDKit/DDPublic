//
//  Rx_Cell.swift
//  Alamofire
//
//  Created by DCH on 2019/6/14.
//

import Foundation
import RxSwift

public class RxTableViewCell: UITableViewCell {
    
    public private(set) var reuseDisposeBag = DisposeBag()
    
    public override func prepareForReuse() {
        reuseDisposeBag = DisposeBag()
        super.prepareForReuse()
    }
}

public class RxCollectionViewCell: UICollectionViewCell {
    
    public private(set) var reuseDisposeBag = DisposeBag()
    
    public override func prepareForReuse() {
        reuseDisposeBag = DisposeBag()
        super.prepareForReuse()
    }
}
