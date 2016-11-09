class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :doctor_questions, :class_name => 'Question', :foreign_key => 'doctor_id'
  has_many :patient_questions, :class_name => 'Question', :foreign_key => 'patient_id'
end
