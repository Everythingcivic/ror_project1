class Post
  include Mongoid::Document
  include Mongoid::Paperclip

 has_mongoid_attached_file :ror_pic ,:styles => {
      :original => ['1920x1680>', :jpg],
      :small    => ['100x100#',   :jpg],
      :medium   => ['250x250',    :jpg],
      :large    => ['500x500>',   :jpg]
    }
	validates_attachment :ror_pic, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  
  field :name, type: String
  field :age, type: Integer
  field :comment, type: String
  field :address, type: String
end
