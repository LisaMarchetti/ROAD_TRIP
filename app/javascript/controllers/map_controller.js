import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("connecting map controller...");

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
  /*     style: 'mapbox://styles/florentdaubas/clbaus1yb000514maa16e1ltm', */
      style: 'mapbox://styles/mapbox/satellite-streets-v12',
      zoom: 1, // starting zoom
      projection: 'globe'
    })
    this.#addMarkersToMap()

    this.map.on('style.load', () => {
      this.map.setFog({}); // Set the default atmosphere style
    });

    // The following values can be changed to control rotation speed:

    // At low zooms, complete a revolution every two minutes.
    const secondsPerRevolution = 24;
    // Above zoom level 5, do not rotate.
    const maxSpinZoom = 5;
    // Rotate at intermediate speeds between zoom levels 3 and 5.
    const slowSpinZoom = 3;

    let userInteracting = false;
    let spinEnabled = true;

    function spinGlobe(map) {
      const zoom = map.getZoom();
      if (spinEnabled && !userInteracting && zoom < maxSpinZoom) {
        let distancePerSecond = 360 / secondsPerRevolution;
        if (zoom > slowSpinZoom) {
          // Slow spinning at higher zooms
          const zoomDif =
          (maxSpinZoom - zoom) / (maxSpinZoom - slowSpinZoom);
          distancePerSecond *= zoomDif;
        }
        const center = map.getCenter();
        center.lng -= distancePerSecond;
        // Smoothly animate the map over one second.
        // When this animation is complete, it calls a 'moveend' event.
        map.easeTo({ center, duration: 1000, easing: (n) => n });
      }
    }

      // Pause spinning on interaction
    this.map.on('mousedown', () => {
      userInteracting = true;
    });

      // Restart spinning the globe when interaction is complete
    this.map.on('mouseup', () => {
      userInteracting = false;
      spinGlobe(this.map);
    });

      // These events account for cases where the mouse has moved
      // off the map, so 'mouseup' will not be fired.
    this.map.on('dragend', () => {
      userInteracting = false;
      spinGlobe(this.map);
    });

    this.map.on('pitchend', () => {
      userInteracting = false;
      spinGlobe(this.map);
    });

    this.map.on('rotateend', () => {
      userInteracting = false;
      spinGlobe(this.map);
    });

      // When animation is complete, start spinning if there is no ongoing interaction
    this.map.on('moveend', () => {
      spinGlobe(this.map);
    });

    // document.getElementById('btn-spin').addEventListener('click', (e) => {
    //   spinEnabled = !spinEnabled;
    //   if (spinEnabled) {
    //   spinGlobe(this.map);
    //   e.target.innerHTML = 'Pause rotation';
    //   } else {
    //   map.stop(); // Immediately end ongoing animation
    //   e.target.innerHTML = 'Start rotation';
    //   }
    // });

    spinGlobe(this.map);
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }


  // #fitMapToMarkers() {
  //   const bounds = new mapboxgl.LngLatBounds()
  //   this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
  //   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  // }




}
