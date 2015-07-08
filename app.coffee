aliasProperty = (property, alias) ->
	get: -> @[property]
	set: (value) ->
		@[property] = value
		@emit "change:#{alias}", value

class Icon extends Layer
	constructor: (opts={}) ->
		opts.backgroundColor ?= opts.color or
			opts.tintColor or
			Framer.Defaults.Layer.backgroundColor
		
		super _.extend opts,
			style: webkitMaskSize: "100%"
	
	@define "tintColor",
		get: -> @_tintColor
		set: (value) ->
			@_tintColor = @style.background = value
			@emit "change:tintColor", value
	
	@define "image",
		get: -> @_image
		set: (value) ->
			@_image = value
			@style.webkitMaskImage = "url(#{value})"
			@emit "change:image", value

# set aliases for `tintColor`
for alias in ["color", "backgroundColor"]
	Icon.define alias, aliasProperty "tintColor", alias

module?.exports = Icon
