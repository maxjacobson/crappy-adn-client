// Generated by CoffeeScript 1.6.2
(function() {
  $(function() {
    var hostname, username;

    username = prompt("whose posts would you like to look up?");
    hostname = "https://alpha-api.app.net";
    return $.ajax({
      url: "" + hostname + "/stream/0/users/@" + username + "/posts",
      success: function(posts) {
        var post, _i, _len, _ref, _results;

        $("<h2>" + username + "'s posts</h2>").appendTo("body");
        $("<ol id='posts' />").appendTo("body");
        _ref = posts.data;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          post = _ref[_i];
          _results.push($("<li>" + post.text + "</li>").appendTo("#posts"));
        }
        return _results;
      }
    });
  });

}).call(this);