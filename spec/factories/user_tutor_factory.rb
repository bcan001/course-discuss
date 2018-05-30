FactoryBot.define do
  factory :user_tutor do
    rate 12
    rate_type 'Hourly'
    description 'I am willing to teach this course because I have experience doing this type of work.'
    user_id nil
    course_id nil
  end
end
