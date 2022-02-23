require "flying_cats/reflective_wing_checker"

RSpec.describe FlyingCats::ReflectiveWingChecker do
  subject { described_class.new(cat) }

  let(:cat) { FlyingCats::Cat.new }

  describe "#can_fly_without_red_bull?" do
    subject { super().can_fly_without_red_bull? }

    it { is_expected.to be_falsey }
  end

  describe "#can_fly_with_red_bull?" do
    subject { super().can_fly_with_red_bull? }

    it { is_expected.to be_truthy }
  end
end
