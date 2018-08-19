RSpec.describe AZNConverter do
  it "has to return azn conversion of 5$ over 0.78" do
    expect(5.to_azn(current: 0.78)).to eq 3.9000000000000004
  end

  it "has to return conversion by words" do
    expect(5.to_azn(current: 1, words: true)).to eq "beş manat"
  end

  it "has to be integer" do
    expect(5.to_azn(current: 1)).to be_kind_of Integer
  end

  it "has to be float" do
    expect(5.to_azn(current: 0.78)).to be_kind_of Float
  end

  it "has to connect successfully" do
    expect(5.to_azn).to be_truthy
  end
end
