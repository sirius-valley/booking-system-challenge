RSpec.describe ActivitySession, type: :model do
  let(:user) { create(:user) }
  let(:activity_session_group) { create(:activity_session_group) }
  let(:activity_session) { create(:activity_session, activity_session_group:, user:) }

  describe "#full?" do
    context "when the activity session is not full" do
      it "returns false" do
        expect(activity_session.full?).to be_falsey
      end
    end

    context "when the activity session is full" do
      before do
        create_list(:booking, activity_session.capacity, activity_session:)
      end

      it "returns true" do
        expect(activity_session.full?).to be_truthy
      end
    end
  end
end
