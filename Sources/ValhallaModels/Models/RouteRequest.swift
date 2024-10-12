//
// RouteRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RouteRequest: Codable, JSONEncodable, Hashable {
    static let locationsRule = ArrayRule(minItems: 2, maxItems: nil, uniqueItems: false)
    /** An identifier to disambiguate requests (echoed by the server). */
    public var id: String?
    public var locations: [RoutingWaypoint]
    public var costing: CostingModel
    public var costingOptions: CostingOptions?
    public var avoidLocations: [RoutingWaypoint]?
    /** One or multiple exterior rings of polygons in the form of nested JSON arrays. Roads intersecting these rings will be avoided during path finding. Open rings will be closed automatically. */
    public var avoidPolygons: [[[Double]]]?
    public var directionsOptions: DirectionsOptions?

    public init(id: String? = nil, locations: [RoutingWaypoint], costing: CostingModel, costingOptions: CostingOptions? = nil, avoidLocations: [RoutingWaypoint]? = nil, avoidPolygons: [[[Double]]]? = nil, directionsOptions: DirectionsOptions? = nil) {
        self.id = id
        self.locations = locations
        self.costing = costing
        self.costingOptions = costingOptions
        self.avoidLocations = avoidLocations
        self.avoidPolygons = avoidPolygons
        self.directionsOptions = directionsOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case locations
        case costing
        case costingOptions = "costing_options"
        case avoidLocations = "avoid_locations"
        case avoidPolygons = "avoid_polygons"
        case directionsOptions = "directions_options"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(locations, forKey: .locations)
        try container.encode(costing, forKey: .costing)
        try container.encodeIfPresent(costingOptions, forKey: .costingOptions)
        try container.encodeIfPresent(avoidLocations, forKey: .avoidLocations)
        try container.encodeIfPresent(avoidPolygons, forKey: .avoidPolygons)
        try container.encodeIfPresent(directionsOptions, forKey: .directionsOptions)
    }
}
