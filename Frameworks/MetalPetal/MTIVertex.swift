//
//  MTIVertex.swift
//  Pods
//
//  Created by YuAo on 30/06/2017.
//
//

import Foundation
import simd

extension MTIVertex {
    public init(position: (Float,Float,Float,Float), textureCoordinate: (Float, Float)) {
        self.init()
        self.position = float4(position.0, position.1, position.2, position.3)
        self.textureCoordinate = float2(textureCoordinate.0, textureCoordinate.1)
    }
}

extension MTIVertex : Equatable {
    public static func == (lhs: MTIVertex, rhs: MTIVertex) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}

extension MTIVertices {
    public convenience init(vertices: [MTIVertex], primitiveType: MTLPrimitiveType = .triangleStrip) {
        self.init(__vertices: vertices, count: vertices.count, primitiveType: primitiveType)
    }
}
