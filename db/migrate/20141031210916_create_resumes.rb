class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
    	t.string :first_name
    	t.string :last_name
    	t.text :image_url
      	t.timestamps
    end
  end
end
