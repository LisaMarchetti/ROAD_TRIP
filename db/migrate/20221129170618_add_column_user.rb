class AddColumnUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :study_field, :string
    add_column :users, :university, :string
    add_column :users, :university_email, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :about_yourself, :string
    add_column :users, :expect_experience, :string
    add_column :users, :passion, :string
    add_column :users, :free_time, :string
    add_column :users, :password, :string
  end
end
