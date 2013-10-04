require 'spec_helper'

describe "when i send email to generated mailbox" do
  context "email" do
    let(:user){ DataGenerator::Gen.user.create_mailbox }
    before do
      puts user.email
      sleep 20
    end

    it "should have test body" do
      body = MyEmail.find_by_recipient(user.email).plain_text_body
      expect(body).to include('Lorem')
    end
  end
end