class Project < ApplicationRecord
  
  def project_params
  	params.require(:user).permit(:name, :website, :info, :area, :tag_list)
  end	
  acts_as_taggable_on :tags

  def self.search(term)
	if term
	  where('name ILIKE ?', "%#{term}%")
	else
	  all
	end
  end
end
