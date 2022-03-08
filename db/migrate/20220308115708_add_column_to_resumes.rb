class AddColumnToResumes < ActiveRecord::Migration[6.1]
  def change
    add_column :resumes, :still_working, :boolean
  end
end
