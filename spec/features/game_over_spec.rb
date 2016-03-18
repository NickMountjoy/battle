feature 'Game over' do
  scenario 'Game ends when HP points reach 0' do
    sign_in_and_play
    10.times { attack_kill }
    click_button 'ATTACK!'
    expect(page).to have_content("GAME OVER")
  end
end
