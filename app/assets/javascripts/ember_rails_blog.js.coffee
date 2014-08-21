#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self


EmberRailsBlog.PostsController = Ember.ArrayController.extend(
  sortProperties: ["id"]
  sortAscending: false
  filteredContent: (->
    content = @get("arrangedContent")
    content.filter (item, index) ->
      not (item.get("isNew"))
  ).property("arrangedContent.@each")
)

EmberRailsBlog.Router.map ()->
  @resource "about"
  @resource "posts", ->
    @resource "post",
      path:  ":post_id"
     @route "new"


