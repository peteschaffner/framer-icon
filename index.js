
/**
 * Icon
 *
 * Dynamically tinted icons based off of a template image.
 *
 * @class
 * @param {Object} options
 * @param {string} options.image - template image
 * @param {string} options.tintColor - the color of the icon
 */

module.exports = class Icon extends Layer {
  constructor(opts={}) {
    var maskImage = opts.image
    opts.backgroundColor = opts.backgroundColor ||
      opts.color ||
      opts.tintColor ||
      Framer.Defaults.Layer.backgroundColor

    super(_.extend(opts, { image: '' }));

    this.style = {
      webkitMaskImage: `url(${maskImage})`,
      webkitMaskSize: '100%'
    }

    this.tintColor = opts.backgroundColor
  }

  get tintColor() { return this._tintColor }
  set tintColor(value) {
    this._tintColor = this.backgroundColor = this.color = value
  }
}
