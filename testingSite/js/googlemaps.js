!function(e,t){"object"==typeof exports?module.exports=t():"function"==typeof define&&define.amd&&define("GMaps",[],t),e.GMaps=t()}(this,function(){if("object"!=typeof window.google||!window.google.maps)throw"Google Maps API is required. Please register the following JavaScript library http://maps.google.com/maps/api/js?sensor=true.";var t=function(e,t){var o;if(e===t)return e;for(o in t)e[o]=t[o];return e},o=function(e,t){var o,n=Array.prototype.slice.call(arguments,2),r=[],s=e.length;if(Array.prototype.map&&e.map===Array.prototype.map)r=Array.prototype.map.call(e,function(e){return callback_params=n,callback_params.splice(0,0,e),t.apply(this,callback_params)});else for(o=0;s>o;o++)callback_params=n,callback_params.splice(0,0,e[o]),r.push(t.apply(this,callback_params));return r},n=function(e){var t,o=[];for(t=0;t<e.length;t++)o=o.concat(e[t]);return o},r=function(e,t){var o=e[0],n=e[1];return t&&(o=e[1],n=e[0]),new google.maps.LatLng(o,n)},s=function(e,t){var o;for(o=0;o<e.length;o++)e[o]instanceof google.maps.LatLng||(e[o].length>0&&"object"==typeof e[o][0]?e[o]=s(e[o],t):e[o]=r(e[o],t));return e},i=function(e,t){var o,e=e.replace("#","");return o="jQuery"in this&&t?$("#"+e,t)[0]:document.getElementById(e)},a=function(e){var t=0,o=0;if(e.offsetParent)do t+=e.offsetLeft,o+=e.offsetTop;while(e=e.offsetParent);return[t,o]},l=function(e){"use strict";var o=document,n=function(e){if(!this)return new n(e);e.zoom=e.zoom||15,e.mapType=e.mapType||"roadmap";var r,s=this,l=["bounds_changed","center_changed","click","dblclick","drag","dragend","dragstart","idle","maptypeid_changed","projection_changed","resize","tilesloaded","zoom_changed"],p=["mousemove","mouseout","mouseover"],g=["el","lat","lng","mapType","width","height","markerClusterer","enableNewStyle"],c=e.el||e.div,h=e.markerClusterer,u=google.maps.MapTypeId[e.mapType.toUpperCase()],d=new google.maps.LatLng(e.lat,e.lng),m=e.zoomControl||!0,f=e.zoomControlOpt||{style:"DEFAULT",position:"TOP_LEFT"},y=f.style||"DEFAULT",v=f.position||"TOP_LEFT",k=e.panControl||!0,w=e.mapTypeControl||!0,L=e.scaleControl||!0,b=e.streetViewControl||!0,_=_||!0,M={},x={zoom:this.zoom,center:d,mapTypeId:u},C={panControl:k,zoomControl:m,zoomControlOptions:{style:google.maps.ZoomControlStyle[y],position:google.maps.ControlPosition[v]},mapTypeControl:w,scaleControl:L,streetViewControl:b,overviewMapControl:_};if("string"==typeof e.el||"string"==typeof e.div?this.el=i(c,e.context):this.el=c,"undefined"==typeof this.el||null===this.el)throw"No element defined.";for(window.context_menu=window.context_menu||{},window.context_menu[s.el.id]={},this.controls=[],this.overlays=[],this.layers=[],this.singleLayers={},this.markers=[],this.polylines=[],this.routes=[],this.polygons=[],this.infoWindow=null,this.overlay_el=null,this.zoom=e.zoom,this.registered_events={},this.el.style.width=e.width||this.el.scrollWidth||this.el.offsetWidth,this.el.style.height=e.height||this.el.scrollHeight||this.el.offsetHeight,google.maps.visualRefresh=e.enableNewStyle,r=0;r<g.length;r++)delete e[g[r]];for(1!=e.disableDefaultUI&&(x=t(x,C)),M=t(x,e),r=0;r<l.length;r++)delete M[l[r]];for(r=0;r<p.length;r++)delete M[p[r]];this.map=new google.maps.Map(this.el,M),h&&(this.markerClusterer=h.apply(this,[this.map]));var P=function(e,t){var o="",n=window.context_menu[s.el.id][e];for(var r in n)if(n.hasOwnProperty(r)){var l=n[r];o+='<li><a id="'+e+"_"+r+'" href="#">'+l.title+"</a></li>"}if(i("gmaps_context_menu")){var p=i("gmaps_context_menu");p.innerHTML=o;var r,g=p.getElementsByTagName("a"),c=g.length;for(r=0;c>r;r++){var h=g[r],u=function(o){o.preventDefault(),n[this.id.replace(e+"_","")].action.apply(s,[t]),s.hideContextMenu()};google.maps.event.clearListeners(h,"click"),google.maps.event.addDomListenerOnce(h,"click",u,!1)}var d=a.apply(this,[s.el]),m=d[0]+t.pixel.x-15,f=d[1]+t.pixel.y-15;p.style.left=m+"px",p.style.top=f+"px",p.style.display="block"}};this.buildContextMenu=function(e,t){if("marker"===e){t.pixel={};var o=new google.maps.OverlayView;o.setMap(s.map),o.draw=function(){var n=o.getProjection(),r=t.marker.getPosition();t.pixel=n.fromLatLngToContainerPixel(r),P(e,t)}}else P(e,t)},this.setContextMenu=function(e){window.context_menu[s.el.id][e.control]={};var t,n=o.createElement("ul");for(t in e.options)if(e.options.hasOwnProperty(t)){var r=e.options[t];window.context_menu[s.el.id][e.control][r.name]={title:r.title,action:r.action}}n.id="gmaps_context_menu",n.style.display="none",n.style.position="absolute",n.style.minWidth="100px",n.style.background="white",n.style.listStyle="none",n.style.padding="8px",n.style.boxShadow="2px 2px 6px #ccc",o.body.appendChild(n);var a=i("gmaps_context_menu");google.maps.event.addDomListener(a,"mouseout",function(e){e.relatedTarget&&this.contains(e.relatedTarget)||window.setTimeout(function(){a.style.display="none"},400)},!1)},this.hideContextMenu=function(){var e=i("gmaps_context_menu");e&&(e.style.display="none")};var O=function(t,o){google.maps.event.addListener(t,o,function(t){void 0==t&&(t=this),e[o].apply(this,[t]),s.hideContextMenu()})};google.maps.event.addListener(this.map,"zoom_changed",this.hideContextMenu);for(var T=0;T<l.length;T++){var z=l[T];z in e&&O(this.map,z)}for(var T=0;T<p.length;T++){var z=p[T];z in e&&O(this.map,z)}google.maps.event.addListener(this.map,"rightclick",function(t){e.rightclick&&e.rightclick.apply(this,[t]),void 0!=window.context_menu[s.el.id].map&&s.buildContextMenu("map",t)}),this.refresh=function(){google.maps.event.trigger(this.map,"resize")},this.fitZoom=function(){var e,t=[],o=this.markers.length;for(e=0;o>e;e++)"boolean"==typeof this.markers[e].visible&&this.markers[e].visible&&t.push(this.markers[e].getPosition());this.fitLatLngBounds(t)},this.fitLatLngBounds=function(e){for(var t=e.length,o=new google.maps.LatLngBounds,n=0;t>n;n++)o.extend(e[n]);this.map.fitBounds(o)},this.setCenter=function(e,t,o){this.map.panTo(new google.maps.LatLng(e,t)),o&&o()},this.getElement=function(){return this.el},this.zoomIn=function(e){e=e||1,this.zoom=this.map.getZoom()+e,this.map.setZoom(this.zoom)},this.zoomOut=function(e){e=e||1,this.zoom=this.map.getZoom()-e,this.map.setZoom(this.zoom)};var S,W=[];for(S in this.map)"function"!=typeof this.map[S]||this[S]||W.push(S);for(r=0;r<W.length;r++)!function(e,t,o){e[o]=function(){return t[o].apply(t,arguments)}}(this,this.map,W[r])};return n}(this);l.prototype.createControl=function(e){var t=document.createElement("div");t.style.cursor="pointer",e.disableDefaultStyles!==!0&&(t.style.fontFamily="Roboto, Arial, sans-serif",t.style.fontSize="11px",t.style.boxShadow="rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px");for(var o in e.style)t.style[o]=e.style[o];e.id&&(t.id=e.id),e.classes&&(t.className=e.classes),e.content&&("string"==typeof e.content?t.innerHTML=e.content:e.content instanceof HTMLElement&&t.appendChild(e.content)),e.position&&(t.position=google.maps.ControlPosition[e.position.toUpperCase()]);for(var n in e.events)!function(t,o){google.maps.event.addDomListener(t,o,function(){e.events[o].apply(this,[this])})}(t,n);return t.index=1,t},l.prototype.addControl=function(e){var t=this.createControl(e);return this.controls.push(t),this.map.controls[t.position].push(t),t},l.prototype.removeControl=function(e){for(var t=null,o=0;o<this.controls.length;o++)this.controls[o]==e&&(t=this.controls[o].position,this.controls.splice(o,1));if(t)for(o=0;o<this.map.controls.length;o++){var n=this.map.controls[e.position];if(n.getAt(o)==e){n.removeAt(o);break}}return e},l.prototype.createMarker=function(e){if(void 0==e.lat&&void 0==e.lng&&void 0==e.position)throw"No latitude or longitude defined.";var o=this,n=e.details,r=e.fences,s=e.outside,i={position:new google.maps.LatLng(e.lat,e.lng),map:null},a=t(i,e);delete a.lat,delete a.lng,delete a.fences,delete a.outside;var l=new google.maps.Marker(a);if(l.fences=r,e.infoWindow){l.infoWindow=new google.maps.InfoWindow(e.infoWindow);for(var p=["closeclick","content_changed","domready","position_changed","zindex_changed"],g=0;g<p.length;g++)!function(t,o){e.infoWindow[o]&&google.maps.event.addListener(t,o,function(t){e.infoWindow[o].apply(this,[t])})}(l.infoWindow,p[g])}for(var c=["animation_changed","clickable_changed","cursor_changed","draggable_changed","flat_changed","icon_changed","position_changed","shadow_changed","shape_changed","title_changed","visible_changed","zindex_changed"],h=["dblclick","drag","dragend","dragstart","mousedown","mouseout","mouseover","mouseup"],g=0;g<c.length;g++)!function(t,o){e[o]&&google.maps.event.addListener(t,o,function(){e[o].apply(this,[this])})}(l,c[g]);for(var g=0;g<h.length;g++)!function(t,o,n){e[n]&&google.maps.event.addListener(o,n,function(o){o.pixel||(o.pixel=t.getProjection().fromLatLngToPoint(o.latLng)),e[n].apply(this,[o])})}(this.map,l,h[g]);return google.maps.event.addListener(l,"click",function(){this.details=n,e.click&&e.click.apply(this,[this]),l.infoWindow&&(o.hideInfoWindows(),l.infoWindow.open(o.map,l))}),google.maps.event.addListener(l,"rightclick",function(t){t.marker=this,e.rightclick&&e.rightclick.apply(this,[t]),void 0!=window.context_menu[o.el.id].marker&&o.buildContextMenu("marker",t)}),l.fences&&google.maps.event.addListener(l,"dragend",function(){o.checkMarkerGeofence(l,function(e,t){s(e,t)})}),l},l.prototype.addMarker=function(e){var t;if(e.hasOwnProperty("gm_accessors_"))t=e;else{if(!(e.hasOwnProperty("lat")&&e.hasOwnProperty("lng")||e.position))throw"No latitude or longitude defined.";t=this.createMarker(e)}return t.setMap(this.map),this.markerClusterer&&this.markerClusterer.addMarker(t),this.markers.push(t),l.fire("marker_added",t,this),t},l.prototype.addMarkers=function(e){for(var t,o=0;t=e[o];o++)this.addMarker(t);return this.markers},l.prototype.hideInfoWindows=function(){for(var e,t=0;e=this.markers[t];t++)e.infoWindow&&e.infoWindow.close()},l.prototype.removeMarker=function(e){for(var t=0;t<this.markers.length;t++)if(this.markers[t]===e){this.markers[t].setMap(null),this.markers.splice(t,1),this.markerClusterer&&this.markerClusterer.removeMarker(e),l.fire("marker_removed",e,this);break}return e},l.prototype.removeMarkers=function(e){var t=[];if("undefined"==typeof e){for(var o=0;o<this.markers.length;o++){var n=this.markers[o];n.setMap(null),this.markerClusterer&&this.markerClusterer.removeMarker(n),l.fire("marker_removed",n,this)}this.markers=t}else{for(var o=0;o<e.length;o++){var r=this.markers.indexOf(e[o]);if(r>-1){var n=this.markers[r];n.setMap(null),this.markerClusterer&&this.markerClusterer.removeMarker(n),l.fire("marker_removed",n,this)}}for(var o=0;o<this.markers.length;o++){var n=this.markers[o];null!=n.getMap()&&t.push(n)}this.markers=t}},l.prototype.drawOverlay=function(e){var t=new google.maps.OverlayView,o=!0;return t.setMap(this.map),null!=e.auto_show&&(o=e.auto_show),t.onAdd=function(){var o=document.createElement("div");o.style.borderStyle="none",o.style.borderWidth="0px",o.style.position="absolute",o.style.zIndex=100,o.innerHTML=e.content,t.el=o,e.layer||(e.layer="overlayLayer");var n=this.getPanes(),r=n[e.layer],s=["contextmenu","DOMMouseScroll","dblclick","mousedown"];r.appendChild(o);for(var i=0;i<s.length;i++)!function(e,t){google.maps.event.addDomListener(e,t,function(e){-1!=navigator.userAgent.toLowerCase().indexOf("msie")&&document.all?(e.cancelBubble=!0,e.returnValue=!1):e.stopPropagation()})}(o,s[i]);e.click&&(n.overlayMouseTarget.appendChild(t.el),google.maps.event.addDomListener(t.el,"click",function(){e.click.apply(t,[t])})),google.maps.event.trigger(this,"ready")},t.draw=function(){var n=this.getProjection(),r=n.fromLatLngToDivPixel(new google.maps.LatLng(e.lat,e.lng));e.horizontalOffset=e.horizontalOffset||0,e.verticalOffset=e.verticalOffset||0;var s=t.el,i=s.children[0],a=i.clientHeight,l=i.clientWidth;switch(e.verticalAlign){case"top":s.style.top=r.y-a+e.verticalOffset+"px";break;default:case"middle":s.style.top=r.y-a/2+e.verticalOffset+"px";break;case"bottom":s.style.top=r.y+e.verticalOffset+"px"}switch(e.horizontalAlign){case"left":s.style.left=r.x-l+e.horizontalOffset+"px";break;default:case"center":s.style.left=r.x-l/2+e.horizontalOffset+"px";break;case"right":s.style.left=r.x+e.horizontalOffset+"px"}s.style.display=o?"block":"none",o||e.show.apply(this,[s])},t.onRemove=function(){var o=t.el;e.remove?e.remove.apply(this,[o]):(t.el.parentNode.removeChild(t.el),t.el=null)},this.overlays.push(t),t},l.prototype.removeOverlay=function(e){for(var t=0;t<this.overlays.length;t++)if(this.overlays[t]===e){this.overlays[t].setMap(null),this.overlays.splice(t,1);break}},l.prototype.removeOverlays=function(){for(var e,t=0;e=this.overlays[t];t++)e.setMap(null);this.overlays=[]},l.prototype.drawPolyline=function(e){var t=[],o=e.path;if(o.length)if(void 0===o[0][0])t=o;else for(var n,r=0;n=o[r];r++)t.push(new google.maps.LatLng(n[0],n[1]));var s={map:this.map,path:t,strokeColor:e.strokeColor,strokeOpacity:e.strokeOpacity,strokeWeight:e.strokeWeight,geodesic:e.geodesic,clickable:!0,editable:!1,visible:!0};e.hasOwnProperty("clickable")&&(s.clickable=e.clickable),e.hasOwnProperty("editable")&&(s.editable=e.editable),e.hasOwnProperty("icons")&&(s.icons=e.icons),e.hasOwnProperty("zIndex")&&(s.zIndex=e.zIndex);for(var i=new google.maps.Polyline(s),a=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"],p=0;p<a.length;p++)!function(t,o){e[o]&&google.maps.event.addListener(t,o,function(t){e[o].apply(this,[t])})}(i,a[p]);return this.polylines.push(i),l.fire("polyline_added",i,this),i},l.prototype.removePolyline=function(e){for(var t=0;t<this.polylines.length;t++)if(this.polylines[t]===e){this.polylines[t].setMap(null),this.polylines.splice(t,1),l.fire("polyline_removed",e,this);break}},l.prototype.removePolylines=function(){for(var e,t=0;e=this.polylines[t];t++)e.setMap(null);this.polylines=[]},l.prototype.drawCircle=function(e){e=t({map:this.map,center:new google.maps.LatLng(e.lat,e.lng)},e),delete e.lat,delete e.lng;for(var o=new google.maps.Circle(e),n=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"],r=0;r<n.length;r++)!function(t,o){e[o]&&google.maps.event.addListener(t,o,function(t){e[o].apply(this,[t])})}(o,n[r]);return this.polygons.push(o),o},l.prototype.drawRectangle=function(e){e=t({map:this.map},e);var o=new google.maps.LatLngBounds(new google.maps.LatLng(e.bounds[0][0],e.bounds[0][1]),new google.maps.LatLng(e.bounds[1][0],e.bounds[1][1]));e.bounds=o;for(var n=new google.maps.Rectangle(e),r=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"],s=0;s<r.length;s++)!function(t,o){e[o]&&google.maps.event.addListener(t,o,function(t){e[o].apply(this,[t])})}(n,r[s]);return this.polygons.push(n),n},l.prototype.drawPolygon=function(e){var r=!1;e.hasOwnProperty("useGeoJSON")&&(r=e.useGeoJSON),delete e.useGeoJSON,e=t({map:this.map},e),0==r&&(e.paths=[e.paths.slice(0)]),e.paths.length>0&&e.paths[0].length>0&&(e.paths=n(o(e.paths,s,r)));for(var i=new google.maps.Polygon(e),a=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"],p=0;p<a.length;p++)!function(t,o){e[o]&&google.maps.event.addListener(t,o,function(t){e[o].apply(this,[t])})}(i,a[p]);return this.polygons.push(i),l.fire("polygon_added",i,this),i},l.prototype.removePolygon=function(e){for(var t=0;t<this.polygons.length;t++)if(this.polygons[t]===e){this.polygons[t].setMap(null),this.polygons.splice(t,1),l.fire("polygon_removed",e,this);break}},l.prototype.removePolygons=function(){for(var e,t=0;e=this.polygons[t];t++)e.setMap(null);this.polygons=[]},l.prototype.getFromFusionTables=function(e){var t=e.events;delete e.events;var o=e,n=new google.maps.FusionTablesLayer(o);for(var r in t)!function(e,o){google.maps.event.addListener(e,o,function(e){t[o].apply(this,[e])})}(n,r);return this.layers.push(n),n},l.prototype.loadFromFusionTables=function(e){var t=this.getFromFusionTables(e);return t.setMap(this.map),t},l.prototype.getFromKML=function(e){var t=e.url,o=e.events;delete e.url,delete e.events;var n=e,r=new google.maps.KmlLayer(t,n);for(var s in o)!function(e,t){google.maps.event.addListener(e,t,function(e){o[t].apply(this,[e])})}(r,s);return this.layers.push(r),r},l.prototype.loadFromKML=function(e){var t=this.getFromKML(e);return t.setMap(this.map),t},l.prototype.addLayer=function(e,t){t=t||{};var o;switch(e){case"weather":this.singleLayers.weather=o=new google.maps.weather.WeatherLayer;break;case"clouds":this.singleLayers.clouds=o=new google.maps.weather.CloudLayer;break;case"traffic":this.singleLayers.traffic=o=new google.maps.TrafficLayer;break;case"transit":this.singleLayers.transit=o=new google.maps.TransitLayer;break;case"bicycling":this.singleLayers.bicycling=o=new google.maps.BicyclingLayer;break;case"panoramio":this.singleLayers.panoramio=o=new google.maps.panoramio.PanoramioLayer,o.setTag(t.filter),delete t.filter,t.click&&google.maps.event.addListener(o,"click",function(e){t.click(e),delete t.click});break;case"places":if(this.singleLayers.places=o=new google.maps.places.PlacesService(this.map),t.search||t.nearbySearch||t.radarSearch){var n={bounds:t.bounds||null,keyword:t.keyword||null,location:t.location||null,name:t.name||null,radius:t.radius||null,rankBy:t.rankBy||null,types:t.types||null};t.radarSearch&&o.radarSearch(n,t.radarSearch),t.search&&o.search(n,t.search),t.nearbySearch&&o.nearbySearch(n,t.nearbySearch)}if(t.textSearch){var r={bounds:t.bounds||null,location:t.location||null,query:t.query||null,radius:t.radius||null};o.textSearch(r,t.textSearch)}}return void 0!==o?("function"==typeof o.setOptions&&o.setOptions(t),"function"==typeof o.setMap&&o.setMap(this.map),o):void 0},l.prototype.removeLayer=function(e){if("string"==typeof e&&void 0!==this.singleLayers[e])this.singleLayers[e].setMap(null),delete this.singleLayers[e];else for(var t=0;t<this.layers.length;t++)if(this.layers[t]===e){this.layers[t].setMap(null),this.layers.splice(t,1);break}};var p,g;return l.prototype.getRoutes=function(e){switch(e.travelMode){case"bicycling":p=google.maps.TravelMode.BICYCLING;break;case"transit":p=google.maps.TravelMode.TRANSIT;break;case"driving":p=google.maps.TravelMode.DRIVING;break;default:p=google.maps.TravelMode.WALKING}g="imperial"===e.unitSystem?google.maps.UnitSystem.IMPERIAL:google.maps.UnitSystem.METRIC;var o={avoidHighways:!1,avoidTolls:!1,optimizeWaypoints:!1,waypoints:[]},n=t(o,e);n.origin=/string/.test(typeof e.origin)?e.origin:new google.maps.LatLng(e.origin[0],e.origin[1]),n.destination=/string/.test(typeof e.destination)?e.destination:new google.maps.LatLng(e.destination[0],e.destination[1]),n.travelMode=p,n.unitSystem=g,delete n.callback,delete n.error;var r=this,s=new google.maps.DirectionsService;s.route(n,function(t,o){if(o===google.maps.DirectionsStatus.OK){for(var n in t.routes)t.routes.hasOwnProperty(n)&&r.routes.push(t.routes[n]);e.callback&&e.callback(r.routes)}else e.error&&e.error(t,o)})},l.prototype.removeRoutes=function(){this.routes=[]},l.prototype.getElevations=function(e){e=t({locations:[],path:!1,samples:256},e),e.locations.length>0&&e.locations[0].length>0&&(e.locations=n(o([e.locations],s,!1)));var r=e.callback;delete e.callback;var i=new google.maps.ElevationService;if(e.path){var a={path:e.locations,samples:e.samples};i.getElevationAlongPath(a,function(e,t){r&&"function"==typeof r&&r(e,t)})}else delete e.path,delete e.samples,i.getElevationForLocations(e,function(e,t){r&&"function"==typeof r&&r(e,t)})},l.prototype.cleanRoute=l.prototype.removePolylines,l.prototype.drawRoute=function(e){var t=this;this.getRoutes({origin:e.origin,destination:e.destination,travelMode:e.travelMode,waypoints:e.waypoints,unitSystem:e.unitSystem,error:e.error,callback:function(o){o.length>0&&(t.drawPolyline({path:o[o.length-1].overview_path,strokeColor:e.strokeColor,strokeOpacity:e.strokeOpacity,strokeWeight:e.strokeWeight}),e.callback&&e.callback(o[o.length-1]))}})},l.prototype.travelRoute=function(e){if(e.origin&&e.destination)this.getRoutes({origin:e.origin,destination:e.destination,travelMode:e.travelMode,waypoints:e.waypoints,unitSystem:e.unitSystem,error:e.error,callback:function(t){if(t.length>0&&e.start&&e.start(t[t.length-1]),t.length>0&&e.step){var o=t[t.length-1];if(o.legs.length>0)for(var n,r=o.legs[0].steps,s=0;n=r[s];s++)n.step_number=s,e.step(n,o.legs[0].steps.length-1)}t.length>0&&e.end&&e.end(t[t.length-1])}});else if(e.route&&e.route.legs.length>0)for(var t,o=e.route.legs[0].steps,n=0;t=o[n];n++)t.step_number=n,e.step(t)},l.prototype.drawSteppedRoute=function(e){var t=this;if(e.origin&&e.destination)this.getRoutes({origin:e.origin,destination:e.destination,travelMode:e.travelMode,waypoints:e.waypoints,error:e.error,callback:function(o){if(o.length>0&&e.start&&e.start(o[o.length-1]),o.length>0&&e.step){var n=o[o.length-1];if(n.legs.length>0)for(var r,s=n.legs[0].steps,i=0;r=s[i];i++)r.step_number=i,t.drawPolyline({path:r.path,strokeColor:e.strokeColor,strokeOpacity:e.strokeOpacity,strokeWeight:e.strokeWeight}),e.step(r,n.legs[0].steps.length-1)}o.length>0&&e.end&&e.end(o[o.length-1])}});else if(e.route&&e.route.legs.length>0)for(var o,n=e.route.legs[0].steps,r=0;o=n[r];r++)o.step_number=r,t.drawPolyline({path:o.path,strokeColor:e.strokeColor,strokeOpacity:e.strokeOpacity,strokeWeight:e.strokeWeight}),e.step(o)},l.Route=function(e){this.origin=e.origin,this.destination=e.destination,this.waypoints=e.waypoints,this.map=e.map,this.route=e.route,this.step_count=0,this.steps=this.route.legs[0].steps,this.steps_length=this.steps.length,this.polyline=this.map.drawPolyline({path:new google.maps.MVCArray,strokeColor:e.strokeColor,strokeOpacity:e.strokeOpacity,strokeWeight:e.strokeWeight}).getPath()},l.Route.prototype.getRoute=function(t){var o=this;this.map.getRoutes({origin:this.origin,destination:this.destination,travelMode:t.travelMode,waypoints:this.waypoints||[],error:t.error,callback:function(){o.route=e[0],t.callback&&t.callback.call(o)}})},l.Route.prototype.back=function(){if(this.step_count>0){this.step_count--;var e=this.route.legs[0].steps[this.step_count].path;for(var t in e)e.hasOwnProperty(t)&&this.polyline.pop()}},l.Route.prototype.forward=function(){if(this.step_count<this.steps_length){var e=this.route.legs[0].steps[this.step_count].path;for(var t in e)e.hasOwnProperty(t)&&this.polyline.push(e[t]);this.step_count++}},l.prototype.checkGeofence=function(e,t,o){return o.containsLatLng(new google.maps.LatLng(e,t))},l.prototype.checkMarkerGeofence=function(e,t){if(e.fences)for(var o,n=0;o=e.fences[n];n++){var r=e.getPosition();this.checkGeofence(r.lat(),r.lng(),o)||t(e,o)}},l.prototype.toImage=function(e){var e=e||{},t={};if(t.size=e.size||[this.el.clientWidth,this.el.clientHeight],t.lat=this.getCenter().lat(),t.lng=this.getCenter().lng(),this.markers.length>0){t.markers=[];for(var o=0;o<this.markers.length;o++)t.markers.push({lat:this.markers[o].getPosition().lat(),lng:this.markers[o].getPosition().lng()})}if(this.polylines.length>0){var n=this.polylines[0];t.polyline={},t.polyline.path=google.maps.geometry.encoding.encodePath(n.getPath()),t.polyline.strokeColor=n.strokeColor,t.polyline.strokeOpacity=n.strokeOpacity,t.polyline.strokeWeight=n.strokeWeight}return l.staticMapURL(t)},l.staticMapURL=function(e){function t(e,t){if("#"===e[0]&&(e=e.replace("#","0x"),t)){if(t=parseFloat(t),t=Math.min(1,Math.max(t,0)),0===t)return"0x00000000";t=(255*t).toString(16),1===t.length&&(t+=t),e=e.slice(0,8)+t}return e}var o,n=[],r="http://maps.googleapis.com/maps/api/staticmap";e.url&&(r=e.url,delete e.url),r+="?";var s=e.markers;delete e.markers,!s&&e.marker&&(s=[e.marker],delete e.marker);var i=e.styles;delete e.styles;var a=e.polyline;if(delete e.polyline,e.center)n.push("center="+e.center),delete e.center;else if(e.address)n.push("center="+e.address),delete e.address;else if(e.lat)n.push(["center=",e.lat,",",e.lng].join("")),delete e.lat,delete e.lng;else if(e.visible){var l=encodeURI(e.visible.join("|"));n.push("visible="+l)}var p=e.size;p?(p.join&&(p=p.join("x")),delete e.size):p="630x300",n.push("size="+p),e.zoom||e.zoom===!1||(e.zoom=15);var g=e.hasOwnProperty("sensor")?!!e.sensor:!0;delete e.sensor,n.push("sensor="+g);for(var c in e)e.hasOwnProperty(c)&&n.push(c+"="+e[c]);if(s)for(var h,u,d=0;o=s[d];d++){h=[],o.size&&"normal"!==o.size?(h.push("size:"+o.size),delete o.size):o.icon&&(h.push("icon:"+encodeURI(o.icon)),delete o.icon),o.color&&(h.push("color:"+o.color.replace("#","0x")),delete o.color),o.label&&(h.push("label:"+o.label[0].toUpperCase()),delete o.label),u=o.address?o.address:o.lat+","+o.lng,delete o.address,delete o.lat,delete o.lng;for(var c in o)o.hasOwnProperty(c)&&h.push(c+":"+o[c]);h.length||0===d?(h.push(u),h=h.join("|"),n.push("markers="+encodeURI(h))):(h=n.pop()+encodeURI("|"+u),n.push(h))}if(i)for(var d=0;d<i.length;d++){var m=[];i[d].featureType&&m.push("feature:"+i[d].featureType.toLowerCase()),i[d].elementType&&m.push("element:"+i[d].elementType.toLowerCase());for(var f=0;f<i[d].stylers.length;f++)for(var y in i[d].stylers[f]){var v=i[d].stylers[f][y];("hue"==y||"color"==y)&&(v="0x"+v.substring(1)),m.push(y+":"+v)}var k=m.join("|");""!=k&&n.push("style="+k)}if(a){if(o=a,a=[],o.strokeWeight&&a.push("weight:"+parseInt(o.strokeWeight,10)),o.strokeColor){var w=t(o.strokeColor,o.strokeOpacity);a.push("color:"+w)}if(o.fillColor){var L=t(o.fillColor,o.fillOpacity);a.push("fillcolor:"+L)}var b=o.path;if(b.join)for(var _,f=0;_=b[f];f++)a.push(_.join(","));else a.push("enc:"+b);a=a.join("|"),n.push("path="+encodeURI(a))}var M=window.devicePixelRatio||1;return n.push("scale="+M),n=n.join("&"),r+n},l.prototype.addMapType=function(e,t){if(!t.hasOwnProperty("getTileUrl")||"function"!=typeof t.getTileUrl)throw"'getTileUrl' function required.";t.tileSize=t.tileSize||new google.maps.Size(256,256);var o=new google.maps.ImageMapType(t);this.map.mapTypes.set(e,o)},l.prototype.addOverlayMapType=function(e){if(!e.hasOwnProperty("getTile")||"function"!=typeof e.getTile)throw"'getTile' function required.";var t=e.index;delete e.index,this.map.overlayMapTypes.insertAt(t,e)},l.prototype.removeOverlayMapType=function(e){this.map.overlayMapTypes.removeAt(e)},l.prototype.addStyle=function(e){var t=new google.maps.StyledMapType(e.styles,{name:e.styledMapName});this.map.mapTypes.set(e.mapTypeId,t)},l.prototype.setStyle=function(e){this.map.setMapTypeId(e)},l.prototype.createPanorama=function(e){return e.hasOwnProperty("lat")&&e.hasOwnProperty("lng")||(e.lat=this.getCenter().lat(),e.lng=this.getCenter().lng()),this.panorama=l.createPanorama(e),this.map.setStreetView(this.panorama),this.panorama},l.createPanorama=function(e){var o=i(e.el,e.context);e.position=new google.maps.LatLng(e.lat,e.lng),delete e.el,delete e.context,delete e.lat,delete e.lng;for(var n=["closeclick","links_changed","pano_changed","position_changed","pov_changed","resize","visible_changed"],r=t({visible:!0},e),s=0;s<n.length;s++)delete r[n[s]];for(var a=new google.maps.StreetViewPanorama(o,r),s=0;s<n.length;s++)!function(t,o){e[o]&&google.maps.event.addListener(t,o,function(){e[o].apply(this)})}(a,n[s]);return a},l.prototype.on=function(e,t){return l.on(e,this,t)},l.prototype.off=function(e){l.off(e,this)},l.custom_events=["marker_added","marker_removed","polyline_added","polyline_removed","polygon_added","polygon_removed","geolocated","geolocation_failed"],l.on=function(e,t,o){if(-1==l.custom_events.indexOf(e))return t instanceof l&&(t=t.map),google.maps.event.addListener(t,e,o);var n={handler:o,eventName:e};return t.registered_events[e]=t.registered_events[e]||[],t.registered_events[e].push(n),n},l.off=function(e,t){-1==l.custom_events.indexOf(e)?(t instanceof l&&(t=t.map),google.maps.event.clearListeners(t,e)):t.registered_events[e]=[]},l.fire=function(e,t,o){if(-1==l.custom_events.indexOf(e))google.maps.event.trigger(t,e,Array.prototype.slice.apply(arguments).slice(2));else if(e in o.registered_events)for(var n=o.registered_events[e],r=0;r<n.length;r++)!function(e,t,o){e.apply(t,[o])}(n[r].handler,o,t)},l.geolocate=function(e){var t=e.always||e.complete;navigator.geolocation?navigator.geolocation.getCurrentPosition(function(o){e.success(o),t&&t()},function(o){e.error(o),t&&t()},e.options):(e.not_supported(),t&&t())},l.geocode=function(e){this.geocoder=new google.maps.Geocoder;var t=e.callback;e.hasOwnProperty("lat")&&e.hasOwnProperty("lng")&&(e.latLng=new google.maps.LatLng(e.lat,e.lng)),delete e.lat,delete e.lng,delete e.callback,this.geocoder.geocode(e,function(e,o){t(e,o)})},google.maps.Polygon.prototype.getBounds||(google.maps.Polygon.prototype.getBounds=function(e){for(var t,o=new google.maps.LatLngBounds,n=this.getPaths(),r=0;r<n.getLength();r++){t=n.getAt(r);for(var s=0;s<t.getLength();s++)o.extend(t.getAt(s))}return o}),google.maps.Polygon.prototype.containsLatLng||(google.maps.Polygon.prototype.containsLatLng=function(e){var t=this.getBounds();if(null!==t&&!t.contains(e))return!1;for(var o=!1,n=this.getPaths().getLength(),r=0;n>r;r++)for(var s=this.getPaths().getAt(r),i=s.getLength(),a=i-1,l=0;i>l;l++){var p=s.getAt(l),g=s.getAt(a);(p.lng()<e.lng()&&g.lng()>=e.lng()||g.lng()<e.lng()&&p.lng()>=e.lng())&&p.lat()+(e.lng()-p.lng())/(g.lng()-p.lng())*(g.lat()-p.lat())<e.lat()&&(o=!o),a=l}return o}),google.maps.Circle.prototype.containsLatLng||(google.maps.Circle.prototype.containsLatLng=function(e){return google.maps.geometry?google.maps.geometry.spherical.computeDistanceBetween(this.getCenter(),e)<=this.getRadius():!0}),google.maps.LatLngBounds.prototype.containsLatLng=function(e){return this.contains(e)},google.maps.Marker.prototype.setFences=function(e){this.fences=e},google.maps.Marker.prototype.addFence=function(e){this.fences.push(e)},google.maps.Marker.prototype.getId=function(){return this.__gm_id},Array.prototype.indexOf||(Array.prototype.indexOf=function(e){"use strict";if(null==this)throw new TypeError;var t=Object(this),o=t.length>>>0;if(0===o)return-1;var n=0;if(arguments.length>1&&(n=Number(arguments[1]),n!=n?n=0:0!=n&&n!=1/0&&n!=-(1/0)&&(n=(n>0||-1)*Math.floor(Math.abs(n)))),n>=o)return-1;for(var r=n>=0?n:Math.max(o-Math.abs(n),0);o>r;r++)if(r in t&&t[r]===e)return r;return-1}),l});