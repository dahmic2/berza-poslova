require 'app' 


describe App do
	it "should launch" do
		App.launch.should be_true
end
end