# frozen_string_literal: true

require_relative 'jekyll-scouts_uk_2018/tag'

module Jekyll
  module ScoutsUk2018
  end
end


Liquid::Template.register_tag('youth_approved', Jekyll::ScoutsUk2018::Tag)
