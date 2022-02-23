require "flying_cats/wing_checker"

RSpec.describe FlyingCats::WingChecker do
  let(:cat) { FlyingCats::Cat.new }

  describe ".can_fly_without_red_bull?" do
    subject { described_class.can_fly_without_red_bull?(cat) }

    it { is_expected.to be_falsey }
  end

  describe ".can_indirectly_fly_without_red_bull?" do
    subject { described_class.can_indirectly_fly_without_red_bull?(cat) }

    it { is_expected.to be_falsey }
  end

  describe ".can_reflectively_fly_without_red_bull?" do
    subject { described_class.can_reflectively_fly_without_red_bull?(cat) }

    it { is_expected.to be_falsey }
  end

  describe ".can_fly_with_red_bull?" do
    subject { described_class.can_fly_with_red_bull?(cat) }

    it { is_expected.to be_truthy }
  end

  describe ".can_indirectly_fly_with_red_bull?" do
    subject { described_class.can_indirectly_fly_with_red_bull?(cat) }

    it { is_expected.to be_truthy }
  end

  describe ".can_reflectively_fly_with_red_bull?" do
    subject { described_class.can_reflectively_fly_with_red_bull?(cat) }

    it { is_expected.to be_truthy }
  end
end
