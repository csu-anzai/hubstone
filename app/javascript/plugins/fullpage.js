import $ from 'jquery';
import 'node_modules/fullpage.js/dist/fullpage.js';

const initFullpage = () => {
    $('#fullpage').fullpage({
    //options here
    autoScrolling: true,
    navigation: true,
    navigationTooltips: ['Home'],
    showActiveTooltip:true,
    scrollingSpeed:1000,
    parallax: true,
    parallaxOptions: {type: 'reveal', percentage: 62, property: 'translate'},
    fadingEffect: true,
    });
}

export { initFullpage };