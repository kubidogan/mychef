class AddColumnsToResumes < ActiveRecord::Migration[6.1]
  def change
    add_column :resumes, :location, :string
    add_column :resumes, :title, :string
  end
end
