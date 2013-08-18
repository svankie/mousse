# for the first time ever.

"""
  XXX: Koala.
  XXX: Requests.
"""

module FF
  module Scraper
    def parse stream; end
  end


  module FacebookScraper
    include Scraper

    def parse stream
      # WIP (on paper, yet).
    end
  end


  module RssScraper
    include Scraper
  end
end
