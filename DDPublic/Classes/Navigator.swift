//
//  Navigator.swift
//  Alamofire
//
//  Created by DCH on 2019/7/16.
//

import Foundation
import RxSwift
import RxCocoa

public struct Navigator {
    
    public let bag = DisposeBag()
    
    weak var viewController: UIViewController?
    
    @discardableResult
    public func show<VC:UIViewController>(
        _ type: VC.Type,
        storyboardName: String? = "\(VC.self)",
        identifier: String = "\(VC.self)",
        bundle: Bundle? = nil,
        sender: Any? = nil
        ) -> VC
    {
        if storyboardName == nil { return VC() }
        let sb = UIStoryboard(name: storyboardName!, bundle: bundle)
        let vc = sb.instantiateViewController(withIdentifier: identifier)
        object_setClass(vc, VC.self)
        return (vc as! VC).then {
            viewController?.show($0, sender: sender)
        }
    }
    
    @discardableResult
    func present<VC: UIViewController>(
        _ type: VC.Type ,
        storyboardName: String? = "\(VC.self)",
        identifier: String = "\(VC.self)",
        bundle: Bundle? = nil,
        animated: Bool = true
        ) -> VC
    {
        if storyboardName == nil { return VC() }
        let sb = UIStoryboard(name: storyboardName!, bundle: bundle)
        let vc = sb.instantiateViewController(withIdentifier: identifier)
        object_setClass(vc, VC.self)
        return (vc as! VC).then {
            viewController?.present($0, animated: animated, completion: nil)
        }
    }
    
}
