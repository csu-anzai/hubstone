import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


// const addMarkersToMap = (map, markers) => {
//   markers.forEach((marker) => {
//     const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

// // Create a HTML element for your custom marker
//     const element = document.createElement('div');
//     element.className = 'marker';
//     element.style.backgroundImage = `url('${marker.image_url}')`;
//     element.style.backgroundSize = 'contain';
//     element.style.width = '50px';
//     element.style.height = '50px';

//     new mapboxgl.Marker(element)
//       .setLngLat([ marker.lng, marker.lat ])
//       .setPopup(popup) // add this
//       .addTo(map);
//   });
// };

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/alexandrecoulier/cjzmuvrcl15fr1cqnfxghmd6x'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    const mapMarkers = []
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const newMarker = new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    mapMarkers.push(newMarker)
    newMarker.getElement().dataset.markerId = marker.id;
    newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighLighting(e) );
    newMarker.getElement().addEventListener('mouseleave', (e) => toggleCardHighLighting(e) );
  });

  // addMarkersToMap(map, markers);
  openInfoWindow(mapMarkers, map);
  fitMapToMarkers(map, markers);
  // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  // map.addControl(new mapboxgl.NavigationControl());
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const openInfoWindow = (markers, map) => {
  const cards = document.querySelectorAll('.card-product');
  cards.forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
      markers[index].togglePopup();
      const longitude = (markers[index]['_lngLat']['lng']);
      const latitude = (markers[index]['_lngLat']['lat']);
      map.flyTo({
        center: [longitude, latitude],
        zoom: 10,
        duration: 700});
    });
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
      // const longitude = (markers[index]['_lngLat']['lng']);
      // const latitude = (markers[index]['_lngLat']['lat']);
      // map.flyTo({
      //   center: [longitude, latitude],
      //   zoom: 3});
    });
  });
}

const toggleCardHighLighting = (event) => {
  const card = document.querySelector(`[data-appartement-id="${event.currentTarget.dataset.markerId}"]`);
  card.classList.toggle('highlight');
}

export { initMapbox };
