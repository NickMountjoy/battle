feature 'Attacking' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content("You attacked Nick")
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).not_to have_content 'Nick: 60 HP'
    expect(page).to have_content 'Nick: 50 HP'
  end

  scenario 'switch players each move' do
    sign_in_and_play
    click_button 'ATTACK!'
    click_button 'Return to Battle'
    expect(page).to have_content"Nick turn"
  end

end
