//
// NodeId.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct NodeId: Codable, Hashable {
    public var id: Int64?
    public var value: Int64?
    public var tileId: Int64?
    public var level: Int?

    public init(id: Int64? = nil, value: Int64? = nil, tileId: Int64? = nil, level: Int? = nil) {
        self.id = id
        self.value = value
        self.tileId = tileId
        self.level = level
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case value
        case tileId = "tile_id"
        case level
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(tileId, forKey: .tileId)
        try container.encodeIfPresent(level, forKey: .level)
    }
}
