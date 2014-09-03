module GoogleCoordinates
  class Client
    attr_reader :api_key,:team_id
    include HTTParty
    base_uri "HTTPS://WWW.GOOGLEAPIS.COM/AUTH/COORDINATE"
    
    def initialize(api_key = @api_key, team_id = @team_id , options= {})
      api_key ? (@api_key = api_key) : @api_key = GoogleCoordinates.api_key
      team_id ? (@team_id = team_id) : @team_id = GoogleCoordinates.team_id
    end
    
  end
end