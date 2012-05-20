jQuery ->
  $('#unrecorded_dives').submit ->
    $(this).find('.ajax-loader').show()
    alert('Bam!')
    $(this).find('.ajax-loader').hide()
