describe GoogleCoordinates do
  it "Should be able to initialize without an api key" do
    client = GoogleCoordinates::Client.new
    expect(client.api_key).to eq(nil)
  end
  
  it "Should be able to initialize with an api key" do
    client = GoogleCoordinates::Client.new(RSPEC_API_KEY)
    expect(client.api_key).not_to eq(nil)
  end
  
  it "Should be able to initiazlie with an api key and team id" do
    client = GoogleCoordinates::Client.new(RSPEC_API_KEY,TEAM_ID)
    expect(client.team_id).not_to eq(nil)
  end
  
  
end