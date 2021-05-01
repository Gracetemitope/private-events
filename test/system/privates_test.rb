require 'application_system_test_case'

class PrivatesTest < ApplicationSystemTestCase
  setup do
    @private = privates(:one)
  end

  test 'visiting the index' do
    visit privates_url
    assert_selector 'h1', text: 'Privates'
  end

  test 'creating a Private' do
    visit privates_url
    click_on 'New Private'

    fill_in 'Event date', with: @private.event_date
    click_on 'Create Private'

    assert_text 'Private was successfully created'
    click_on 'Back'
  end

  test 'updating a Private' do
    visit privates_url
    click_on 'Edit', match: :first

    fill_in 'Event date', with: @private.event_date
    click_on 'Update Private'

    assert_text 'Private was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Private' do
    visit privates_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Private was successfully destroyed'
  end
end
