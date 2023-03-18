require("blackjack").setup({
  card_style = "mini", -- Can be "mini" or "large".
  suit_style = "black", -- Can be "black" or "white".
  scores_path = "/home/green726/.config/nvim/blackjack/blackjack_scores.json", -- Default location to store the scores.json file.
})

require("killersheep").setup {
  gore = true,           -- Enables/disables blood and gore.
  keymaps = {
    move_left = "h",     -- Keymap to move cannon to the left.
    move_right = "l",    -- Keymap to move cannon to the right.
    shoot = "<Space>",   -- Keymap to shoot the cannon.
  },
}
