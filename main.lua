tfm.exec.addPhysicObject(-1, 106, 200, {type = 12, width = 213, height = 400, color = 0x000})

map = [[<C><P MEDATA=";;;;-0;0:::1-"/><Z><S><S T="14" X="-5" Y="200" L="10" H="400" P="0,0,0.3,0.2,0,0,0,0" c="3"/><S T="14" X="805" Y="200" L="10" H="400" P="0,0,0.3,0.2,0,0,0,0" c="3"/><S T="14" X="400" Y="-5" L="820" H="10" P="0,0,0.3,0.2,0,0,0,0" c="3"/><S T="16" X="400" Y="387" L="800" H="26" P="0,0,0.3,0.2,0,0,0,0"/></S><D/><O/><L/></Z></C>]]

keys = {
	left = 0,
	down = 3,
	right = 2,
	rotateRight = 88,
	rotateLeft = 90,

	place = 32
}

tfm.exec.freezePlayer("Aykv#0000")

for i, k in next, keys do
	system.bindKeyboard("Aykv#0000", k, true, true)
end

grid = {
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "},
	{" ", " ", " ", " ", " ", " ", " ", " ", " ", " "}
}

tetrominoes = {
	T = {
			{
				{" ", "T", " "},
				{"T", "T", "T"},
				{" ", " ", " "}
			},
			{
				{" ", "T", " "},
				{" ", "T", "T"},
				{" ", "T", " "}
			},
			{
				{" ", " ", " "},
				{"T", "T", "T"},
				{" ", "T", " "}
			},
			{
				{" ", "T", " "},
				{"T", "T", " "},
				{" ", "T", " "}
			}
		},

	O = {
			{
				{" ", "O", "O", " "},
				{" ", "O", "O", " "},
				{" ", " ", " ", " "}
			},
			{
				{" ", "O", "O", " "},
				{" ", "O", "O", " "},
				{" ", " ", " ", " "}
			},
			{
				{" ", "O", "O", " "},
				{" ", "O", "O", " "},
				{" ", " ", " ", " "}
			},
			{
				{" ", "O", "O", " "},
				{" ", "O", "O", " "},
				{" ", " ", " ", " "}
			},
		},

	I = {
			{
				{" ", "I", " ", " "},
				{" ", "I", " ", " "},
				{" ", "I", " ", " "},
				{" ", "I", " ", " "}
			},
			{
				{" ", " ", " ", " "},
				{"I", "I", "I", "I"},
				{" ", " ", " ", " "},
				{" ", " ", " ", " "}
			},
			{
				{" ", " ", "I", " "},
				{" ", " ", "I", " "},
				{" ", " ", "I", " "},
				{" ", " ", "I", " "}
			},
			{
				{" ", " ", " ", " "},
				{" ", " ", " ", " "},
				{"I", "I", "I", "I"},
				{" ", " ", " ", " "}
			},
		},

	S = {
			{
				{" ", "S", "S"},
				{"S", "S", " "},
				{" ", " ", " "}
			},
			{
				{" ", "S", " "},
				{" ", "S", "S"},
				{" ", " ", "S"}
			},
			{
				{" ", " ", " "},
				{" ", "S", "S"},
				{"S", "S", " "}
			},
			{
				{"S", " ", " "},
				{"S", "S", " "},
				{" ", "S", " "}
			}
		},

	Z = {
			{
				{"Z", "Z", " "},
				{" ", "Z", "Z"},
				{" ", " ", " "}
			},
			{
				{" ", " ", "Z"},
				{" ", "Z", "Z"},
				{" ", "Z", " "}
			},
			{
				{" ", " ", " "},
				{"Z", "Z", " "},
				{" ", "Z", "Z"}
			},
			{
				{" ", "Z", " "},
				{"Z", "Z", " "},
				{"Z", " ", " "}
			}
		},

	L = {
			{
				{" ", "L", " "},
				{" ", "L", " "},
				{" ", "L", "L"}
			},
			{
				{" ", " ", " "},
				{"L", "L", "L"},
				{"L", " ", " "}
			},
			{
				{"L", "L", " "},
				{" ", "L", " "},
				{" ", "L", " "}
			},
			{
				{" ", " ", "L"},
				{"L", "L", "L"},
				{" ", " ", " "}
			}
		},

	J = {
			{
				{" ", "J", " "},
				{" ", "J", " "},
				{"J", "J", " "}
			},
			{
				{"J", " ", " "},
				{"J", "J", "J"},
				{" ", " ", " "}
			},
			{
				{" ", "J", "J"},
				{" ", "J", " "},
				{" ", "J", " "}
			},
			{
				{" ", " ", " "},
				{"J", "J", "J"},
				{" ", " ", "J"}
			}
		}
}

