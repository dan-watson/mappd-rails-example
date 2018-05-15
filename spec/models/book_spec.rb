# frozen_string_literal: true

RSpec.describe Book, type: :model do
  it { should have_db_column(:name).of_type(:string) }

  it { should have_and_belong_to_many(:authors) }
end
