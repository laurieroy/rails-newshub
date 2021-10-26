require 'rails_helper'

describe Post, type: :model do
	subject {
		Post.new(title: 'A post')
	}
	it 'is valid with valid attributes' do

		expect(subject).to be_valid
	end

	it 'is not valid without a title' do
		subject.title = nil

		expect(subject).to_not be_valid
	end
end
