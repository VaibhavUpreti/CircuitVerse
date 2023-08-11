class Changename < ActiveRecord::Migration[7.0]
  def change
    user = User.find(1)
    user.name="vaibhavupreti"
    user.save!
    # Rake::Task["db:seed"].invoke
  end
end
