//
// Speeds.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct Speeds: Codable, JSONEncodable, Hashable {
    public enum ModelType: String, Codable, CaseIterable {
        case classified
        case tagged
    }

    /** Does this edge have predicted (historical) speed records? */
    public var predicted: Bool?
    /** Speed when there is no traffic, in kph. */
    public var constrainedFlow: Int?
    /** Speed when there is heavy traffic, in kph. */
    public var freeFlow: Int?
    /** The type of speed which is used when setting default speeds. When `tagged`, the explicit `max_speed` tags from OpenStreetMap are being used. When `classified`, the values are being inferred from the highway classification. */
    public var type: ModelType?
    /** The default speed used for calculations. NOTE: Values greater than 250 are used for special cases and should not be treated as literal. */
    public var _default: Int?

    public init(predicted: Bool? = nil, constrainedFlow: Int? = nil, freeFlow: Int? = nil, type: ModelType? = nil, _default: Int? = nil) {
        self.predicted = predicted
        self.constrainedFlow = constrainedFlow
        self.freeFlow = freeFlow
        self.type = type
        self._default = _default
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case predicted
        case constrainedFlow = "constrained_flow"
        case freeFlow = "free_flow"
        case type
        case _default = "default"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(predicted, forKey: .predicted)
        try container.encodeIfPresent(constrainedFlow, forKey: .constrainedFlow)
        try container.encodeIfPresent(freeFlow, forKey: .freeFlow)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(_default, forKey: ._default)
    }
}
