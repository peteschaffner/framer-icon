
# Framer icon module

<a title="Example" href="http://share.framerjs.com/edojz1mvguvx/">
  <img src="example.gif" width="375">
</a>

Dynamically tinted icons based off of a template image.

## Usage
```shell
$ cd <myProject>.framer
$ npm install framer-icon
```

modules/myModule.coffee:
```coffeescript
exports.Icon = require "framer-icon"
```

app.coffee:
```coffeescript
{Icon} = require "myModule"

new Icon
  width: 30
  height: 30
  image: "images/icon.png"
  tintColor: "cornflowerblue"
```

## API

### `Icon#tintColor <string>`
Get or set the tint color. Anything accepted by `Layer#backgroundColor` is
valid, with the addition of [CSS gradients][gradients]. `Icon#color` and
`Icon#backgroundColor` are aliases.

[gradients]: https://developer.mozilla.org/en-US/docs/Web/CSS/gradient
