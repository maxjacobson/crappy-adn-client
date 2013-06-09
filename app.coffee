$ ->
  username = prompt "whose posts would you like to look up?"
  hostname = "https://alpha-api.app.net"
  $.ajax
    url: "#{hostname}/stream/0/users/@#{username}/posts"
    error: (response) ->
      if response.status is 404
        $("<h2>#{username} not found!</h2>").insertAfter("h1")
    success: (posts) ->
      $("<h2>#{username}'s posts</h2>").insertAfter("h1")
      for post in posts.data
        $("<li>#{post.text}</li>").hide().appendTo("#posts").fadeIn('slow')
