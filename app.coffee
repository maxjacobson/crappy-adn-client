$ ->
  username = prompt "whose posts would you like to look up?"
  hostname = "https://alpha-api.app.net"
  $.ajax
    url: "#{hostname}/stream/0/users/@#{username}/posts"
    success: (posts) ->
      $("<h2>#{username}'s posts</h2>").appendTo("body")
      $("<ol id='posts' />").appendTo("body")
      for post in posts.data
        $("<li>#{post.text}</li>").appendTo("#posts")
