Choongang.Router.map () ->
  @route 'tag', { path: '/:tag_name' }
  @resource 'links', ->
    @route 'latest', { path: 'latest' }
  @resource 'link', { path: '/links/:id' }, ->
    @route 'report', { path: '/links/:id/report' }
  @route 'submit_link', { path: '/links/new' }
  @route 'front_page', { path: '' }

Choongang.Router.reopen location: 'history'
