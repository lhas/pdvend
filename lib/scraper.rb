require 'wombat'

# Classe para fazer o scraper (consultar HTML de páginas externas)
class Scraper

  def parse(url)
    puts url

    Wombat.crawl do
      base_url url
      path '/'

      h1({xpath: "//h1"}, :list)
      h2({xpath: "//h2"}, :list)
      h3({xpath: "//h3"}, :list)
    end
  end

end
