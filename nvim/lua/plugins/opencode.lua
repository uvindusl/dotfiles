return {
  "nickjvandyke/opencode.nvim",
  version = "*",
  config = function()
    vim.g.opencode_opts = {}

    vim.o.autoread = true

    -- Ask with context
    vim.keymap.set({ "n", "x" }, "<leader>oa", function()
      require("opencode").ask("@this: ")
    end, { desc = "Ask OpenCode with context" })

    -- Select prompt / action
    vim.keymap.set({ "n", "x" }, "<leader>os", function()
      require("opencode").select()
    end, { desc = "Select OpenCode action" })

    -- Operator mode (go + motion = append range)
    vim.keymap.set({ "n", "x" }, "go", function()
      return require("opencode").operator("@this ")
    end, { desc = "Append range to OpenCode", expr = true })

    vim.keymap.set("n", "goo", function()
      return require("opencode").operator("@this ") .. "_"
    end, { desc = "Append line to OpenCode", expr = true })

    -- Scroll in the opencode panel
    vim.keymap.set("n", "<leader>ou", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "Scroll OpenCode up" })

    vim.keymap.set("n", "<leader>od", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "Scroll OpenCode down" })
  end,
}
