// ./src/plugins/init_select2.js
import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    tags: true
  }); // (~ document.querySelectorAll)

  // $(".js-example-tags").select2({
  //   tags: true
  // });
};

export { initSelect2 };
