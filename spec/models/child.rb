require 'spec_helper'

RSpec.describe ::Child, type: :model do
  before(:all) do
    @grand = FactoryGirl.create(:grand)
    @parent = FactoryGirl.create(:parent, grand: @grand)
    binding.pry
    @child = FactoryGirl.create(:child, parent_id: @parent.id[0][1], grand_id: @grand.id)
  end

  it { expect( @parent.childs.size ).to eq 1 }
end
