class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :gender, :dm, :characters
end
