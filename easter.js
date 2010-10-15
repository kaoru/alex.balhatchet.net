konami = new Konami();
konami.code = function() {
    var s = document.createElement('script');
    s.type='text/javascript';
    document.body.appendChild(s);
    s.src='http://erkie.github.com/asteroids.min.js';
    void(0);
};

konami.load()
