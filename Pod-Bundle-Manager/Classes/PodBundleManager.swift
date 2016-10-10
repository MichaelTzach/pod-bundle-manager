//
//  PodBundleManager.swift
//  Pods
//
//  Created by Michael Tzach on 10/9/16.
//
//

import UIKit

public class PodBundleManager: NSObject {

    private var resourceBundleName: String!
    private var bundle: NSBundle!
    
    public init(_ bundleName: String?, callerClass: AnyClass) {
        bundle = NSBundle(forClass: callerClass)
        
        var bundleNameToSave = bundleName
        if let bundleName = bundleName {
            if !bundleName.containsString(".bundle") {
                bundleNameToSave = bundleName + ".bundle"
            }
        }
        
        resourceBundleName = bundleNameToSave
    }
    
    public func image(named: String) -> UIImage? {
        guard let resourceBundleName = resourceBundleName, bundle = bundle else { return nil }
        let resourceName = resourceBundleName + "/" + named
        return UIImage(named: resourceName, inBundle: bundle, compatibleWithTraitCollection: nil)
    }
}
