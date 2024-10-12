//
// MotorcycleCostingOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MotorcycleCostingOptions: Codable, JSONEncodable, Hashable {
    static let useLivingStreetsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let useFerryRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let useHighwaysRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let useTollsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let useTracksRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    static let topSpeedRule = NumericRule<Int>(minimum: 10, exclusiveMinimum: false, maximum: 252, exclusiveMaximum: false, multipleOf: nil)
    static let useTrailsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    /** A penalty (in seconds) applied when transitioning between roads (determined by name). */
    public var maneuverPenalty: Int? = 5
    /** The estimated cost (in seconds) when a gate is encountered. */
    public var gateCost: Int? = 15
    /** A penalty (in seconds) applied to the route cost when a gate is encountered. This penalty can be used to reduce the likelihood of suggesting a route with gates unless absolutely necessary. */
    public var gatePenalty: Int? = 300
    /** The estimated cost (in seconds) when encountering an international border. */
    public var countryCrossingCost: Int? = 600
    /** A penalty applied to transitions to international border crossings. This penalty can be used to reduce the likelihood of suggesting a route with border crossings unless absolutely necessary. */
    public var countryCrossingPenalty: Int? = 0
    /** A penalty applied to transitions to service roads. This penalty can be used to reduce the likelihood of suggesting a route with service roads unless absolutely necessary. The default penalty is 15 for cars, busses, motor scooters, and motorcycles; and zero for others. */
    public var servicePenalty: Int?
    /** A factor that multiplies the cost when service roads are encountered. The default is 1.2 for cars and busses, and 1 for trucks, motor scooters, and motorcycles. */
    public var serviceFactor: Double? = 1
    /** A measure of willingness to take living streets. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without living streets, 0 does not guarantee avoidance of them. The default value is 0 for trucks; 0.1 for other motor vehicles; 0.5 for bicycles; and 0.6 for pedestrians. */
    public var useLivingStreets: Double?
    /** A measure of willingness to take ferries. Values near 0 attempt to avoid ferries, and values near 1 will favour them. Note that as some routes may be impossible without ferries, 0 does not guarantee avoidance of them. */
    public var useFerry: Double? = 0.5
    /** The height of the automobile (in meters). */
    public var height: Double? = 1.9
    /** The width of the automobile (in meters). */
    public var width: Double? = 1.6
    /** The estimated cost (in seconds) when a toll booth is encountered. */
    public var tollBoothCost: Int? = 15
    /** A penalty (in seconds) applied to the route cost when a toll booth is encountered. This penalty can be used to reduce the likelihood of suggesting a route with toll booths unless absolutely necessary. */
    public var tollBoothPenalty: Int? = 0
    /** The estimated cost (in seconds) when a ferry is encountered. */
    public var ferryCost: Int? = 300
    /** A measure of willingness to use highways. Values near 0 attempt to avoid highways and stay on roads with lower speeds, and values near 1 indicate the rider is more comfortable on these roads. */
    public var useHighways: Double? = 1.0
    /** A measure of willingness to take toll roads. Values near 0 attempt to avoid tolls, and values near 1 will favour them. Note that as some routes may be impossible without tolls, 0 does not guarantee avoidance of them. */
    public var useTolls: Double? = 0.5
    /** A measure of willingness to take track roads. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without track roads, 0 does not guarantee avoidance of them. The default value is 0 for automobiles, busses, and trucks; and 0.5 for all other costing modes. */
    public var useTracks: Double?
    /** The top speed (in kph) that the vehicle is capable of travelling. */
    public var topSpeed: Int? = 140
    /** If true changes the cost metric to be quasi-shortest (pure distance-based) costing. This will disable ALL other costing factors. */
    public var shortest: Bool? = false
    /** If true, ignores all known closures. This option cannot be set if `location.search_filter.exclude_closures` is also specified. */
    public var ignoreClosures: Bool? = false
    /** If true, indicates the desire to include HOV roads with a 2-occupant requirement in the route when advantageous. */
    public var includeHov2: Bool? = false
    /** If true, indicates the desire to include HOV roads with a 3-occupant requirement in the route when advantageous. */
    public var includeHov3: Bool? = false
    /** If true, indicates the desire to include toll roads which require the driver to pay a toll if the occupant requirement isn't met */
    public var includeHot: Bool? = false
    /** A measure of the rider's sense of adventure. Values near 0 attempt to avoid highways and stay on roads with potentially unsuitable terrain (trails, tracks, unclassified, or bad surfaces), and values near 1 will tend to avoid major roads and route on secondary roads. */
    public var useTrails: Double? = 0.0

    public init(maneuverPenalty: Int? = 5, gateCost: Int? = 15, gatePenalty: Int? = 300, countryCrossingCost: Int? = 600, countryCrossingPenalty: Int? = 0, servicePenalty: Int? = nil, serviceFactor: Double? = 1, useLivingStreets: Double? = nil, useFerry: Double? = 0.5, height: Double? = 1.9, width: Double? = 1.6, tollBoothCost: Int? = 15, tollBoothPenalty: Int? = 0, ferryCost: Int? = 300, useHighways: Double? = 1.0, useTolls: Double? = 0.5, useTracks: Double? = nil, topSpeed: Int? = 140, shortest: Bool? = false, ignoreClosures: Bool? = false, includeHov2: Bool? = false, includeHov3: Bool? = false, includeHot: Bool? = false, useTrails: Double? = 0.0) {
        self.maneuverPenalty = maneuverPenalty
        self.gateCost = gateCost
        self.gatePenalty = gatePenalty
        self.countryCrossingCost = countryCrossingCost
        self.countryCrossingPenalty = countryCrossingPenalty
        self.servicePenalty = servicePenalty
        self.serviceFactor = serviceFactor
        self.useLivingStreets = useLivingStreets
        self.useFerry = useFerry
        self.height = height
        self.width = width
        self.tollBoothCost = tollBoothCost
        self.tollBoothPenalty = tollBoothPenalty
        self.ferryCost = ferryCost
        self.useHighways = useHighways
        self.useTolls = useTolls
        self.useTracks = useTracks
        self.topSpeed = topSpeed
        self.shortest = shortest
        self.ignoreClosures = ignoreClosures
        self.includeHov2 = includeHov2
        self.includeHov3 = includeHov3
        self.includeHot = includeHot
        self.useTrails = useTrails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maneuverPenalty = "maneuver_penalty"
        case gateCost = "gate_cost"
        case gatePenalty = "gate_penalty"
        case countryCrossingCost = "country_crossing_cost"
        case countryCrossingPenalty = "country_crossing_penalty"
        case servicePenalty = "service_penalty"
        case serviceFactor = "service_factor"
        case useLivingStreets = "use_living_streets"
        case useFerry = "use_ferry"
        case height
        case width
        case tollBoothCost = "toll_booth_cost"
        case tollBoothPenalty = "toll_booth_penalty"
        case ferryCost = "ferry_cost"
        case useHighways = "use_highways"
        case useTolls = "use_tolls"
        case useTracks = "use_tracks"
        case topSpeed = "top_speed"
        case shortest
        case ignoreClosures = "ignore_closures"
        case includeHov2 = "include_hov2"
        case includeHov3 = "include_hov3"
        case includeHot = "include_hot"
        case useTrails = "use_trails"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maneuverPenalty, forKey: .maneuverPenalty)
        try container.encodeIfPresent(gateCost, forKey: .gateCost)
        try container.encodeIfPresent(gatePenalty, forKey: .gatePenalty)
        try container.encodeIfPresent(countryCrossingCost, forKey: .countryCrossingCost)
        try container.encodeIfPresent(countryCrossingPenalty, forKey: .countryCrossingPenalty)
        try container.encodeIfPresent(servicePenalty, forKey: .servicePenalty)
        try container.encodeIfPresent(serviceFactor, forKey: .serviceFactor)
        try container.encodeIfPresent(useLivingStreets, forKey: .useLivingStreets)
        try container.encodeIfPresent(useFerry, forKey: .useFerry)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(tollBoothCost, forKey: .tollBoothCost)
        try container.encodeIfPresent(tollBoothPenalty, forKey: .tollBoothPenalty)
        try container.encodeIfPresent(ferryCost, forKey: .ferryCost)
        try container.encodeIfPresent(useHighways, forKey: .useHighways)
        try container.encodeIfPresent(useTolls, forKey: .useTolls)
        try container.encodeIfPresent(useTracks, forKey: .useTracks)
        try container.encodeIfPresent(topSpeed, forKey: .topSpeed)
        try container.encodeIfPresent(shortest, forKey: .shortest)
        try container.encodeIfPresent(ignoreClosures, forKey: .ignoreClosures)
        try container.encodeIfPresent(includeHov2, forKey: .includeHov2)
        try container.encodeIfPresent(includeHov3, forKey: .includeHov3)
        try container.encodeIfPresent(includeHot, forKey: .includeHot)
        try container.encodeIfPresent(useTrails, forKey: .useTrails)
    }
}
