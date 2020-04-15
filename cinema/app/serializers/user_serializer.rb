class UserSerializer < ActiveModel::Serializer
  attributes :id, :document, :full_name, :email, :mobile_phone
end
