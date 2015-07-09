class CreateSocialProfiles < ActiveRecord::Migration
  def change
    create_table :social_profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :provider
      t.string :uid
      t.string :name
      t.string :nickname
      t.string :email
      t.string :url
      t.string :image_url
      t.text :description
      t.string :access_token
      t.string :access_secret
      t.text :raw_info

      t.timestamps null: false
    end

    add_index :social_profiles, [:provider, :uid], unique: true
  end
end
