//
//  PodBundleManager.swift
//  Pods
//
//  Created by Michael Tzach on 10/9/16.
//
//

import UIKit

open class PodBundleManager: NSObject {

    fileprivate var resourceBundleName: String!
    fileprivate var bundle: Bundle!
    
    public init(_ bundleName: String?, callerClass: AnyClass) {
        bundle = Bundle(for: callerClass)
        
        var bundleNameToSave = bundleName
        if let bundleName = bundleName {
            if !bundleName.contains(".bundle") {
                bundleNameToSave = bundleName + ".bundle"
            }
        }
        
        resourceBundleName = bundleNameToSave
    }
    
    open func image(_ named: String) -> UIImage? {
        guard let resourceBundleName = resourceBundleName, let bundle = bundle else { return nil }
        let resourceName = resourceBundleName + "/" + named
        return UIImage(named: resourceName, in: bundle, compatibleWith: nil)
    }
}
