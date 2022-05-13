#thanks to https://gist.github.com/dtr2300/06fe9f5f804f30d8ef10c442a3cc8bac for this code

## https://pypi.org/project/art/
import art


## add extra headers
extra_headers = r"""
	["green726"] = {
		[[  _____                      ___________   ____ ]],
		[[ |  __ \                    |___  / __  \ / ___| ]],
		[[ | |  \/_ __ ___  ___ _ __     / /`' / /'/ /___  ]],
		[[ | | __| '__/ _ \/ _ \ '_ \   / /   / /  | ___ \ ]],
		[[ | |_\ \ | |  __/  __/ | | |./ /  ./ /___| \_/ | ]],
		[[  \____/_|  \___|\___|_| |_|\_/   \_____/\_____/ ]],
	},
""".rstrip()

## list of fontnames to exclude
exclude = []


def text2art(text, fontname, compress=False):
    data = [line for line in art.text2art(text, font=fontname).splitlines() if line.strip()]
    spaces_left = min([(len(line) - len(line.lstrip())) for line in data])
    if spaces_left:
        data = [line[spaces_left:] for line in data]
    spaces_right = min([(len(line) - len(line.rstrip())) for line in data])
    if spaces_right:
        data = [line[:(len(line) - spaces_right)] for line in data]
    if compress:
        data = ["".join(x) for x in zip(*data) if "".join(x).strip()]
        data = ["".join(x) for x in zip(*data)]
    return data


def create_nvim_headers(text="greenvim", add=None, exclude=None, compress=False):
    result = ["local headers = {"]
    if add:
        result.append(add)
    for fontname in art.FONT_NAMES:
        if fontname in art.NON_ASCII_FONTS:
            continue
        if exclude and fontname in exclude:
            continue
        result.append('\n  ["' + fontname + '"] = {')
        data = text2art(text, fontname, compress)
        for line in data:
            if "[" in line or "]" in line:
                result.append('    "' + line.replace('"', "'").replace("\\", "\\\\") + '",')
            else:
                result.append("    [[" + line + "]],")
        result.append("  },")
    result.append("}")
    result.append("""
return setmetatable(headers, {
  __index = function(t, key)
    if key == "random" then
      local keys = {}
      for k, _ in pairs(headers) do
        table.insert(keys, k)
      end
      return t[keys[math.random(#keys)]]
    else
      return t[key]
    end
  end,
})
""")
    return "\n".join(result)


if __name__ == "__main__":
    file = open("headers.txt", "w")
    file.write(create_nvim_headers(add=extra_headers, exclude = exclude))
    file.close()
