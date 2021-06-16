require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name ) }
  end

  context 'helpers' do
    it do
      menu = create(:top_level)
      sub_menu1 = create(:second_level)
      sub_menu2 = create(:second_level)

      sub_menu1.move_to_child_of(menu)
      sub_menu2.move_to_child_of(menu)

      expect(menu.root.name).to eq("Top level category 1")
      expect(menu.children.length).to eq(2)
    end
  end
end
