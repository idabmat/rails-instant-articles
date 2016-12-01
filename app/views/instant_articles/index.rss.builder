xml.rss version: '2.0', 'xmlns:content' => 'http://purl.org/rss/1.0/modules/content' do
  xml.channel do
    xml.title 'My Blog'
    xml.link articles_url
    xml.description 'Instant Articles from my blog.'
    xml.language 'en-us'

    @articles.each do |article|
      xml.item do
        xml.title article.title
        xml.link article_url(article.id)
        xml.content :encoded do
          xml.cdata! render(template: 'instant_articles/show', locals: { article: article }, formats: :html, layout: false)
        end
        xml.guid article_url(article.id)
        xml.pubDate article.created_at.iso8601
        xml.author article.author.name
      end
    end
  end
end
