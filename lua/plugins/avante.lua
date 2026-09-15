-- avante.nvim - AI assistant (Cursor-style) with local Ollama
return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "stevearc/dressing.nvim",
    },
    opts = {
      -- Default model
      provider = "qwen_coder",
      providers = {
        -- qwen2.5-coder:3b (~1.9GB) - the pulled variant (`ollama list`);
        -- 7b was configured here but was never pulled, so the default
        -- provider silently 404'd against Ollama until this was caught.
        -- `ollama pull qwen2.5-coder:7b` then switch back for better quality.
        qwen_coder = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://127.0.0.1:11434/v1",
          model = "qwen2.5-coder:3b",
        },
        -- deepseek-coder:6.7b (~3.8GB) - code focused
        deepseek_coder = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://127.0.0.1:11434/v1",
          model = "deepseek-coder:6.7b",
        },
        -- llama3.2:3b (~2GB) - fast, general
        -- NOT pulled yet (`ollama list`): run `ollama pull llama3.2:3b`
        -- before switching to this provider, or it 404s the same way
        -- qwen_coder's 7b did.
        llama_fast = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://127.0.0.1:11434/v1",
          model = "llama3.2:3b",
        },
        -- phi3.5:mini (~2.3GB) - small but capable
        -- NOT pulled yet either: `ollama pull phi3.5:mini` first.
        phi_mini = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://127.0.0.1:11434/v1",
          model = "phi3.5:mini",
        },
      },
      windows = {
        position = "right",
        width = 40,
      },
    },
  },

  {
    "stevearc/dressing.nvim",
    opts = {},
  },
}
