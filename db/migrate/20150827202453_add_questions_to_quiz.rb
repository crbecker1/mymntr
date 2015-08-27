class AddQuestionsToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :question_1, :boolean, deafult: nil
    add_column :quizzes, :question_2, :boolean, deafult: nil
    add_column :quizzes, :question_3, :boolean, deafult: nil
    add_column :quizzes, :question_4, :boolean, deafult: nil
    add_column :quizzes, :question_5, :boolean, deafult: nil
    add_column :quizzes, :question_6, :boolean, deafult: nil
    add_column :quizzes, :question_7, :boolean, deafult: nil
    add_column :quizzes, :question_8, :boolean, deafult: nil
    add_column :quizzes, :question_9, :boolean, deafult: nil
    add_column :quizzes, :question_10, :boolean, deafult: nil
    add_column :quizzes, :question_11, :boolean, deafult: nil
    add_column :quizzes, :question_12, :boolean, deafult: nil
  end
end
