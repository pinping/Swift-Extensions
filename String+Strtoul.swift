//
//  String+Strtoul.swift
//  SexualPositions
//
//  Created by pinping on 4/8/16.
//  Copyright © 2016 AYSD. All rights reserved.
//

import Foundation

extension String {
    var hexaToDecimal: Int {
        return Int(strtoul(self, nil, 16))
    }
    var hexaToBinary: String {
        return hexaToDecimal.toBinary
    }
    var binaryToDecimal: Int {
        return Int(strtoul(self, nil, 2))
    }
    var binaryToHexa: String {
        return binaryToDecimal.toHexa
    }
}

