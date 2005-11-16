class Textfilters::TextileController < TextFilterPlugin::Markup
  plugin_display_name "Textile"
  plugin_description 'Textile markup language'

  def self.filtertext(controller,text,params)
    RedCloth.new(text).to_html
  end
end
