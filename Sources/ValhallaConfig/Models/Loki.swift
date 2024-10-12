//
// Loki.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct Loki: Codable, JSONEncodable, Hashable {
    public var actions: [String]?
    public var logging: LokiLogging?
    public var service: LokiService?
    public var serviceDefaults: LokiServiceDefaults?
    public var useConnectivity: Bool? = true

    public init(actions: [String]? = nil, logging: LokiLogging? = nil, service: LokiService? = nil, serviceDefaults: LokiServiceDefaults? = nil, useConnectivity: Bool? = true) {
        self.actions = actions
        self.logging = logging
        self.service = service
        self.serviceDefaults = serviceDefaults
        self.useConnectivity = useConnectivity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actions
        case logging
        case service
        case serviceDefaults = "service_defaults"
        case useConnectivity = "use_connectivity"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actions, forKey: .actions)
        try container.encodeIfPresent(logging, forKey: .logging)
        try container.encodeIfPresent(service, forKey: .service)
        try container.encodeIfPresent(serviceDefaults, forKey: .serviceDefaults)
        try container.encodeIfPresent(useConnectivity, forKey: .useConnectivity)
    }
}
