
# Framer icon module

Dynamically tinted icons based off of a template image.

## Usage
```shell
$ framer new myProject
$ cd myProject
$ npm install --save peteschaffner/framer-icon
```

index.js:
```javascript
var Icon = require('framer-icon')

new Icon({
  width: 30,
  height: 30,
  image: 'path/to/my/icon.png',
  tintColor: 'cornflowerblue'
})
```
## API

### Icon#tintColor \<string\>
Get or set the tint color.

### Icon#image \<string\>
Get or set the path to the template image.

