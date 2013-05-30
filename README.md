## Important Note

This is currently unmaintained, it's not working with the latest Padrino releases.
I'm happy to review and merge pull requests to fix it. I will get round to updating this project very very soon.

## Padrino CMS

This gem provides a simple content management solution for Padrino.

### Quick start
`gem install padrino-cms`

then

`padrino-cms my_cms_app`

### About the content model

This project makes use of the low priority routes in Padrino to retrieve persisted content.
e.g. a request made to http://localhost:3000/about-us will fall through to the low priority route "/:path" and attempt to retrieve a Content record with the path 'about-us'.
Adding an explicit route overrides this behaviour as you would expect so your Padrino project behaves as it should.

Other features include Carrierwave and FckEditor integration, when you edit content you can insert images via the FckEditor image uploader.

## Wish list

Content relationships and index pages.
Templating.
Tests, tests and more tests.
