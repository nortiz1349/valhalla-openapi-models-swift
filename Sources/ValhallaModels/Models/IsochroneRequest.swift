//
// IsochroneRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct IsochroneRequest: Codable, JSONEncodable, Hashable {
    static let contoursRule = ArrayRule(minItems: 1, maxItems: 4, uniqueItems: false)
    static let denoiseRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    /** An identifier to disambiguate requests (echoed by the server). */
    public var id: String?
    public var locations: [Coordinate]
    public var costing: IsochroneCostingModel
    public var costingOptions: CostingOptions?
    public var contours: [Contour]
    /** If true, the generated GeoJSON will use polygons. The default is to use LineStrings. Polygon output makes it easier to render overlapping areas in some visualization tools (such as MapLibre renderers). */
    public var polygons: Bool? = false
    /** A value in the range [0, 1] which will be used to smooth out or remove smaller contours. A value of 1 will only return the largest contour for a given time value. A value of 0.5 drops any contours that are less than half the area of the largest contour in the set of contours for that same time value. */
    public var denoise: Double? = 1
    /** The value in meters to be used as a tolerance for Douglas-Peucker generalization. */
    public var generalize: Double? = 200.0
    /** If true, then the output GeoJSON will include the input locations as two MultiPoint features: one for the exact input coordinates, and a second for the route network node location that the point was snapped to. */
    public var showLocations: Bool? = false

    public init(id: String? = nil, locations: [Coordinate], costing: IsochroneCostingModel, costingOptions: CostingOptions? = nil, contours: [Contour], polygons: Bool? = false, denoise: Double? = 1, generalize: Double? = 200.0, showLocations: Bool? = false) {
        self.id = id
        self.locations = locations
        self.costing = costing
        self.costingOptions = costingOptions
        self.contours = contours
        self.polygons = polygons
        self.denoise = denoise
        self.generalize = generalize
        self.showLocations = showLocations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case locations
        case costing
        case costingOptions = "costing_options"
        case contours
        case polygons
        case denoise
        case generalize
        case showLocations = "show_locations"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(locations, forKey: .locations)
        try container.encode(costing, forKey: .costing)
        try container.encodeIfPresent(costingOptions, forKey: .costingOptions)
        try container.encode(contours, forKey: .contours)
        try container.encodeIfPresent(polygons, forKey: .polygons)
        try container.encodeIfPresent(denoise, forKey: .denoise)
        try container.encodeIfPresent(generalize, forKey: .generalize)
        try container.encodeIfPresent(showLocations, forKey: .showLocations)
    }
}
