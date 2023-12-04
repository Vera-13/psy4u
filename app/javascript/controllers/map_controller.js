import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/poofy-t/clpr2tnvz013101qth4ih4g71",
      zoom: 10
    })


    this.#addMarkerToMap()
    this.#fitMapToMarker()

    }


  #addMarkerToMap() {
      const marker = this.markerValue;
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);

      const customMarker = document.createElement("div");
      customMarker.innerHTML = marker.marker_html;

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    }

  #fitMapToMarker() {
      const bounds = new mapboxgl.LngLatBounds();
      bounds.extend([this.markerValue.lng, this.markerValue.lat]);
      this.map.fitBounds(bounds, { padding: 30, maxZoom: 15, duration: 0 });
    }
}
