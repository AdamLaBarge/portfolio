class AddYouTubeLinkToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :youtube, :string
  end
end
