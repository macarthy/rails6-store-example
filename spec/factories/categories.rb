FactoryBot.define do

  factory :top_level, class: Category do
    sequence(:name) { |n| "Top level category #{n}" }

    factory :top_level_with_second_level, class: Category do
      transient do
        count { 5 }
      end

#      second_level do
#        2.times { second_level.move_to_child_of(top_level) }
#      end
    end
  end

  factory :second_level, class: Category do
    sequence(:name) { |n| "2nd lev cat #{n}" }
  end

end
