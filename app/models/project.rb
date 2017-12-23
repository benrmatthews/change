class Project < ApplicationRecord
  
  def project_params
  	params.require(:user).permit(:name, :website, :info, :area, :tag_list)
  end	
  acts_as_taggable_on :tags
end
