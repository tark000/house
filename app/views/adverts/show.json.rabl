object @adverts
attributes :id, :title

child :builds do
    attributes :id, :status, :name
end
