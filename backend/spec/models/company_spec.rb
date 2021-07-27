require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company) { described_class.new(name: name) }
  let(:name) { "テスト・アンド・カンパニー" }

  describe '#valid?' do
    subject { company.valid? }

    context '企業名が入っている場合' do
      it { is_expected.to be_truthy }
    end

    context '企業名がnilの場合' do
      let(:name) { nil }

      it { is_expected.to be_falsy }
    end
  end
end
