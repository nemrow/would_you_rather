class RoundSerializer < ActiveModel::Serializer
  attributes :id, :scenerio_1, :scenerio_2, :author, :score

  def score
    object.score
  end
end
