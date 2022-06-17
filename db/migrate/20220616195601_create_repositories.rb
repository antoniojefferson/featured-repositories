class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :repository_id
      t.string :name
      t.string :full_name
      t.string :avatar_url
      t.string :html_url
      t.text :description
      t.string :current_tag
      t.json :languages
      t.datetime :created
      t.datetime :pushed
      t.string :homepage
      t.string :stargazers_count
      t.string :watchers_count
      t.string :language
      t.string :license

      t.timestamps
    end
  end
end
