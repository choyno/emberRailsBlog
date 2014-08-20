# For more information see: http://emberjs.com/guides/routing/

EmberRailsBlog.Router.map ()->

  @resource "about"
  @resource "posts", ->
    @resource "post",
      path:  ":post_id"
     @route "new"




