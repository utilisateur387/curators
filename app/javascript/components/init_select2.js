// ./src/plugins/init_select2.js
import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    tags: true,
    placeholder: "Select an artist",
    allowClear: true
  });
};

export { initSelect2 };
