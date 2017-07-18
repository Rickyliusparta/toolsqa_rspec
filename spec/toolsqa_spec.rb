require 'spec_helper'

describe 'testing toolsqa practice form' do

	before(:all) do
		@web = Capybara::Session.new(:chrome)
		@web.visit("http://toolsqa.com/automation-practice-form/")
	end

	it 'should open webpage' do
		expect(@web.current_url).to eq "http://toolsqa.com/automation-practice-form/"
	end

	it 'should input firstname' do
		@web.find_field('firstname').value
		@web.fill_in('firstname', :with => 'Ricky')
		# firstname.send_keys('Ricky')
	end

	it 'should input lastname' do
		@web.find_field('lastname').value
		@web.fill_in('lastname', :with => 'Liu')

	end

	it 'should select male' do
		@web.find_field('sex').value
		@web.find_by_id('sex-0').click
	
	end

	it 'should select experinece years' do
		@web.find_by_id('exp-2').click 
	end

	it 'should select profile pictures' do
		# @web.find_by_id('photo').click
		@web.attach_file('photo', '/Users/Tech-A38/Desktop/KitKat.jpg')
		sleep 2
	end

	it 'should input date' do
		date = @web.find_by_id('datepicker')
		date.send_keys('14/07/2017')

	end

	it 'should select automation tester' do
		@web.find_by_id('profession-1').click
	end

	it 'should select automation tool' do
		@web.find_by_id('tool-2').click
	end

	it 'should be able to selcet a continent' do
		@web.find_by_id('continents').click
		@web.find(:select, 'continents').first(:option, 'Asia').select_option
	end


	it 'should select which selenium commands' do
		@web.find_by_id('selenium_commands').click
		@web.find(:select, 'selenium_commands').first(:option, 'Wait Commands').select_option
	end
end

	