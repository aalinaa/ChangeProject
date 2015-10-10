class Product < ActiveRecord::Base
	has_many :line_items
	belongs_to :user
	

	before_destroy :ensure_not_referenced_by_any_line_item

	validates :title, :description, :img, :group, :subgroup, presence: true
	validates :img, allow_blank: true ,format:{
		with: %r{\.(gif|jpg|jpeg|png)\Z}i,
		message: 'Image has to be GIF, JPEG or PNG format.'
	}

	mount_uploader :img, ImgUploader

	private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base,"exists line items")
			return false
		end
	end
end
