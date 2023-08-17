$(document).on('turbolinks:load', function() {
  if ($('#infinite-scrolling')) {
    $(window).on('scroll', infinityScrolling)
    $('.pagination').hide()
  }
})

function infinityScrolling() {
  let scrollHeight = Math.max(
    document.body.scrollHeight, document.documentElement.scrollHeight,
    document.body.offsetHeight, document.documentElement.offsetHeight,
    document.body.clientHeight, document.documentElement.clientHeight
  )

  const morePostsUrl = $('.pagination .next_page').attr('href')

  if(window.scrollY >= scrollHeight - innerHeight && morePostsUrl) {
    $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
    $('.pagination').show()
    $.getScript(morePostsUrl)
  }
}
