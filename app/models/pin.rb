class Pin < ActiveRecord::Base
			belongs_to :user

			has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://www.invertersale.com/media/product_medium/165_image-not-found.gif"
			# validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
			do_not_validate_attachment_file_type :image
end
