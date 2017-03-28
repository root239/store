class Store < ApplicationRecord
    has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "150x150>#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    
    def self.search(search)
        # no longer being used
        # simple search that compares name input into search field with store indexes
        if search   
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
end

