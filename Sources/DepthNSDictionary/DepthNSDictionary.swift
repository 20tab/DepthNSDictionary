//
//  DepthNSDictionary.swift
//  letsmeet
//
//  Created by Raffaele Colace @ 20tabsrl on 06/11/17.
//  Copyright © 2017 20tab srl. All rights reserved.
//

import Foundation

extension NSDictionary{
    
    // Extension to navigate a nested dictionary using separator to search nested keys in a recursive implementation
    
    func dfs(forKey: String, separator: String = "__") -> Any?{
        var keys = forKey.components(separatedBy: separator)
        
        for k in keys{
            if let value = self.object(forKey: k) as? NSDictionary{
                keys.remove(at: 0)
                let keys_str = keys.joined(separator: separator)
                return value.dfs(forKey: keys_str)
            }
            else{
                return self.object(forKey: k)
            }
        }
        
        return nil
    }
    
}
