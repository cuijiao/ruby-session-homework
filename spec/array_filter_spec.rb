require_relative "../app/array_filter"

describe "array_filter" do
  it "return data more than 2" do
    result = [1, 2, 3, 4].filter { |n| n >= 2 }
    expect(result).to eq [2, 3, 4]
  end
end