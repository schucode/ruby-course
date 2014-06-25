module Honkr
  class SignIn

    def self.run(params) 
      # TODO
      # input: :username => "alice", :password => "my password"
      # output :success? => true, :session_id => some_ID
    
      output = {:success? => false, :session_id => nil, :error => nil }

      check_user = Honkr.db.get_user_by_username

      if check_user.username == params[:username]
        if check_user.password_digest == Digest::SHA1.hexdigest(params[:password])
          output[:success?] = true
          session_id = Honkr.db.create_session(:user_id => check_user.id)
          output[:session_id] = session_id
        else
          output[:error] = :invalid_password
        end
      else
        output[:error] = :not_in_database
      end

      return output
    end 
  end
end




# it "creates a session for an existing user" do

#   expect(Honkr.db).to receive(:create_session).with(:user_id => @user.id).and_return("my session id")



#   result = Honkr::SignIn.run(:username => "alice", :password => "my password")

#   expect(result[:success?]).to eq true

#   expect(result[:session_id]).to eq "my session id"

# end