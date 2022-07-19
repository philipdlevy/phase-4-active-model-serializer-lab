class AuthorPostSerializer < ActiveModel::Serializer
  attributes :short_content, :title, :tags

  has_many :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
