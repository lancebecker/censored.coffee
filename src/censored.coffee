(($, window, document) ->

  $.fn.censor = (list, options) ->

    options = $.extend({}, $.fn.censor.options, options)

    if !list
      return

    if options.caseSensitive?
      regOpts = 'g'
    else
      regOpts = 'gi'

    reg = new RegExp(list.join('|'), regOpts)

    for item in @

      text =  $(item).text()

      if options.replaceWord?
        matched = options.replaceWord ? 'naughty'
      else
        matched = text.match(reg)

      str = "<#{options.tag} class='#{options.class}'>#{matched}</#{options.tag}>"
      filtered = text.replace(reg, str)

      $(item).html(filtered)

  $.fn.censor.options =
    tag: 'span'
    class: 'censored'
    caseSensitive: false
  

) jQuery, window, document
