class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :username
  bilongs_to :user

  def username
    object.user.name
  end
end
