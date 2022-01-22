#json.extract! article, :id, :featured, :title, :url, :imageUrl, :newsSite, :summary, :publishedAt, :launches, :events

json.id = article.id
json.featured = article.featured
json.title = article.title
json.url = article.url
json.imageUrl = article.imageUrl
json.newsSite = article.newsSite
json.summary = article.summary
json.publishedAt = article.publishedAt

json.launches article.launches do |launch|
    json.partial! 'launches/launch', launch: launch
end

json.events article.events do |event|
    json.partial! 'events/event', event: event
end