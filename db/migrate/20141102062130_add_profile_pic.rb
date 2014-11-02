class AddProfilePic < ActiveRecord::Migration
  def change
  	add_column :resumes, :profile_pic, :text
  	remove_column :resumes, :image_url
  end
end
