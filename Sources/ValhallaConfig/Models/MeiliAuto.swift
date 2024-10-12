//
// MeiliAuto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MeiliAuto: Codable, JSONEncodable, Hashable {
    public var searchRadius: Int? = 50
    public var turnPenaltyFactor: Int? = 200

    public init(searchRadius: Int? = 50, turnPenaltyFactor: Int? = 200) {
        self.searchRadius = searchRadius
        self.turnPenaltyFactor = turnPenaltyFactor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchRadius = "search_radius"
        case turnPenaltyFactor = "turn_penalty_factor"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(searchRadius, forKey: .searchRadius)
        try container.encodeIfPresent(turnPenaltyFactor, forKey: .turnPenaltyFactor)
    }
}
