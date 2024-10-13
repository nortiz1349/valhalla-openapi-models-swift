//
// Restrictions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct Restrictions: Codable, Hashable {
    public var golfCart: Bool?
    public var truck: Bool?
    public var pedestrian: Bool?
    public var wheelchair: Bool?
    public var taxi: Bool?
    public var HOV: Bool?
    public var emergency: Bool?
    public var motorcycle: Bool?
    public var car: Bool?
    public var moped: Bool?
    public var bus: Bool?
    public var bicycle: Bool?

    public init(golfCart: Bool? = nil, truck: Bool? = nil, pedestrian: Bool? = nil, wheelchair: Bool? = nil, taxi: Bool? = nil, HOV: Bool? = nil, emergency: Bool? = nil, motorcycle: Bool? = nil, car: Bool? = nil, moped: Bool? = nil, bus: Bool? = nil, bicycle: Bool? = nil) {
        self.golfCart = golfCart
        self.truck = truck
        self.pedestrian = pedestrian
        self.wheelchair = wheelchair
        self.taxi = taxi
        self.HOV = HOV
        self.emergency = emergency
        self.motorcycle = motorcycle
        self.car = car
        self.moped = moped
        self.bus = bus
        self.bicycle = bicycle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case golfCart = "golf_cart"
        case truck
        case pedestrian
        case wheelchair
        case taxi
        case HOV
        case emergency
        case motorcycle
        case car
        case moped
        case bus
        case bicycle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(golfCart, forKey: .golfCart)
        try container.encodeIfPresent(truck, forKey: .truck)
        try container.encodeIfPresent(pedestrian, forKey: .pedestrian)
        try container.encodeIfPresent(wheelchair, forKey: .wheelchair)
        try container.encodeIfPresent(taxi, forKey: .taxi)
        try container.encodeIfPresent(HOV, forKey: .HOV)
        try container.encodeIfPresent(emergency, forKey: .emergency)
        try container.encodeIfPresent(motorcycle, forKey: .motorcycle)
        try container.encodeIfPresent(car, forKey: .car)
        try container.encodeIfPresent(moped, forKey: .moped)
        try container.encodeIfPresent(bus, forKey: .bus)
        try container.encodeIfPresent(bicycle, forKey: .bicycle)
    }
}
