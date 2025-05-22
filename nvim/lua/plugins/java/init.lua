return {
  "nvim-java/nvim-java",
  config = false,
  setup = {
    jdtls = function()
      -- Your nvim-java configuration goes here
      require("java").setup({
        -- root_markers = {
        --   "settings.gradle",
        --   "settings.gradle.kts",
        --   "pom.xml",
        --   "build.gradle",
        --   "mvnw",
        --   "gradlew",
        --   "build.gradle",
        --   "build.gradle.kts",
        -- },
      })
    end,
  },
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            handlers = {
              ["language/status"] = function(_, result)
                -- Print or whatever.
              end,
              ["$/progress"] = function(_, result, ctx)
                -- disable progress updates.
              end,
            },
            -- settings = {
            --   java = {
            --     configuration = {
            --       runtimes = {
            --         {
            --           name = "JavaSE-23",
            --           path = "/usr/local/sdkman/candidates/java/23-tem",
            --         },
            --       },
            --     },
            --   },
            -- },
          },
        },
      },
    },
  },
}
