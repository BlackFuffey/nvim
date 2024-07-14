return {
  'jackmort/chatgpt.nvim',
  event = 'VeryLazy',
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "cat /home/chara/.oaikey",  -- Command to fetch the API key
      openai_params = {
        model = "gpt-4-turbo"  -- Set the model to GPT-4 Turbo
      },
      openai_edit_params = {
        model = "gpt-4-turbo"  -- Set the model for editing to GPT-4 Turbo
      }
    })

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>cc", "<cmd>ChatGPT<CR>", { desc = "Open ChatGPT" })  -- Keymap for opening ChatGPT
    keymap.set("n", "<leader>cp", "<cmd>ChatGPTActAs<CR>", { desc = "Open ChatGPT prompt selection" })  -- Keymap for prompt selection
    keymap.set({"n","v"}, "<leader>ce", "<cmd>ChatGPTEditWithInstructions<CR>", { desc = "Generative Edit" })  -- Keymap for generative editing
    keymap.set({"n","i"}, "<leader>c<Space>", "<cmd>ChatGPTCompleteCode<CR>", { desc = "Generative Completion" })  -- Keymap for code completion

  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim"
  }
}
