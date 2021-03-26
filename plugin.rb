# name: embed-etherpad-lite
# about: Embed Etherpad Lite pads using Onebox; this version uses raw html
# version: 1.1
# authors: Bernhard Fürst, Fiona Marie
# url: https://github.com/fuerst/embed-etherpad-lite

class Onebox::Engine::EtherpadLiteOnebox
  include Onebox::Engine
  include Onebox::Engine::LayoutSupport
  include Onebox::Engine::HTML

  always_https
  matches_regexp(/https:\/\/lilith.empress.ml\/[^\/]+$)

  def to_html
    "<div>#{raw}</div>"
  end
end
