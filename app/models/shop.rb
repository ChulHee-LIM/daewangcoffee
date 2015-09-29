class Shop < ActiveRecord::Base
	
	mount_uploader :thumbnail, ShopThumbnailUploader
	mount_uploader :image, ShopImageUploader

end
