# jekyll-scouts_uk_2018

A [Jekyll](https://jekyllrb.com/) template for the UK Scouts brand (2018). You can see it in use at [27thaberdeen.org.uk](https://www.27thaberdeen.org.uk/)


## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem 'jekyll-scouts_uk_2018', '~> 1.1'
```

And add this line to your Jekyll site's _config.yml:

```yaml
theme: jekyll-scouts_uk_2018
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-scouts_uk_2018


## Usage

Firstly set a few keys in your _config.yml file:
* name: Your group's name (will appear in the footer and title, unless title: is set), e.g. "1st Someplace Scout Group"
* charity_number: (required if you have one) displays in the footer.
* country_colour: (optional) Set to blue for Scotland, red for Wales, or Green for Northern Ireland.


### Customise the site header

To display a link to [Online Scout Manager](https://www.onlinescoutmanager.co.uk)'s Parents Portal in the navigation add the following to your _config.yml
```
header_osm: true
```

To add your own logo, first visit the [Scouts Brand Centre](https://scoutsbrand.org.uk/) and generate a white one (if you haven't already). Add it into your assets folder and create the file _includes/header-logo.html to display it.
```
<img src="WHERE EVER YOU PUT THE LOGO FILE" alt="{{ site.name | escape }}" loading="eager" role="presentation">
```

The text in the header can also be customised by creating _includes/header-text.html


### Customise the site footer

Links to contact your group / your groups social media can be added by adding any of the following keys to your _config.yml
```
social_links:
  email:
  twitter:
  facebook:
  flickr:
  instagram:
  pinterest:
  youtube:
  github:
```

### Add your sections

You'll need to add some stuff to your _config.yml
```
collections:
  sections:
    output: true

defaults:
  - scope:
      type: sections
    values:
      layout: section
```

Then create your files in the _sections directory. A number of front matter settings are available:
* title:
* type: squirrels / beavers / cubs / scouts / explorers / network / activesupport
* youth_approved.level: foundation / bronze (causes the relevant seal to be displayed)
* youth_approved.expires: date of certificate expiry in YYYY-MM-DD format.
* social_links.email
* social_links.twitter
* social_links.facebook
* social_links.flickr
* social_links.instagram
* social_links.pinterest
* social_links.youtube
* social_links.github


### Other things you get

#### Ability to display twitter content (provided by [jekyll-twitter-plugin](https://github.com/rob-murray/jekyll-twitter-plugin))

If a section has a social_links.twitter value and the screen is wide enough then their last five tweets will be displayed at the side of the page.
#### Basic search engine optimisation (provided by [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag))

#### Selection of images/assets
* Logos: assets/images/logos
  * Sections and Active Support
  * Linear / Stacked
  * FleurDeLis
* [Tabler icons](https://tablericons.com/): assets/images/tabler-icons-sprite.svg
* Scouts Scotland's Youth Approved seals: assets/images
* Nunito Sans font: assets/fonts/NunitoSans