class ChangeCourseIdtoInteger < ActiveRecord::Migration
  def change
    remove_column :students, :course_id, :string
    add_column :students, :course_id, :integer
  end
end
