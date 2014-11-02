class AddFieldToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :resume, :blob
  end
end
