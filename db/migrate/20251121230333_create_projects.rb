class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :thumbnail_url
      t.string :video_url
      t.boolean :pro

      t.timestamps
    end
  end
end
