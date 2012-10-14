# Censored.coffee

> Clean your dirty mouth netizen!

Censored.coffee acts as a stylistic bridge to clean up your profanity, powered only by a simple set of rules you define.

### Dependencies

* jQuery 1.5+ _(Will probably work with lower versions)_

## Quickstart

The simplest use case is to select an element or many and call the `.censor` method with an array of words to be censored.


				$('.profane-speech').censor(['buttbread']);
				
For more indepth uses take a look at [demo](http://lrbecker.github.com/censored.coffee/)

## Options

By default you are only required to pass in an array with the list of blocked words, but there are quite a few override options that can be modified.

* **tag**: 'span'
	
	This will wrap any matched word with `<span class="censored"></span>`
	
* **class**: 'censored'

	This allows you to customize what the 	wrapping class is if `.censored` is clashing with preexisting styles

* **replaceWord**: ''

	By default `censor()` will just preserve the offending word to match the length, but with `replaceWord` you can replace any offending word with whatever string is passed.

* **caseSensitve**: false

	By default the case of an offending word will be ignored and all matched censored. You can disabled this by just passing `caseSensitive: true`



## Support List

Currently `censored.coffee` is tested and working against the browser list below. For best results any version of browser that supports _css rotation_ with get the best visual effect, older browsers will get a slightly degraded style.

* Chrome 22
* Safari 5.1.5
* Firefox 14
* IE9+

## Todo

* Preserve html when replacing censored words.


## Contributing

 If you want to contribute please send fixes written in Coffeescript since the plugin is compiled from that to javascript.


## License

Licensed under the [MIT license](http://opensource.org/licenses/MIT)