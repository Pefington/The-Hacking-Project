class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title

      # t.belongs_to :gossiptag, index: true
      t.timestamps
    end
  end
end
