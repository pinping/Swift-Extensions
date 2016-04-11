//
//  Double+LengthUnit.swift
//  SexualPositions
//
//  Created by pinping on 4/11/16.
//  Copyright © 2016 AYSD. All rights reserved.
//

import Foundation

extension Double {
    var km: Double {
        return self * 1_000.0
    }
    
    var m: Double {
        return self
    }
    
    var cm: Double {
        return self / 100.0
    }
    
    var mm: Double {
        return self / 1_000.0
    }
    
    var ft: Double {
        return self / 3.28084
    }  
}
