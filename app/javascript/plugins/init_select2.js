import $ from 'jquery';
import 'select2';
import '../../../node_modules/select2/dist/css/select2.css';

const initSelect2 = () => {
  $('.select2-actabilite').select2({
    placeholder: "Actabilité"
  });
  $('.select2-livraison').select2({
    placeholder: "Livraison"
  });
  $('.select2-typologie').select2({
    placeholder: "typologie"
  });
};

export { initSelect2 };
