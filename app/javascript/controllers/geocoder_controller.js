import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["address"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address",
      placeholder: 'Type your location here!!'
    });
    this.geocoder.addTo(this.element);

    this.geocoder.on("result", event => this.#setInputValue(event));
    this.geocoder.on("clear", () => this.#clearInputValue());
    }

    #setInputValue(event) {
    // console.log(event.result)
    this.addressTarget.value = event.result["place_name_en-US"]
    }

    #clearInputValue() {
    this.addressTarget.value = ""
    }
}