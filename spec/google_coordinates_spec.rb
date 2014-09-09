describe GoogleCoordinates do

  context "Configuration" do 
    it "Should be able to add variable values to the Class" do

      GoogleCoordinates.configuration do |config|
        puts GOOGLE_API
        config.api_key = GOOGLE_API
        config.team_id = TEAM_ID
      end
      expect(GoogleCoordinates.api_key).to eq(GOOGLE_API)
      expect(GoogleCoordinates.team_id).to eq(TEAM_ID)
      
    end  
      
  end
  
  after do
    GoogleCoordinates.configuration do |config|
      config.api_key = nil
      config.team_id = nil
    end
  end
  
  
  
end