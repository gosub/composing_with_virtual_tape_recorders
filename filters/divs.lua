-- filters/divs.lua
-- Convert fenced divs to LaTeX tcolorbox environments for PDF output,
-- and to styled HTML divs for HTML output.
-- Also rewrites .svg image paths to .pdf for LaTeX output.

local function is_format(fmt)
  return FORMAT:match(fmt)
end

-- Rewrite SVG paths to PDF for LaTeX/tectonic
function Image(el)
  if is_format("latex") and el.src:match("%.svg$") then
    el.src = el.src:gsub("%.svg$", ".pdf")
  end
  return el
end

function Div(el)
  -- Creative Option callout box
  if el.classes:includes("creative-option") then
    if is_format("latex") then
      local content = pandoc.write(pandoc.Pandoc(el.content), "latex")
      return pandoc.RawBlock("latex",
        "\\begin{creativeoption}\n" .. content .. "\\end{creativeoption}")
    elseif is_format("html") then
      el.classes:insert("callout-box")
      local header = pandoc.RawBlock("html",
        '<div class="creative-option"><div class="creative-option-title">Creative Option</div>')
      local footer = pandoc.RawBlock("html", "</div>")
      local blocks = {header}
      for _, b in ipairs(el.content) do
        table.insert(blocks, b)
      end
      table.insert(blocks, footer)
      return blocks
    end
  end
end
