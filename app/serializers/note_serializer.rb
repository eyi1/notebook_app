class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  belongs_to :notebook
end
