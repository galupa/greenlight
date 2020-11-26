class CreateUserSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_settings do |t|
      t.string :name
      t.string :value, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end

    User.all.each do |user|
      user.initialize_settings
    end
  end
end
