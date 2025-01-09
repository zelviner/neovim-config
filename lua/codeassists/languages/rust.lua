local Rust = {}

Rust.name = "rust_analyzer"

Rust.opts = {
  settings = {
    ["rust-analyzer"] = {
     cargo = {
       loadOutDirsFromCheck = true,  -- 加载 cargo 的检查结果
     },
     procMacro = {
       enable = true,  -- 启用过程宏支持
     },
   }
 }
}

return Rust


