Factory.define :boat do |b|
  b.name 'Boat one'
  b.slug 'boat-one'
  b.description 'boat one description'
  b.association :owner
end

Factory.define :owner do |o|
  o.first_name 'Stephan'
  o.last_name 'van Eijkelenburg'
  o.email 'stephanvane@gmail.com'
end