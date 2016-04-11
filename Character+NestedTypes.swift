//
//  Character+NestedTypes.swift
//  SexualPositions
//
//  Created by pinping on 4/11/16.
//  Copyright © 2016 AYSD. All rights reserved.
//

import Foundation

extension Character {
    enum Kind {
        case Vowel, Consonant, Other
    }
    var kind: Kind {
        switch String(self).lowercaseString {
        case "a", "e", "i", "o", "u":
            return .Vowel
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            return .Consonant
        default:
            return .Other
        }
    }
}
