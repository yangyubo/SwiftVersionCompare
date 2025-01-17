//
//  BuildMetaData+ExpressibleByLiteral.swift
//  SwiftVersionCompare
//
//  Created by Marius Felkner on 12.03.21.
//

extension BuildMetaData: LosslessStringConvertible {
    public init?(_ string: String) {
        self.init(private: string)
    }

    public var description: String { value }
}

extension BuildMetaData: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.init(private: value)
    }
}
