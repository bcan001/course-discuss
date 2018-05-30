FactoryBot.define do
  factory :post do
    title 'The First Post'
    description 'This is the first post'
    user_id nil
    relationship_type 'course'
    relationship_id nil
  end
end

