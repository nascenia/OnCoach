class AddClientIdToTrainingSessions < ActiveRecord::Migration
  def self.up
    add_column :training_sessions, :start_at, :datetime
    add_column :training_sessions, :client_id, :integer
    add_column :training_plan_templates, :start_date, :date
    remove_column :training_sessions, :day
  end

  def self.down
    remove_column :training_sessions, :start_at
    remove_column :training_sessions, :client_id
    remove_column :training_sessions, :start_at
  end
end