colors = {
	T = 0x6A0088,
	t = 0x6A0088,

	O = 0xFFFF00,
	o = 0xFFFF00,

	I = 0x00FFFF,
	i = 0x00FFFF,

	S = 0x00FF00,
	s = 0x00FF00,

	Z = 0xFF0000,
	z = 0xFF0000,

	L = 0xF0A000,
	l = 0xF0A000,

	J = 0x0000F0,
	j = 0x0000F0,

	[" "] = 0xFFFFFF
}

function selectBlock()
	local blocks = {"T", "O", "I", "S", "Z", "L", "J"}
	local i = math.random(1, #blocks)

	return blocks[i]
end

function placeBlock()
	for line, row in next, tetrominoes[block][orientation] do
		for i, v in next, row do
			if v ~= " " then
				table.remove(grid[line + r], i + c)
				table.insert(grid[line + r], i + c, string.lower(block))
			end
		end
	end

	for line, row in next, grid do
		local occupiedSlots = 0

		for i, v in next, row do
			if v ~= " " then
				occupiedSlots = occupiedSlots + 1
			end
		end

		if occupiedSlots == 10 then
			table.remove(grid, line)
			table.insert(grid, 1, {" ", " ", " ", " ", " ", " ", " ", " ", " ", " "})
		end
	end
end

block = selectBlock()
orientation = 1
r = 0
c = 3

function render()
	for line, row in next, grid do
		for i, v in next, row do
			if v == block then
				row[i] = " "
			end
		end
	end

	for line, row in next, tetrominoes[block][orientation] do
		for i, v in next, row do
			if v ~= " " and grid[line + r][i + c] == " " then
				table.remove(grid[line + r], i + c)
				table.insert(grid[line + r], i + c, v)
			end
		end
	end

	local config = {
		x = 11,
		y = 11,
		type = 12,
		width = 20,
		height = 20,
		color = 0xFFFFFF
	}

	local id = 0

	for i, row in next, grid do
		for j, v in next, row do
			tfm.exec.removePhysicObject(id)

			config.color = colors[v]

			tfm.exec.addPhysicObject(
				id,
				config.x + (config.width * (j - 1)) + (1 * j),
				config.y + (config.height * (i - 1)) + (1 * i),
				config
			)

			id = id + 1
		end
	end

end

function eventKeyboard(p, key, down, posX, posY)
	if key == keys["left"] then
		c = c - 1
		
		render()
	elseif key == keys["right"] then
		c = c + 1

		render()
	elseif key == keys["down"] then
		r = r + 1

		render()
	end

	if key == keys["rotateRight"] then
		if orientation == 4 then
			orientation = 0
		end

		orientation = orientation + 1
		render()
	elseif key == keys["rotateLeft"] then
		if orientation == 1 then
			orientation = 5
		end

		orientation = orientation - 1
		render()
	end

	if key == keys["place"] then
		placeBlock()
		selectBlock()

		r = 0
		c = 3
		orientation = 1

		block = selectBlock()

		render()
	end
end

render()
