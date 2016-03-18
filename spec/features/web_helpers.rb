def sign_in_and_play
  visit('/')
  fill_in(:player_1_name, with: 'Adil')
  fill_in(:player_2_name, with: 'Nick')
  click_button 'submit'
end


def attack_kill
    click_button 'ATTACK!'
    click_button 'Return to Battle'
end
