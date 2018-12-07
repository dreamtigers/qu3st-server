class Team < ApplicationRecord
  # Validations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_uniqueness_of :username

  # Associations
  has_many :answers
  has_many :questions, through: :answers

  # Hooks
  after_create :create_empty_answers

  # These are necessary so Devise uses usernames without worrying about emails
  def email_required?
    false
  end
  def email_changed?
    false
  end
  # use this instead of email_changed? for rails >= 5.1
  def will_save_change_to_email?
    false
  end

  def next_question
    question = self.questions.where(answers: {complete: nil}).first
    if question == nil
      question = self.questions.where.not(answers: {complete: nil}).last
    end
    return question
  end

  private
    def create_empty_answers
      Question.ids.each do |id|
	self.answers.create(question_id: id)
      end
    end
end
