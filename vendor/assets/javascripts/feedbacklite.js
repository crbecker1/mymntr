var fbl = null;
document.addEventListener("DOMContentLoaded", function (event) {
  var h = document.getElementsByTagName('head')[0];
  (function () {
    var fc = document.createElement('link');
    fc.type = 'text/css';
    fc.rel = 'stylesheet';
    fc.href = 'https://product.feedbacklite.com/feedbacklite.css';
    h.appendChild(fc);
  })();
  fbl = {
    'campaign': {
      'id': 770,
      'type': 2,
      'size': 3,
      'body': '666666',
      'position': 6,
      'tab': 4,
      'control': 1
    }
  };
  (function () {
    var fj = document.createElement('script');
    fj.type = 'text/javascript';
    fj.async = true;
    fj.src = 'https://product.feedbacklite.com/feedbacklite.js';
    h.appendChild(fj);
  })();
});
