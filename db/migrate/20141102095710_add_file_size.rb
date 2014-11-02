class AddFileSize < ActiveRecord::Migration
  def change
  	add_column :resumes, :resume_size, :string
  end
end
