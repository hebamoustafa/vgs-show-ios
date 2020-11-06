//
//  VGSShowDataDecoding.swift
//  VGSShow
//
//  Created by Eugene on 26.10.2020.
//

import Foundation

/// `VGSShow` data decoding modes.
public enum VGSShowDecodingConentMode {

	/// Decode as text.
	case text

	/// Decode as image URL.
	case imageURL
}

/// Decoded content type.
enum VGSShowDecodedContent {

	/**
	 Text result data.

	 - Parameters:
		- text: `String` object.
	*/
	case text(_ text: String)

	/**
	 Image result data.

	 - Parameters:
		- url: `URL` object.
	*/
	case imageURL(_ url: URL)
}

/// `VGSShowDecodingConfiguration` represents model for configurating decoding options.
public struct VGSShowDecodingConfiguration {

	/// Determines path to reveal.
	public let keyPath: String

	/// Decoding type.
	public let decoding: VGSShowDecodingConentMode

	/// Init.
	/// - Parameters:
	///   - keyPath: `String` object. Key to reveal.
	///   - decoding: `VGSShowDataDecoding` object. Data decoding type.
	public init(keyPath: String, decoding: VGSShowDecodingConentMode) {
		self.keyPath = keyPath
		self.decoding = decoding
	}
}
