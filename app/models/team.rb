class Team < ApplicationRecord
  # Validations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_uniqueness_of :username

  # Associations
  has_many :answers
  has_many :questions, through: :answers

  # Hooks
  after_create :create_first_empty_answer

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

  private
    def create_first_empty_answer
      self.answers.create(question_id: 1)
    end
end
