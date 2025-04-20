import 'package:flutter_google_maps_webservices/geocoding.dart';
import 'package:flutter_google_maps_webservices/places.dart';

/// A model class that represents the result of a place pick operation.
///
/// This class stores information about a selected place, including its
/// geographic location, address details, and other place-specific information.
/// The data can come either from Geocoding results or Place Details results.
class PickResult {
  PickResult({
    this.placeId,
    this.geometry,
    this.formattedAddress,
    this.types,
    this.addressComponents,
    this.adrAddress,
    this.formattedPhoneNumber,
    this.id,
    this.reference,
    this.icon,
    this.name,
    this.openingHours,
    this.photos,
    this.internationalPhoneNumber,
    this.priceLevel,
    this.rating,
    this.scope,
    this.url,
    this.vicinity,
    this.utcOffset,
    this.website,
    this.reviews,
  });

  /// A unique identifier that can be used with other Google APIs.
  final String? placeId;

  /// Contains the location coordinates and viewport information.
  final Geometry? geometry;

  /// The human-readable address of this place.
  final String? formattedAddress;

  /// An array of feature types describing the given result.
  final List<String>? types;

  /// An array containing the separate components of the address.
  final List<AddressComponent>? addressComponents;

  // Below results will not be fetched if 'usePlaceDetailSearch' is set to false (Defaults to false).

  /// A representation of the place's address in the adr microformat.
  final String? adrAddress;

  /// Contains the place's phone number in its local format.
  final String? formattedPhoneNumber;

  /// Additional place identifier.
  final String? id;

  /// Reference identifier for the place.
  final String? reference;

  /// URL of a suggested icon which may be displayed to the user.
  final String? icon;

  /// Human-readable name for the returned result.
  final String? name;

  /// Opening hour information for the place.
  final OpeningHoursDetail? openingHours;

  /// Array of photo objects, each containing a reference to an image.
  final List<Photo>? photos;

  /// The place's phone number in international format.
  final String? internationalPhoneNumber;

  /// The price level of the place, on a scale of 0 to 4.
  final PriceLevel? priceLevel;

  /// The place's rating, from 1.0 to 5.0, based on user reviews.
  final num? rating;

  /// Indicates the scope of the placeId.
  final String? scope;

  /// The URL of the official Google page for this place.
  final String? url;

  /// A simplified address for the place.
  final String? vicinity;

  /// The number of minutes this place's timezone is offset from UTC.
  final num? utcOffset;

  /// The authoritative website for this place.
  final String? website;

  /// JSON array of up to five reviews.
  final List<Review>? reviews;

  factory PickResult.fromGeocodingResult(GeocodingResult result) {
    return PickResult(
      placeId: result.placeId,
      geometry: result.geometry,
      formattedAddress: result.formattedAddress,
      types: result.types,
      addressComponents: result.addressComponents,
    );
  }

  /// Creates a [PickResult] from a [PlaceDetails] result.
  ///
  /// This factory constructor extracts comprehensive information from a place details
  /// result, including additional fields that aren't available from geocoding.
  factory PickResult.fromPlaceDetailResult(PlaceDetails result) {
    return PickResult(
      placeId: result.placeId,
      geometry: result.geometry,
      formattedAddress: result.formattedAddress,
      types: result.types,
      addressComponents: result.addressComponents,
      adrAddress: result.adrAddress,
      formattedPhoneNumber: result.formattedPhoneNumber,
      id: result.id,
      reference: result.reference,
      icon: result.icon,
      name: result.name,
      openingHours: result.openingHours,
      photos: result.photos,
      internationalPhoneNumber: result.internationalPhoneNumber,
      priceLevel: result.priceLevel,
      rating: result.rating,
      scope: result.scope,
      url: result.url,
      vicinity: result.vicinity,
      utcOffset: result.utcOffset,
      website: result.website,
      reviews: result.reviews,
    );
  }
}
