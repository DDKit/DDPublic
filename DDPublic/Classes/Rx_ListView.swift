//
//  Rx_ListView.swift
//  Pods
//
//  Created by DCH on 2019/6/14.
//

import UIKit

extension UITableView {
    
    public func register<C>(_ type: C.Type, bundle: Bundle? = nil, forCellReuseIdentifier identifier: String = "\(C.self)") where C: UITableViewCell {
        let nib = UINib(nibName: "\(C.self)", bundle: bundle)
        register(nib, forCellReuseIdentifier: identifier)
    }
    
    public func dequeueReusableCell<C>(
        _ type: C.Type = C.self,
        withIdentifier identifier: String = "\(C.self)"
        ) -> C where C: UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: identifier) as? C else {
            register(C.self,forCellReuseIdentifier: identifier)
            return dequeueReusableCell(C.self, withIdentifier: identifier)
        }
        return cell
    }
    
    public func dequeueReusableCell<C>(
        _ type: C.Type = C.self,
        withIdentifier identifier: String = "\(C.self)",
        for indexPath: IndexPath
        ) -> C where C: UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? C else {
            register(C.self,forCellReuseIdentifier: identifier)
            return dequeueReusableCell(C.self, withIdentifier: identifier, for: indexPath)
        }
        return cell
    }
}


extension UICollectionView {
    
    public func register<C>(_ type: C.Type, bundle: Bundle? = nil, forCellReuseIdentifier identifier: String = "\(C.self)") where C: UICollectionViewCell {
        let nib = UINib(nibName: "\(C.self)", bundle: bundle)
        register(nib, forCellWithReuseIdentifier: identifier)
    }
    
    public func dequeueReusableCell<C>(
        _ type: C.Type = C.self,
        withIdentifier identifier: String = "\(C.self)",
        for indexPath: IndexPath
        ) -> C where C: UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? C else {
            register(C.self,forCellReuseIdentifier: identifier)
            return dequeueReusableCell(C.self, withIdentifier: identifier, for: indexPath)
        }
        return cell
    }
}
