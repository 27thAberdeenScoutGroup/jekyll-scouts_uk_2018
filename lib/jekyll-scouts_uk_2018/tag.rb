# frozen_string_literal: true

module Jekyll
  module ScoutsUk2018
    class Tag < Liquid::Tag
      def initialize(_tag_name, markup, _parse_context)
        super

        @level, @expires = markup.strip.split(/\s+/, 2)
      end

      def render(context)
        expires = @expires || context.registers[:page]['youth_approved']&.[]('expires')
        return if expires && expires.to_s < Date.today.to_s
        level = @level || context.registers[:page]['youth_approved']&.[]('level')

        logo = "#{context.registers[:site].config.fetch('baseurl', '').to_s.chomp('/')}/assets/images/YouthApproved#{level&.capitalize}"
        alt = if level
          "We've got the #{level.capitalize} Youth Approved award from Scouts Scotland."
        else
          "Scouts Scotland's Youth Approved award."
        end

        html = <<~__HTML__
          <a href="https://www.scouts.scot/members/youth-involvement/youth-approved-award/" rel="nofollow noopener" target="_blank">
            <img
              class="youth-approved-seal"
              src="#{logo}.png"
              srcset="#{logo}-100.png 100w,
                      #{logo}-320.png 320w,
                      #{logo}-480.png 480w,
                      #{logo}-640.png 640w"
              alt="#{alt}"
            >
          </a>
        __HTML__
        html.gsub(/\s+\>/, '>').gsub(/\s+\</, '<').gsub(/\s+/, ' ')
      end
    end
  end
end
