//
// GeoAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct GeoAttributes: Codable, Hashable {
    /** Curvature factor. */
    public var curvature: Int?
    /** The maximum downward slope. Uses 1 degree precision for slopes to -16 degrees, and 4 degree precision afterwards (up to a max of -76 degrees). */
    public var maxDownSlope: Float?
    /** The maximum upward slope. Uses 1 degree precision for slopes to 16 degrees, and 4 degree precision afterwards (up to a max of 76 degrees). */
    public var maxUpSlope: Float?
    /** The weighted estimate of the grade. */
    public var weightedGrade: Float?
    /** The length of the edge, in meters. */
    public var length: Int?

    public init(curvature: Int? = nil, maxDownSlope: Float? = nil, maxUpSlope: Float? = nil, weightedGrade: Float? = nil, length: Int? = nil) {
        self.curvature = curvature
        self.maxDownSlope = maxDownSlope
        self.maxUpSlope = maxUpSlope
        self.weightedGrade = weightedGrade
        self.length = length
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case curvature
        case maxDownSlope = "max_down_slope"
        case maxUpSlope = "max_up_slope"
        case weightedGrade = "weighted_grade"
        case length
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(curvature, forKey: .curvature)
        try container.encodeIfPresent(maxDownSlope, forKey: .maxDownSlope)
        try container.encodeIfPresent(maxUpSlope, forKey: .maxUpSlope)
        try container.encodeIfPresent(weightedGrade, forKey: .weightedGrade)
        try container.encodeIfPresent(length, forKey: .length)
    }
}
