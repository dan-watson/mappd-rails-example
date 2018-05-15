# frozen_string_literal: true

RSpec.describe Post, type: :model do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:published).of_type(:boolean) }
  it { should have_db_column(:body).of_type(:text) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
