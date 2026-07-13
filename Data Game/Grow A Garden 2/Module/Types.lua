local v1 = game:GetService("RunService"):IsServer()
local u2 = nil
local u3 = nil
local u4 = nil
local u5 = nil
local Instances = nil
local u7 = nil
local t1 = {}
local t2 = {}
local t3 = {}
local t4 = {}
local t5 = {}

local function Allocate(n1: number) -- line: 48
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v67 = u5 + n1

	if v67 > u4 then
		while v67 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end
end
local function ReadS8() -- line: 59
	-- upvalues: u3 (ref), u5 (ref)
	local v69 = buffer.readi8(u3, u5)

	u5 += 1

	return v69
end
local function WriteS8(n2: number) -- line: 60
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writei8(u3, u5, n2)
	u5 += 1
end
local function ReadS16() -- line: 61
	-- upvalues: u3 (ref), u5 (ref)
	local v71 = buffer.readi16(u3, u5)

	u5 += 2

	return v71
end
local function WriteS16(n3: number) -- line: 62
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writei16(u3, u5, n3)
	u5 += 2
end
local function ReadS24() -- line: 63
	-- upvalues: u3 (ref), u5 (ref)
	local v73 = buffer.readbits(u3, u5 * 8, 24) - 8388608

	u5 += 3

	return v73
end
local function WriteS24(n4: number) -- line: 64
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writebits(u3, u5 * 8, 24, n4 + 8388608)
	u5 += 3
end
local function ReadS32() -- line: 65
	-- upvalues: u3 (ref), u5 (ref)
	local v75 = buffer.readi32(u3, u5)

	u5 += 4

	return v75
end
local function WriteS32(n5: number) -- line: 66
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writei32(u3, u5, n5)
	u5 += 4
end
local function ReadU8() -- line: 67
	-- upvalues: u3 (ref), u5 (ref)
	local v77 = buffer.readu8(u3, u5)

	u5 += 1

	return v77
end
local function WriteU8(n6: number) -- line: 68
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writeu8(u3, u5, n6)
	u5 += 1
end
local function ReadU16() -- line: 69
	-- upvalues: u3 (ref), u5 (ref)
	local v79 = buffer.readu16(u3, u5)

	u5 += 2

	return v79
end
local function WriteU16(n7: number) -- line: 70
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writeu16(u3, u5, n7)
	u5 += 2
end
local function ReadU24() -- line: 71
	-- upvalues: u3 (ref), u5 (ref)
	local v81 = buffer.readbits(u3, u5 * 8, 24)

	u5 += 3

	return v81
end
local function WriteU24(n8: number) -- line: 72
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writebits(u3, u5 * 8, 24, n8)
	u5 += 3
end
local function ReadU32() -- line: 73
	-- upvalues: u3 (ref), u5 (ref)
	local v83 = buffer.readu32(u3, u5)

	u5 += 4

	return v83
end
local function WriteU32(n9: number) -- line: 74
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writeu32(u3, u5, n9)
	u5 += 4
end
local function ReadF32() -- line: 75
	-- upvalues: u3 (ref), u5 (ref)
	local v85 = buffer.readf32(u3, u5)

	u5 += 4

	return v85
end
local function WriteF32(n10: number) -- line: 76
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writef32(u3, u5, n10)
	u5 += 4
end
local function ReadF64() -- line: 77
	-- upvalues: u3 (ref), u5 (ref)
	local v87 = buffer.readf64(u3, u5)

	u5 += 8

	return v87
end
local function WriteF64(n11: number) -- line: 78
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writef64(u3, u5, n11)
	u5 += 8
end
local function ReadString(n12: number) -- line: 79
	-- upvalues: u3 (ref), u5 (ref), v1 (copy)
	local v90 = buffer.readstring(u3, u5, n12)

	u5 += n12

	if v1 and utf8.len(v90) == nil then
		return ""
	end

	return v90
end
local function WriteString(s1: string) -- line: 87
	-- upvalues: u3 (ref), u5 (ref)
	buffer.writestring(u3, u5, s1)
	u5 += #s1
end
local function ReadBuffer(n13: number) -- line: 88
	-- upvalues: u3 (ref), u5 (ref)
	local buf = buffer.create(n13)

	buffer.copy(buf, 0, u3, u5, n13)
	u5 += n13

	return buf
end
local function WriteBuffer(p1: buffer) -- line: 89
	-- upvalues: u3 (ref), u5 (ref)
	buffer.copy(u3, u5, p1)
	u5 += buffer.len(p1)
end
local function ReadInstance() -- line: 90
	-- upvalues: u7 (ref), Instances (ref)
	u7 += 1

	return Instances[u7]
end
local function WriteInstance(p2) -- line: 91
	-- upvalues: u7 (ref), Instances (ref)
	u7 += 1
	Instances[u7] = p2
end
local function ReadF16() -- line: 93
	-- upvalues: u5 (ref), u3 (ref)
	local v96 = u5 * 8

	u5 += 2

	local v97 = buffer.readbits(u3, v96 + 0, 10)
	local v98 = buffer.readbits(u3, v96 + 10, 5)
	local v99 = buffer.readbits(u3, v96 + 15, 1)

	if v97 == 0 then
		if v98 == 0 then
			return 0
		end

		if v98 == 31 then
			if v99 == 0 then
				return 1e999
			end

			return -1e999
		end
	elseif v98 == 31 then
		return (0/0)
	end

	if v99 == 0 then
		return (v97 / 1024 + 1) * 2 ^ (v98 - 15)
	end

	return -(v97 / 1024 + 1) * 2 ^ (v98 - 15)
end
local function WriteF16(n14: number) -- line: 109
	-- upvalues: u5 (ref), u3 (ref)
	local v101 = u5 * 8

	u5 += 2

	if n14 == 0 then
		buffer.writebits(u3, v101, 16, 0)

		return
	end

	if n14 >= 65520 then
		buffer.writebits(u3, v101, 16, 31744)

		return
	end

	if n14 <= -65520 then
		buffer.writebits(u3, v101, 16, 64512)

		return
	end

	if n14 ~= n14 then
		buffer.writebits(u3, v101, 16, 31745)

		return
	end

	local n15 = 0

	if n14 < 0 then
		n15 = 1
		n14 = -n14
	end

	local v103, v104 = math.frexp(n14)

	buffer.writebits(u3, v101 + 0, 10, v103 * 2048 - 1023.5)
	buffer.writebits(u3, v101 + 10, 5, v104 + 14)
	buffer.writebits(u3, v101 + 15, 1, n15)
end
local function ReadF24() -- line: 130
	-- upvalues: u5 (ref), u3 (ref)
	local v105 = u5 * 8

	u5 += 3

	local v106 = buffer.readbits(u3, v105 + 0, 17)
	local v107 = buffer.readbits(u3, v105 + 17, 6)
	local v108 = buffer.readbits(u3, v105 + 23, 1)

	if v106 == 0 then
		if v107 == 0 then
			return 0
		end

		if v107 == 63 then
			if v108 == 0 then
				return 1e999
			end

			return -1e999
		end
	elseif v107 == 63 then
		return (0/0)
	end

	if v108 == 0 then
		return (v106 / 131072 + 1) * 2 ^ (v107 - 31)
	end

	return -(v106 / 131072 + 1) * 2 ^ (v107 - 31)
end
local function WriteF24(n16: number) -- line: 146
	-- upvalues: u5 (ref), u3 (ref)
	local v110 = u5 * 8

	u5 += 3

	if n16 == 0 then
		buffer.writebits(u3, v110, 24, 0)

		return
	end

	if n16 >= 4294959104 then
		buffer.writebits(u3, v110, 24, 8257536)

		return
	end

	if n16 <= -4294959104 then
		buffer.writebits(u3, v110, 24, 16646144)

		return
	end

	if n16 ~= n16 then
		buffer.writebits(u3, v110, 24, 8257537)

		return
	end

	local n17 = 0

	if n16 < 0 then
		n17 = 1
		n16 = -n16
	end

	local v112, v113 = math.frexp(n16)

	buffer.writebits(u3, v110 + 0, 17, v112 * 262144 - 131071.5)
	buffer.writebits(u3, v110 + 17, 6, v113 + 30)
	buffer.writebits(u3, v110 + 23, 1, n17)
end

t1.Any = "Any"

function t2.Any() -- line: 170
	-- upvalues: t4 (copy), u3 (ref), u5 (ref)
	local v114 = t4
	local v115 = buffer.readu8(u3, u5)

	u5 += 1

	return v114[v115]()
end
function t3.Any(p3) -- line: 171
	-- upvalues: t5 (copy)
	t5[typeof(p3)](p3)
end

t1.Nil = "Nil"

function t2.Nil() -- line: 174
	return nil
end
function t3.Nil(_: nil) -- line: 175
end

t1.NumberS8 = "NumberS8"

function t2.NumberS8() -- line: 178
	-- upvalues: u3 (ref), u5 (ref)
	local v118 = buffer.readi8(u3, u5)

	u5 += 1

	return v118
end
function t3.NumberS8(n18: number) -- line: 179
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v120 = u5 + 1

	if v120 > u4 then
		while v120 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writei8(u3, u5, n18)
	u5 += 1
end

t1.NumberS16 = "NumberS16"

function t2.NumberS16() -- line: 182
	-- upvalues: u3 (ref), u5 (ref)
	local v122 = buffer.readi16(u3, u5)

	u5 += 2

	return v122
end
function t3.NumberS16(n19: number) -- line: 183
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v124 = u5 + 2

	if v124 > u4 then
		while v124 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writei16(u3, u5, n19)
	u5 += 2
end

t1.NumberS24 = "NumberS24"

function t2.NumberS24() -- line: 186
	-- upvalues: u3 (ref), u5 (ref)
	local v126 = buffer.readbits(u3, u5 * 8, 24) - 8388608

	u5 += 3

	return v126
end
function t3.NumberS24(n20: number) -- line: 187
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v128 = u5 + 3

	if v128 > u4 then
		while v128 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writebits(u3, u5 * 8, 24, n20 + 8388608)
	u5 += 3
end

t1.NumberS32 = "NumberS32"

function t2.NumberS32() -- line: 190
	-- upvalues: u3 (ref), u5 (ref)
	local v130 = buffer.readi32(u3, u5)

	u5 += 4

	return v130
end
function t3.NumberS32(n21: number) -- line: 191
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v132 = u5 + 4

	if v132 > u4 then
		while v132 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writei32(u3, u5, n21)
	u5 += 4
end

t1.NumberU8 = "NumberU8"

function t2.NumberU8() -- line: 194
	-- upvalues: u3 (ref), u5 (ref)
	local v134 = buffer.readu8(u3, u5)

	u5 += 1

	return v134
end
function t3.NumberU8(n22: number) -- line: 195
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v136 = u5 + 1

	if v136 > u4 then
		while v136 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, n22)
	u5 += 1
end

t1.NumberU16 = "NumberU16"

function t2.NumberU16() -- line: 198
	-- upvalues: u3 (ref), u5 (ref)
	local v138 = buffer.readu16(u3, u5)

	u5 += 2

	return v138
end
function t3.NumberU16(n23: number) -- line: 199
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v140 = u5 + 2

	if v140 > u4 then
		while v140 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu16(u3, u5, n23)
	u5 += 2
end

t1.NumberU24 = "NumberU24"

function t2.NumberU24() -- line: 202
	-- upvalues: u3 (ref), u5 (ref)
	local v142 = buffer.readbits(u3, u5 * 8, 24)

	u5 += 3

	return v142
end
function t3.NumberU24(n24: number) -- line: 203
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v144 = u5 + 3

	if v144 > u4 then
		while v144 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writebits(u3, u5 * 8, 24, n24)
	u5 += 3
end

t1.NumberU32 = "NumberU32"

function t2.NumberU32() -- line: 206
	-- upvalues: u3 (ref), u5 (ref)
	local v146 = buffer.readu32(u3, u5)

	u5 += 4

	return v146
end
function t3.NumberU32(n25: number) -- line: 207
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v148 = u5 + 4

	if v148 > u4 then
		while v148 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu32(u3, u5, n25)
	u5 += 4
end

t1.NumberF16 = "NumberF16"

function t2.NumberF16() -- line: 210
	-- upvalues: ReadF16 (copy)
	return (ReadF16())
end
function t3.NumberF16(n26: number) -- line: 211
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), WriteF16 (copy)
	local v151 = u5 + 2

	if v151 > u4 then
		while v151 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	WriteF16(n26)
end

t1.NumberF24 = "NumberF24"

function t2.NumberF24() -- line: 214
	-- upvalues: ReadF24 (copy)
	return (ReadF24())
end
function t3.NumberF24(n27: number) -- line: 215
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), WriteF24 (copy)
	local v154 = u5 + 3

	if v154 > u4 then
		while v154 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	WriteF24(n27)
end

t1.NumberF32 = "NumberF32"

function t2.NumberF32() -- line: 218
	-- upvalues: u3 (ref), u5 (ref)
	local v156 = buffer.readf32(u3, u5)

	u5 += 4

	return v156
end
function t3.NumberF32(n28: number) -- line: 219
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v158 = u5 + 4

	if v158 > u4 then
		while v158 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writef32(u3, u5, n28)
	u5 += 4
end

t1.NumberF64 = "NumberF64"

function t2.NumberF64() -- line: 222
	-- upvalues: u3 (ref), u5 (ref)
	local v160 = buffer.readf64(u3, u5)

	u5 += 8

	return v160
end
function t3.NumberF64(n29: number) -- line: 223
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v162 = u5 + 8

	if v162 > u4 then
		while v162 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writef64(u3, u5, n29)
	u5 += 8
end

t1.String = "String"

function t2.String() -- line: 226
	-- upvalues: u3 (ref), u5 (ref), v1 (copy)
	local v164 = buffer.readu8(u3, u5)

	u5 += 1

	local v165 = buffer.readstring(u3, u5, v164)

	u5 += v164

	if v1 and utf8.len(v165) == nil then
		return ""
	end

	return v165
end
function t3.String(s2: string) -- line: 227
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v167 = #s2
	local v168 = v167 + 1
	local v169 = u5 + v168

	if v169 > u4 then
		while v169 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, v167)
	u5 += 1
	buffer.writestring(u3, u5, s2)
	u5 += #s2
end

t1.StringLong = "StringLong"

function t2.StringLong() -- line: 230
	-- upvalues: u3 (ref), u5 (ref), v1 (copy)
	local v171 = buffer.readu16(u3, u5)

	u5 += 2

	local v172 = buffer.readstring(u3, u5, v171)

	u5 += v171

	if v1 and utf8.len(v172) == nil then
		return ""
	end

	return v172
end
function t3.StringLong(s3: string) -- line: 231
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v174 = #s3
	local v175 = v174 + 2
	local v176 = u5 + v175

	if v176 > u4 then
		while v176 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu16(u3, u5, v174)
	u5 += 2
	buffer.writestring(u3, u5, s3)
	u5 += #s3
end

t1.Buffer = "Buffer"

function t2.Buffer() -- line: 234
	-- upvalues: u3 (ref), u5 (ref)
	local v178 = buffer.readu8(u3, u5)

	u5 += 1

	local buf = buffer.create(v178)

	buffer.copy(buf, 0, u3, u5, v178)
	u5 += v178

	return buf
end
function t3.Buffer(p5: buffer) -- line: 235
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v181 = buffer.len(p5)
	local v182 = 1 + v181
	local v183 = u5 + v182

	if v183 > u4 then
		while v183 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, v181)
	u5 += 1
	buffer.copy(u3, u5, p5)
	u5 += buffer.len(p5)
end

t1.BufferLong = "BufferLong"

function t2.BufferLong() -- line: 238
	-- upvalues: u3 (ref), u5 (ref)
	local v185 = buffer.readu16(u3, u5)

	u5 += 2

	local buf = buffer.create(v185)

	buffer.copy(buf, 0, u3, u5, v185)
	u5 += v185

	return buf
end
function t3.BufferLong(p6: buffer) -- line: 239
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v188 = buffer.len(p6)
	local v189 = 2 + v188
	local v190 = u5 + v189

	if v190 > u4 then
		while v190 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu16(u3, u5, v188)
	u5 += 2
	buffer.copy(u3, u5, p6)
	u5 += buffer.len(p6)
end

t1.Instance = "Instance"

function t2.Instance() -- line: 243
	-- upvalues: u7 (ref), Instances (ref)
	u7 += 1

	return Instances[u7]
end
function t3.Instance(p7) -- line: 244
	-- upvalues: u7 (ref), Instances (ref)
	u7 += 1
	Instances[u7] = p7
end

t1.Boolean8 = "Boolean8"

function t2.Boolean8() -- line: 247
	-- upvalues: u3 (ref), u5 (ref)
	local v193 = buffer.readu8(u3, u5)

	u5 += 1

	return v193 == 1
end
function t3.Boolean8(b1: boolean) -- line: 248
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v195 = u5 + 1

	if v195 > u4 then
		while v195 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v197 = not b1 and 0 or 1

	buffer.writeu8(u3, u5, v197)
	u5 += 1
end

t1.NumberRange = "NumberRange"

function t2.NumberRange() -- line: 251
	-- upvalues: u3 (ref), u5 (ref)
	local new = NumberRange.new
	local v199 = buffer.readf32(u3, u5)

	u5 += 4

	local v200 = buffer.readf32(u3, u5)

	u5 += 4

	return new(v199, v200)
end
function t3.NumberRange(numberRange: NumberRange) -- line: 252
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v202 = u5 + 8

	if v202 > u4 then
		while v202 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local Min = numberRange.Min

	buffer.writef32(u3, u5, Min)
	u5 += 4

	local Max = numberRange.Max

	buffer.writef32(u3, u5, Max)
	u5 += 4
end

t1.BrickColor = "BrickColor"

function t2.BrickColor() -- line: 255
	-- upvalues: u3 (ref), u5 (ref)
	local new = BrickColor.new
	local v207 = buffer.readu16(u3, u5)

	u5 += 2

	return new(v207)
end
function t3.BrickColor(p8) -- line: 256
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v209 = u5 + 2

	if v209 > u4 then
		while v209 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local Number = p8.Number

	buffer.writeu16(u3, u5, Number)
	u5 += 2
end

t1.Color3 = "Color3"

function t2.Color3() -- line: 259
	-- upvalues: u3 (ref), u5 (ref)
	local fromRGB = Color3.fromRGB
	local v213 = buffer.readu8(u3, u5)

	u5 += 1

	local v214 = buffer.readu8(u3, u5)

	u5 += 1

	local v215 = buffer.readu8(u3, u5)

	u5 += 1

	return fromRGB(v213, v214, v215)
end
function t3.Color3(color3: Color3) -- line: 260
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v217 = u5 + 3

	if v217 > u4 then
		while v217 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v219 = color3.R * 255 + 0.5

	buffer.writeu8(u3, u5, v219)
	u5 += 1

	local v220 = color3.G * 255 + 0.5

	buffer.writeu8(u3, u5, v220)
	u5 += 1

	local v221 = color3.B * 255 + 0.5

	buffer.writeu8(u3, u5, v221)
	u5 += 1
end

t1.UDim = "UDim"

function t2.UDim() -- line: 263
	-- upvalues: u3 (ref), u5 (ref)
	local new = UDim.new
	local v223 = buffer.readi16(u3, u5)

	u5 += 2

	local v224 = v223 / 1000
	local v225 = buffer.readi16(u3, u5)

	u5 += 2

	return new(v224, v225)
end
function t3.UDim(uDim: UDim) -- line: 264
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v227 = u5 + 4

	if v227 > u4 then
		while v227 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v229 = uDim.Scale * 1000

	buffer.writei16(u3, u5, v229)
	u5 += 2

	local uDimOffset = uDim.Offset

	buffer.writei16(u3, u5, uDimOffset)
	u5 += 2
end

t1.UDim2 = "UDim2"

function t2.UDim2() -- line: 267
	-- upvalues: u3 (ref), u5 (ref)
	local new = UDim2.new
	local v232 = buffer.readi16(u3, u5)

	u5 += 2

	local v233 = v232 / 1000
	local v234 = buffer.readi16(u3, u5)

	u5 += 2

	local v235 = buffer.readi16(u3, u5)

	u5 += 2

	local v236 = v235 / 1000
	local v237 = buffer.readi16(u3, u5)

	u5 += 2

	return new(v233, v234, v236, v237)
end
function t3.UDim2(uDim2: UDim2) -- line: 268
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v239 = u5 + 8

	if v239 > u4 then
		while v239 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v241 = uDim2.X.Scale * 1000

	buffer.writei16(u3, u5, v241)
	u5 += 2

	local XOffset = uDim2.X.Offset

	buffer.writei16(u3, u5, XOffset)
	u5 += 2

	local v243 = uDim2.Y.Scale * 1000

	buffer.writei16(u3, u5, v243)
	u5 += 2

	local YOffset = uDim2.Y.Offset

	buffer.writei16(u3, u5, YOffset)
	u5 += 2
end

t1.Rect = "Rect"

function t2.Rect() -- line: 271
	-- upvalues: u3 (ref), u5 (ref)
	local new = Rect.new
	local v246 = buffer.readf32(u3, u5)

	u5 += 4

	local v247 = buffer.readf32(u3, u5)

	u5 += 4

	local v248 = buffer.readf32(u3, u5)

	u5 += 4

	local v249 = buffer.readf32(u3, u5)

	u5 += 4

	return new(v246, v247, v248, v249)
end
function t3.Rect(rect: Rect) -- line: 272
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v251 = u5 + 16

	if v251 > u4 then
		while v251 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local MinX = rect.Min.X

	buffer.writef32(u3, u5, MinX)
	u5 += 4

	local MinY = rect.Min.Y

	buffer.writef32(u3, u5, MinY)
	u5 += 4

	local MaxX = rect.Max.X

	buffer.writef32(u3, u5, MaxX)
	u5 += 4

	local MaxY = rect.Max.Y

	buffer.writef32(u3, u5, MaxY)
	u5 += 4
end

t1.Vector2S16 = "Vector2S16"

function t2.Vector2S16() -- line: 275
	-- upvalues: u3 (ref), u5 (ref)
	local new = Vector2.new
	local v258 = buffer.readi16(u3, u5)

	u5 += 2

	local v259 = buffer.readi16(u3, u5)

	u5 += 2

	return new(v258, v259)
end
function t3.Vector2S16(vector2: Vector2) -- line: 276
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v261 = u5 + 4

	if v261 > u4 then
		while v261 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local vector2X = vector2.X

	buffer.writei16(u3, u5, vector2X)
	u5 += 2

	local vector2Y = vector2.Y

	buffer.writei16(u3, u5, vector2Y)
	u5 += 2
end

t1.Vector2F24 = "Vector2F24"

function t2.Vector2F24() -- line: 279
	-- upvalues: ReadF24 (copy)
	return Vector2.new(ReadF24(), (ReadF24()))
end
function t3.Vector2F24(vector2: Vector2) -- line: 280
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), WriteF24 (copy)
	local v266 = u5 + 6

	if v266 > u4 then
		while v266 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	WriteF24(vector2.X)
	WriteF24(vector2.Y)
end

t1.Vector2F32 = "Vector2F32"

function t2.Vector2F32() -- line: 283
	-- upvalues: u3 (ref), u5 (ref)
	local new = Vector2.new
	local v269 = buffer.readf32(u3, u5)

	u5 += 4

	local v270 = buffer.readf32(u3, u5)

	u5 += 4

	return new(v269, v270)
end
function t3.Vector2F32(vector2: Vector2) -- line: 284
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v272 = u5 + 8

	if v272 > u4 then
		while v272 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local vector2X = vector2.X

	buffer.writef32(u3, u5, vector2X)
	u5 += 4

	local vector2Y = vector2.Y

	buffer.writef32(u3, u5, vector2Y)
	u5 += 4
end

t1.Vector3S16 = "Vector3S16"

function t2.Vector3S16() -- line: 287
	-- upvalues: u3 (ref), u5 (ref)
	local v276 = buffer.readi16(u3, u5)

	u5 += 2

	local v277 = buffer.readi16(u3, u5)

	u5 += 2

	local v278 = buffer.readi16(u3, u5)

	u5 += 2

	return (Vector3.new(v276, v277, v278))
end
function t3.Vector3S16(vector3: Vector3) -- line: 288
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v280 = u5 + 6

	if v280 > u4 then
		while v280 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local vector3X = vector3.X

	buffer.writei16(u3, u5, vector3X)
	u5 += 2

	local vector3Y = vector3.Y

	buffer.writei16(u3, u5, vector3Y)
	u5 += 2

	local vector3Z = vector3.Z

	buffer.writei16(u3, u5, vector3Z)
	u5 += 2
end

t1.Vector3F24 = "Vector3F24"

function t2.Vector3F24() -- line: 291
	-- upvalues: ReadF24 (copy)
	return (Vector3.new(ReadF24(), ReadF24(), (ReadF24())))
end
function t3.Vector3F24(vector3: Vector3) -- line: 292
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), WriteF24 (copy)
	local v286 = u5 + 9

	if v286 > u4 then
		while v286 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	WriteF24(vector3.X)
	WriteF24(vector3.Y)
	WriteF24(vector3.Z)
end

t1.InstanceVector3F24Array = "InstanceVector3F24Array"

function t2.InstanceVector3F24Array() -- line: 295
	-- upvalues: u3 (ref), u5 (ref), u7 (ref), Instances (ref), ReadF24 (copy)
	local v288 = buffer.readu16(u3, u5)

	u5 += 2

	local t6 = table.create(v288)

	for i = 1, v288 do
		local t7 = {}

		u7 += 1

		local v292 = Instances[u7]
		local vector3 = Vector3.new(ReadF24(), ReadF24(), (ReadF24()))

		t7[1] = v292
		t7[2] = vector3
		t6[i] = t7
	end

	return t6
end
function t3.InstanceVector3F24Array(p9) -- line: 303
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), u7 (ref), Instances (ref), WriteF24 (copy)
	local v295 = #p9

	if v295 > 65535 then
		v295 = 65535
	end

	local v296 = u5 + 2

	if v296 > u4 then
		while v296 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu16(u3, u5, v295)
	u5 += 2

	for i = 1, v295 do
		local v299 = p9[i]
		local v300 = v299[1]

		u7 += 1
		Instances[u7] = v300

		local v301 = v299[2]
		local v302 = u5 + 9

		if v302 > u4 then
			while v302 > u4 do
				u4 *= 2
			end

			local buf = buffer.create(u4)

			buffer.copy(buf, 0, u3, 0, u5)
			u2.Buffer = buf
			u3 = buf
		end

		WriteF24(v301.X)
		WriteF24(v301.Y)
		WriteF24(v301.Z)
	end
end

t1.Vector3F32 = "Vector3F32"

function t2.Vector3F32() -- line: 320
	-- upvalues: u3 (ref), u5 (ref)
	local v304 = buffer.readf32(u3, u5)

	u5 += 4

	local v305 = buffer.readf32(u3, u5)

	u5 += 4

	local v306 = buffer.readf32(u3, u5)

	u5 += 4

	return (Vector3.new(v304, v305, v306))
end
function t3.Vector3F32(vector3: Vector3) -- line: 321
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v308 = u5 + 12

	if v308 > u4 then
		while v308 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local vector3X = vector3.X

	buffer.writef32(u3, u5, vector3X)
	u5 += 4

	local vector3Y = vector3.Y

	buffer.writef32(u3, u5, vector3Y)
	u5 += 4

	local vector3Z = vector3.Z

	buffer.writef32(u3, u5, vector3Z)
	u5 += 4
end

t1.NumberU4 = "NumberU4"

function t2.NumberU4() -- line: 324
	-- upvalues: u5 (ref), u3 (ref)
	local v313 = u5 * 8

	u5 += 1

	return {
		buffer.readbits(u3, v313 + 0, 4),
		buffer.readbits(u3, v313 + 4, 4)
	}
end
function t3.NumberU4(t8: {[any]: any}) -- line: 332
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v315 = u5 + 1

	if v315 > u4 then
		while v315 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v317 = u5 * 8

	u5 += 1
	buffer.writebits(u3, v317 + 0, 4, t8[1])
	buffer.writebits(u3, v317 + 4, 4, t8[2])
end

t1.BooleanNumber = "BooleanNumber"

function t2.BooleanNumber() -- line: 341
	-- upvalues: u5 (ref), u3 (ref)
	local v318 = u5 * 8

	u5 += 1

	return {
		Boolean = buffer.readbits(u3, v318 + 0, 1) == 1,
		Number = buffer.readbits(u3, v318 + 1, 7)
	}
end
function t3.BooleanNumber(t9: {[any]: any}) -- line: 349
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v320 = u5 + 1

	if v320 > u4 then
		while v320 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v322 = u5 * 8

	u5 += 1
	buffer.writebits(u3, v322 + 0, 1, not t9.Boolean and 0 or 1)
	buffer.writebits(u3, v322 + 1, 7, t9.Number)
end

t1.Boolean1 = "Boolean1"

function t2.Boolean1() -- line: 358
	-- upvalues: u5 (ref), u3 (ref)
	local v323 = u5 * 8

	u5 += 1

	return {
		buffer.readbits(u3, v323 + 0, 1) == 1,
		buffer.readbits(u3, v323 + 1, 1) == 1,
		buffer.readbits(u3, v323 + 2, 1) == 1,
		buffer.readbits(u3, v323 + 3, 1) == 1,
		buffer.readbits(u3, v323 + 4, 1) == 1,
		buffer.readbits(u3, v323 + 5, 1) == 1,
		buffer.readbits(u3, v323 + 6, 1) == 1,
		buffer.readbits(u3, v323 + 7, 1) == 1
	}
end
function t3.Boolean1(t10: {[any]: any}) -- line: 372
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v325 = u5 + 1

	if v325 > u4 then
		while v325 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v327 = u5 * 8

	u5 += 1
	buffer.writebits(u3, v327 + 0, 1, not t10[1] and 0 or 1)
	buffer.writebits(u3, v327 + 1, 1, not t10[2] and 0 or 1)
	buffer.writebits(u3, v327 + 2, 1, not t10[3] and 0 or 1)
	buffer.writebits(u3, v327 + 3, 1, not t10[4] and 0 or 1)
	buffer.writebits(u3, v327 + 4, 1, not t10[5] and 0 or 1)
	buffer.writebits(u3, v327 + 5, 1, not t10[6] and 0 or 1)
	buffer.writebits(u3, v327 + 6, 1, not t10[7] and 0 or 1)
	buffer.writebits(u3, v327 + 7, 1, not t10[8] and 0 or 1)
end

t1.CFrameF24U8 = "CFrameF24U8"

function t2.CFrameF24U8() -- line: 387
	-- upvalues: u3 (ref), u5 (ref), ReadF24 (copy)
	local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
	local v329 = buffer.readu8(u3, u5)

	u5 += 1

	local v330 = v329 / 40.58451048843331
	local v331 = buffer.readu8(u3, u5)

	u5 += 1

	local v332 = v331 / 40.58451048843331
	local v333 = buffer.readu8(u3, u5)

	u5 += 1

	return fromEulerAnglesXYZ(v330, v332, v333 / 40.58451048843331) + Vector3.new(ReadF24(), ReadF24(), (ReadF24()))
end
function t3.CFrameF24U8(cFrame: CFrame) -- line: 391
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), WriteF24 (copy)
	local v335, v336, v337 = cFrame:ToEulerAnglesXYZ()
	local v338 = u5 + 12

	if v338 > u4 then
		while v338 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v340 = v335 * 40.58451048843331 + 0.5

	buffer.writeu8(u3, u5, v340)
	u5 += 1

	local v341 = v336 * 40.58451048843331 + 0.5

	buffer.writeu8(u3, u5, v341)
	u5 += 1

	local v342 = v337 * 40.58451048843331 + 0.5

	buffer.writeu8(u3, u5, v342)
	u5 += 1
	WriteF24(cFrame.X)
	WriteF24(cFrame.Y)
	WriteF24(cFrame.Z)
end

t1.CFrameF32U8 = "CFrameF32U8"

function t2.CFrameF32U8() -- line: 399
	-- upvalues: u3 (ref), u5 (ref)
	local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
	local v344 = buffer.readu8(u3, u5)

	u5 += 1

	local v345 = v344 / 40.58451048843331
	local v346 = buffer.readu8(u3, u5)

	u5 += 1

	local v347 = v346 / 40.58451048843331
	local v348 = buffer.readu8(u3, u5)

	u5 += 1

	local v349 = fromEulerAnglesXYZ(v345, v347, v348 / 40.58451048843331)
	local v350 = buffer.readf32(u3, u5)

	u5 += 4

	local v351 = buffer.readf32(u3, u5)

	u5 += 4

	local v352 = buffer.readf32(u3, u5)

	u5 += 4

	return v349 + Vector3.new(v350, v351, v352)
end
function t3.CFrameF32U8(cFrame: CFrame) -- line: 403
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v354, v355, v356 = cFrame:ToEulerAnglesXYZ()
	local v357 = u5 + 15

	if v357 > u4 then
		while v357 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v359 = v354 * 40.58451048843331 + 0.5

	buffer.writeu8(u3, u5, v359)
	u5 += 1

	local v360 = v355 * 40.58451048843331 + 0.5

	buffer.writeu8(u3, u5, v360)
	u5 += 1

	local v361 = v356 * 40.58451048843331 + 0.5

	buffer.writeu8(u3, u5, v361)
	u5 += 1

	local cFrameX = cFrame.X

	buffer.writef32(u3, u5, cFrameX)
	u5 += 4

	local cFrameY = cFrame.Y

	buffer.writef32(u3, u5, cFrameY)
	u5 += 4

	local cFrameZ = cFrame.Z

	buffer.writef32(u3, u5, cFrameZ)
	u5 += 4
end

t1.CFrameF32U16 = "CFrameF32U16"

function t2.CFrameF32U16() -- line: 411
	-- upvalues: u3 (ref), u5 (ref)
	local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
	local v366 = buffer.readu16(u3, u5)

	u5 += 2

	local v367 = v366 / 10430.219195527361
	local v368 = buffer.readu16(u3, u5)

	u5 += 2

	local v369 = v368 / 10430.219195527361
	local v370 = buffer.readu16(u3, u5)

	u5 += 2

	local v371 = fromEulerAnglesXYZ(v367, v369, v370 / 10430.219195527361)
	local v372 = buffer.readf32(u3, u5)

	u5 += 4

	local v373 = buffer.readf32(u3, u5)

	u5 += 4

	local v374 = buffer.readf32(u3, u5)

	u5 += 4

	return v371 + Vector3.new(v372, v373, v374)
end
function t3.CFrameF32U16(cFrame: CFrame) -- line: 415
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v376, v377, v378 = cFrame:ToEulerAnglesXYZ()
	local v379 = u5 + 18

	if v379 > u4 then
		while v379 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v381 = v376 * 10430.219195527361 + 0.5

	buffer.writeu16(u3, u5, v381)
	u5 += 2

	local v382 = v377 * 10430.219195527361 + 0.5

	buffer.writeu16(u3, u5, v382)
	u5 += 2

	local v383 = v378 * 10430.219195527361 + 0.5

	buffer.writeu16(u3, u5, v383)
	u5 += 2

	local cFrameX = cFrame.X

	buffer.writef32(u3, u5, cFrameX)
	u5 += 4

	local cFrameY = cFrame.Y

	buffer.writef32(u3, u5, cFrameY)
	u5 += 4

	local cFrameZ = cFrame.Z

	buffer.writef32(u3, u5, cFrameZ)
	u5 += 4
end

t1.Region3 = "Region3"

function t2.Region3() -- line: 423
	-- upvalues: u3 (ref), u5 (ref)
	local new = Region3.new
	local v388 = buffer.readf32(u3, u5)

	u5 += 4

	local v389 = buffer.readf32(u3, u5)

	u5 += 4

	local v390 = buffer.readf32(u3, u5)

	u5 += 4

	local vector3 = Vector3.new(v388, v389, v390)
	local v392 = buffer.readf32(u3, u5)

	u5 += 4

	local v393 = buffer.readf32(u3, u5)

	u5 += 4

	local v394 = buffer.readf32(u3, u5)

	u5 += 4

	return new(vector3, (Vector3.new(v392, v393, v394)))
end
function t3.Region3(p10) -- line: 429
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v396 = p10.Size / 2
	local v397 = p10.CFrame.Position - v396
	local v398 = p10.CFrame.Position + v396
	local v399 = u5 + 24

	if v399 > u4 then
		while v399 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local X = v397.X

	buffer.writef32(u3, u5, X)
	u5 += 4

	local Y = v397.Y

	buffer.writef32(u3, u5, Y)
	u5 += 4

	local Z = v397.Z

	buffer.writef32(u3, u5, Z)
	u5 += 4

	local X2 = v398.X

	buffer.writef32(u3, u5, X2)
	u5 += 4

	local Y2 = v398.Y

	buffer.writef32(u3, u5, Y2)
	u5 += 4

	local Z2 = v398.Z

	buffer.writef32(u3, u5, Z2)
	u5 += 4
end

t1.NumberSequence = "NumberSequence"

function t2.NumberSequence() -- line: 439
	-- upvalues: u3 (ref), u5 (ref)
	local v407 = buffer.readu8(u3, u5)

	u5 += 1

	local t11 = table.create(v407)

	for _ = 1, v407 do
		local new = NumberSequenceKeypoint.new
		local v411 = buffer.readu8(u3, u5)

		u5 += 1

		local v412 = v411 / 255
		local v413 = buffer.readu8(u3, u5)

		u5 += 1

		local v414 = v413 / 255
		local v415 = buffer.readu8(u3, u5)

		u5 += 1
		table.insert(t11, new(v412, v414, v415 / 255))
	end

	return NumberSequence.new(t11)
end
function t3.NumberSequence(p11) -- line: 447
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v417 = #p11.Keypoints
	local v418 = v417 * 3 + 1
	local v419 = u5 + v418

	if v419 > u4 then
		while v419 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, v417)
	u5 += 1

	for _, v422 in p11.Keypoints do
		local v423 = v422.Time * 255 + 0.5

		buffer.writeu8(u3, u5, v423)
		u5 += 1

		local v424 = v422.Value * 255 + 0.5

		buffer.writeu8(u3, u5, v424)
		u5 += 1

		local v425 = v422.Envelope * 255 + 0.5

		buffer.writeu8(u3, u5, v425)
		u5 += 1
	end
end

t1.ColorSequence = "ColorSequence"

function t2.ColorSequence() -- line: 457
	-- upvalues: u3 (ref), u5 (ref)
	local v426 = buffer.readu8(u3, u5)

	u5 += 1

	local t12 = table.create(v426)

	for _ = 1, v426 do
		local new = ColorSequenceKeypoint.new
		local v430 = buffer.readu8(u3, u5)

		u5 += 1

		local v431 = v430 / 255
		local fromRGB = Color3.fromRGB
		local v433 = buffer.readu8(u3, u5)

		u5 += 1

		local v434 = buffer.readu8(u3, u5)

		u5 += 1

		local v435 = buffer.readu8(u3, u5)

		u5 += 1
		table.insert(t12, new(v431, fromRGB(v433, v434, v435)))
	end

	return ColorSequence.new(t12)
end
function t3.ColorSequence(p12) -- line: 465
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v437 = #p12.Keypoints
	local v438 = v437 * 4 + 1
	local v439 = u5 + v438

	if v439 > u4 then
		while v439 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, v437)
	u5 += 1

	for _, v442 in p12.Keypoints do
		local v443 = v442.Time * 255 + 0.5

		buffer.writeu8(u3, u5, v443)
		u5 += 1

		local v444 = v442.Value.R * 255 + 0.5

		buffer.writeu8(u3, u5, v444)
		u5 += 1

		local v445 = v442.Value.G * 255 + 0.5

		buffer.writeu8(u3, u5, v445)
		u5 += 1

		local v446 = v442.Value.B * 255 + 0.5

		buffer.writeu8(u3, u5, v446)
		u5 += 1
	end
end

local t13 = {}
local Characters = {
	[0] = " ",
	".",
	"0",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z",
	"a",
	"b",
	"c",
	"d",
	"e",
	"f",
	"g",
	"h",
	"i",
	"j",
	"k",
	"l",
	"m",
	"n",
	"o",
	"p",
	"q",
	"r",
	"s",
	"t",
	"u",
	"v",
	"w",
	"x",
	"y",
	"z"
}

for v46, v47 in Characters do
	t13[v47] = v46
end

local v48 = math.ceil((math.log(#Characters + 1, 2)))
local v49 = v48 / 8

t1.Characters = "Characters"

function t2.Characters() -- line: 481
	-- upvalues: u3 (ref), u5 (ref), v49 (copy), Characters (copy), v48 (copy)
	local v447 = buffer.readu8(u3, u5)

	u5 += 1

	local t14 = table.create(v447)
	local v449 = u5 * 8

	u5 += math.ceil(v447 * v49)

	for _ = 1, v447 do
		table.insert(t14, Characters[buffer.readbits(u3, v449, v48)])
		v449 += v48
	end

	return table.concat(t14)
end
function t3.Characters(s4: string) -- line: 492
	-- upvalues: v49 (copy), u5 (ref), u4 (ref), u3 (ref), u2 (ref), v48 (copy), t13 (copy)
	local v452 = #s4
	local v453 = math.ceil(v452 * v49)
	local v454 = v453 + 1
	local v455 = u5 + v454

	if v455 > u4 then
		while v455 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, v452)
	u5 += 1

	local v457 = u5 * 8

	for i = 1, v452 do
		buffer.writebits(u3, v457, v48, t13[s4:sub(i, i)])
		v457 += v48
	end

	u5 += v453
end

local t15 = {}
local Enums = {
	Enum.AccessoryType,
	Enum.Axis,
	Enum.BodyPart,
	Enum.BodyPartR15,
	Enum.EasingDirection,
	Enum.EasingStyle,
	Enum.KeyCode,
	Enum.Material,
	Enum.NormalId
}

for v52, v53 in Enums do
	t15[v53] = v52
end

t1.EnumItem = "EnumItem"

function t2.EnumItem() -- line: 509
	-- upvalues: Enums (copy), u3 (ref), u5 (ref)
	local v459 = Enums
	local v460 = buffer.readu8(u3, u5)

	u5 += 1

	local v461 = v459[v460]
	local v462 = buffer.readu16(u3, u5)

	u5 += 2

	return v461:FromValue(v462)
end
function t3.EnumItem(p13) -- line: 510
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), t15 (copy)
	local v464 = u5 + 3

	if v464 > u4 then
		while v464 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v466 = t15[p13.EnumType]

	buffer.writeu8(u3, u5, v466)
	u5 += 1

	local p13Value = p13.Value

	buffer.writeu16(u3, u5, p13Value)
	u5 += 2
end

local t16 = {}
local Static1 = {
	"DataStore Failed To Load",
	"Another Static String",
	3.141592653589793,
	123456789,
	Vector3.new(1, 2, 3),
	"You can have upto 255 static values of any type"
}

for v56, v57 in Static1 do
	t16[v57] = v56
end

t1.Static1 = "Static1"

function t2.Static1() -- line: 516
	-- upvalues: Static1 (copy), u3 (ref), u5 (ref)
	local v468 = Static1
	local v469 = buffer.readu8(u3, u5)

	u5 += 1

	return v468[v469]
end
function t3.Static1(p14) -- line: 517
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), t16 (copy)
	local v471 = u5 + 1

	if v471 > u4 then
		while v471 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v473 = t16[p14] or 0

	buffer.writeu8(u3, u5, v473)
	u5 += 1
end

local t17 = {}
local Static2 = {
	"DataStore Failed To Load",
	"Another Static String",
	3.141592653589793,
	123456789,
	Vector3.new(1, 2, 3),
	"You can have upto 255 static values of any type"
}

for v60, v61 in Static2 do
	t17[v61] = v60
end

t1.Static2 = "Static2"

function t2.Static2() -- line: 523
	-- upvalues: Static2 (copy), u3 (ref), u5 (ref)
	local v474 = Static2
	local v475 = buffer.readu8(u3, u5)

	u5 += 1

	return v474[v475]
end
function t3.Static2(p15) -- line: 524
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), t17 (copy)
	local v477 = u5 + 1

	if v477 > u4 then
		while v477 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v479 = t17[p15] or 0

	buffer.writeu8(u3, u5, v479)
	u5 += 1
end

local t18 = {}
local Static3 = {
	"DataStore Failed To Load",
	"Another Static String",
	3.141592653589793,
	123456789,
	Vector3.new(1, 2, 3),
	"You can have upto 255 static values of any type"
}

for v64, v65 in Static3 do
	t18[v65] = v64
end

t1.Static3 = "Static3"

function t2.Static3() -- line: 530
	-- upvalues: Static3 (copy), u3 (ref), u5 (ref)
	local v480 = Static3
	local v481 = buffer.readu8(u3, u5)

	u5 += 1

	return v480[v481]
end
function t3.Static3(p16) -- line: 531
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), t18 (copy)
	local v483 = u5 + 1

	if v483 > u4 then
		while v483 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	local v485 = t18[p16] or 0

	buffer.writeu8(u3, u5, v485)
	u5 += 1
end

t4[0] = function() -- line: 535
	return nil
end
t5["nil"] = function(_: nil) -- line: 536
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v487 = u5 + 1

	if v487 > u4 then
		while v487 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 0)
	u5 += 1
end
t4[1] = function() -- line: 538
	-- upvalues: u3 (ref), u5 (ref)
	local v489 = buffer.readu8(u3, u5)

	u5 += 1

	return -v489
end
t4[2] = function() -- line: 539
	-- upvalues: u3 (ref), u5 (ref)
	local v490 = buffer.readu16(u3, u5)

	u5 += 2

	return -v490
end
t4[3] = function() -- line: 540
	-- upvalues: u3 (ref), u5 (ref)
	local v491 = buffer.readbits(u3, u5 * 8, 24)

	u5 += 3

	return -v491
end
t4[4] = function() -- line: 541
	-- upvalues: u3 (ref), u5 (ref)
	local v492 = buffer.readu32(u3, u5)

	u5 += 4

	return -v492
end
t4[5] = function() -- line: 542
	-- upvalues: u3 (ref), u5 (ref)
	local v493 = buffer.readu8(u3, u5)

	u5 += 1

	return v493
end
t4[6] = function() -- line: 543
	-- upvalues: u3 (ref), u5 (ref)
	local v494 = buffer.readu16(u3, u5)

	u5 += 2

	return v494
end
t4[7] = function() -- line: 544
	-- upvalues: u3 (ref), u5 (ref)
	local v495 = buffer.readbits(u3, u5 * 8, 24)

	u5 += 3

	return v495
end
t4[8] = function() -- line: 545
	-- upvalues: u3 (ref), u5 (ref)
	local v496 = buffer.readu32(u3, u5)

	u5 += 4

	return v496
end
t4[9] = function() -- line: 546
	-- upvalues: u3 (ref), u5 (ref)
	local v497 = buffer.readf32(u3, u5)

	u5 += 4

	return v497
end
t4[10] = function() -- line: 547
	-- upvalues: u3 (ref), u5 (ref)
	local v498 = buffer.readf64(u3, u5)

	u5 += 8

	return v498
end

function t5.number(n30: number) -- line: 548
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	if n30 % 1 == 0 then
		if n30 < 0 then
			if n30 > -256 then
				local v500 = u5 + 2

				if v500 > u4 then
					while v500 > u4 do
						u4 *= 2
					end

					local buf = buffer.create(u4)

					buffer.copy(buf, 0, u3, 0, u5)
					u2.Buffer = buf
					u3 = buf
				end

				buffer.writeu8(u3, u5, 1)
				u5 += 1

				local v502 = -n30

				buffer.writeu8(u3, u5, v502)
				u5 += 1

				return
			end

			if n30 > -65536 then
				local v503 = u5 + 3

				if v503 > u4 then
					while v503 > u4 do
						u4 *= 2
					end

					local buf = buffer.create(u4)

					buffer.copy(buf, 0, u3, 0, u5)
					u2.Buffer = buf
					u3 = buf
				end

				buffer.writeu8(u3, u5, 2)
				u5 += 1

				local v505 = -n30

				buffer.writeu16(u3, u5, v505)
				u5 += 2

				return
			end

			if n30 > -16777216 then
				local v506 = u5 + 4

				if v506 > u4 then
					while v506 > u4 do
						u4 *= 2
					end

					local buf = buffer.create(u4)

					buffer.copy(buf, 0, u3, 0, u5)
					u2.Buffer = buf
					u3 = buf
				end

				buffer.writeu8(u3, u5, 3)
				u5 += 1

				local v508 = -n30

				buffer.writebits(u3, u5 * 8, 24, v508)
				u5 += 3

				return
			end

			if n30 > -4294967296 then
				local v509 = u5 + 5

				if v509 > u4 then
					while v509 > u4 do
						u4 *= 2
					end

					local buf = buffer.create(u4)

					buffer.copy(buf, 0, u3, 0, u5)
					u2.Buffer = buf
					u3 = buf
				end

				buffer.writeu8(u3, u5, 4)
				u5 += 1

				local v511 = -n30

				buffer.writeu32(u3, u5, v511)
				u5 += 4

				return
			end

			local v512 = u5 + 9

			if v512 > u4 then
				while v512 > u4 do
					u4 *= 2
				end

				local buf = buffer.create(u4)

				buffer.copy(buf, 0, u3, 0, u5)
				u2.Buffer = buf
				u3 = buf
			end

			buffer.writeu8(u3, u5, 10)
			u5 += 1
			buffer.writef64(u3, u5, n30)
			u5 += 8

			return
		end

		if n30 < 256 then
			local v514 = u5 + 2

			if v514 > u4 then
				while v514 > u4 do
					u4 *= 2
				end

				local buf = buffer.create(u4)

				buffer.copy(buf, 0, u3, 0, u5)
				u2.Buffer = buf
				u3 = buf
			end

			buffer.writeu8(u3, u5, 5)
			u5 += 1
			buffer.writeu8(u3, u5, n30)
			u5 += 1

			return
		end

		if n30 < 65536 then
			local v516 = u5 + 3

			if v516 > u4 then
				while v516 > u4 do
					u4 *= 2
				end

				local buf = buffer.create(u4)

				buffer.copy(buf, 0, u3, 0, u5)
				u2.Buffer = buf
				u3 = buf
			end

			buffer.writeu8(u3, u5, 6)
			u5 += 1
			buffer.writeu16(u3, u5, n30)
			u5 += 2

			return
		end

		if n30 < 16777216 then
			local v518 = u5 + 4

			if v518 > u4 then
				while v518 > u4 do
					u4 *= 2
				end

				local buf = buffer.create(u4)

				buffer.copy(buf, 0, u3, 0, u5)
				u2.Buffer = buf
				u3 = buf
			end

			buffer.writeu8(u3, u5, 7)
			u5 += 1
			buffer.writebits(u3, u5 * 8, 24, n30)
			u5 += 3

			return
		end

		if n30 < 4294967296 then
			local v520 = u5 + 5

			if v520 > u4 then
				while v520 > u4 do
					u4 *= 2
				end

				local buf = buffer.create(u4)

				buffer.copy(buf, 0, u3, 0, u5)
				u2.Buffer = buf
				u3 = buf
			end

			buffer.writeu8(u3, u5, 8)
			u5 += 1
			buffer.writeu32(u3, u5, n30)
			u5 += 4

			return
		end

		local v522 = u5 + 9

		if v522 > u4 then
			while v522 > u4 do
				u4 *= 2
			end

			local buf = buffer.create(u4)

			buffer.copy(buf, 0, u3, 0, u5)
			u2.Buffer = buf
			u3 = buf
		end

		buffer.writeu8(u3, u5, 10)
		u5 += 1
		buffer.writef64(u3, u5, n30)
		u5 += 8

		return
	end

	if n30 > -1048576 and n30 < 1048576 then
		local v524 = u5 + 5

		if v524 > u4 then
			while v524 > u4 do
				u4 *= 2
			end

			local buf = buffer.create(u4)

			buffer.copy(buf, 0, u3, 0, u5)
			u2.Buffer = buf
			u3 = buf
		end

		buffer.writeu8(u3, u5, 9)
		u5 += 1
		buffer.writef32(u3, u5, n30)
		u5 += 4

		return
	end

	local v526 = u5 + 9

	if v526 > u4 then
		while v526 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 10)
	u5 += 1
	buffer.writef64(u3, u5, n30)
	u5 += 8
end

t4[11] = function() -- line: 582
	-- upvalues: u3 (ref), u5 (ref), v1 (copy)
	local v528 = buffer.readu8(u3, u5)

	u5 += 1

	local v529 = buffer.readstring(u3, u5, v528)

	u5 += v528

	if v1 and utf8.len(v529) == nil then
		return ""
	end

	return v529
end
t4[29] = function() -- line: 586
	-- upvalues: u3 (ref), u5 (ref), v1 (copy)
	local v530 = buffer.readu32(u3, u5)

	u5 += 4

	local v531 = buffer.readstring(u3, u5, v530)

	u5 += v530

	if v1 and utf8.len(v531) == nil then
		return ""
	end

	return v531
end

function t5.string(s5: string) -- line: 587
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v533 = #s5

	if v533 < 256 then
		local v534 = v533 + 2
		local v535 = u5 + v534

		if v535 > u4 then
			while v535 > u4 do
				u4 *= 2
			end

			local buf = buffer.create(u4)

			buffer.copy(buf, 0, u3, 0, u5)
			u2.Buffer = buf
			u3 = buf
		end

		buffer.writeu8(u3, u5, 11)
		u5 += 1
		buffer.writeu8(u3, u5, v533)
		u5 += 1
		buffer.writestring(u3, u5, s5)
		u5 += #s5

		return
	end

	local v537 = v533 + 5
	local v538 = u5 + v537

	if v538 > u4 then
		while v538 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 29)
	u5 += 1
	buffer.writeu32(u3, u5, v533)
	u5 += 4
	buffer.writestring(u3, u5, s5)
	u5 += #s5
end

t4[12] = function() -- line: 596
	-- upvalues: u3 (ref), u5 (ref)
	local v540 = buffer.readu8(u3, u5)

	u5 += 1

	local buf = buffer.create(v540)

	buffer.copy(buf, 0, u3, u5, v540)
	u5 += v540

	return buf
end

function t5.buffer(p18: buffer) -- line: 597
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v543 = buffer.len(p18)
	local v544 = 2 + v543
	local v545 = u5 + v544

	if v545 > u4 then
		while v545 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 12)
	u5 += 1
	buffer.writeu8(u3, u5, v543)
	u5 += 1
	buffer.copy(u3, u5, p18)
	u5 += buffer.len(p18)
end

t4[13] = function() -- line: 599
	-- upvalues: u7 (ref), Instances (ref)
	u7 += 1

	return Instances[u7]
end

function t5.Instance(p19) -- line: 600
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), u7 (ref), Instances (ref)
	local v548 = u5 + 1

	if v548 > u4 then
		while v548 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 13)
	u5 += 1
	u7 += 1
	Instances[u7] = p19
end

t4[14] = function() -- line: 602
	-- upvalues: u3 (ref), u5 (ref)
	local v550 = buffer.readu8(u3, u5)

	u5 += 1

	return v550 == 1
end

function t5.boolean(b2: boolean) -- line: 603
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v552 = u5 + 2

	if v552 > u4 then
		while v552 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 14)
	u5 += 1

	local v554 = not b2 and 0 or 1

	buffer.writeu8(u3, u5, v554)
	u5 += 1
end

t4[15] = function() -- line: 605
	-- upvalues: u3 (ref), u5 (ref)
	local new = NumberRange.new
	local v556 = buffer.readf32(u3, u5)

	u5 += 4

	local v557 = buffer.readf32(u3, u5)

	u5 += 4

	return new(v556, v557)
end

function t5.NumberRange(numberRange: NumberRange) -- line: 606
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v559 = u5 + 9

	if v559 > u4 then
		while v559 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 15)
	u5 += 1

	local Min = numberRange.Min

	buffer.writef32(u3, u5, Min)
	u5 += 4

	local Max = numberRange.Max

	buffer.writef32(u3, u5, Max)
	u5 += 4
end

t4[16] = function() -- line: 608
	-- upvalues: u3 (ref), u5 (ref)
	local new = BrickColor.new
	local v564 = buffer.readu16(u3, u5)

	u5 += 2

	return new(v564)
end

function t5.BrickColor(p20) -- line: 609
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v566 = u5 + 3

	if v566 > u4 then
		while v566 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 16)
	u5 += 1

	local Number = p20.Number

	buffer.writeu16(u3, u5, Number)
	u5 += 2
end

t4[17] = function() -- line: 611
	-- upvalues: u3 (ref), u5 (ref)
	local fromRGB = Color3.fromRGB
	local v570 = buffer.readu8(u3, u5)

	u5 += 1

	local v571 = buffer.readu8(u3, u5)

	u5 += 1

	local v572 = buffer.readu8(u3, u5)

	u5 += 1

	return fromRGB(v570, v571, v572)
end

function t5.Color3(color3: Color3) -- line: 612
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v574 = u5 + 4

	if v574 > u4 then
		while v574 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 17)
	u5 += 1

	local v576 = color3.R * 255 + 0.5

	buffer.writeu8(u3, u5, v576)
	u5 += 1

	local v577 = color3.G * 255 + 0.5

	buffer.writeu8(u3, u5, v577)
	u5 += 1

	local v578 = color3.B * 255 + 0.5

	buffer.writeu8(u3, u5, v578)
	u5 += 1
end

t4[18] = function() -- line: 614
	-- upvalues: u3 (ref), u5 (ref)
	local new = UDim.new
	local v580 = buffer.readi16(u3, u5)

	u5 += 2

	local v581 = v580 / 1000
	local v582 = buffer.readi16(u3, u5)

	u5 += 2

	return new(v581, v582)
end

function t5.UDim(uDim: UDim) -- line: 615
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v584 = u5 + 5

	if v584 > u4 then
		while v584 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 18)
	u5 += 1

	local v586 = uDim.Scale * 1000

	buffer.writei16(u3, u5, v586)
	u5 += 2

	local uDimOffset = uDim.Offset

	buffer.writei16(u3, u5, uDimOffset)
	u5 += 2
end

t4[19] = function() -- line: 617
	-- upvalues: u3 (ref), u5 (ref)
	local new = UDim2.new
	local v589 = buffer.readi16(u3, u5)

	u5 += 2

	local v590 = v589 / 1000
	local v591 = buffer.readi16(u3, u5)

	u5 += 2

	local v592 = buffer.readi16(u3, u5)

	u5 += 2

	local v593 = v592 / 1000
	local v594 = buffer.readi16(u3, u5)

	u5 += 2

	return new(v590, v591, v593, v594)
end

function t5.UDim2(uDim2: UDim2) -- line: 618
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v596 = u5 + 9

	if v596 > u4 then
		while v596 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 19)
	u5 += 1

	local v598 = uDim2.X.Scale * 1000

	buffer.writei16(u3, u5, v598)
	u5 += 2

	local XOffset = uDim2.X.Offset

	buffer.writei16(u3, u5, XOffset)
	u5 += 2

	local v600 = uDim2.Y.Scale * 1000

	buffer.writei16(u3, u5, v600)
	u5 += 2

	local YOffset = uDim2.Y.Offset

	buffer.writei16(u3, u5, YOffset)
	u5 += 2
end

t4[20] = function() -- line: 620
	-- upvalues: u3 (ref), u5 (ref)
	local new = Rect.new
	local v603 = buffer.readf32(u3, u5)

	u5 += 4

	local v604 = buffer.readf32(u3, u5)

	u5 += 4

	local v605 = buffer.readf32(u3, u5)

	u5 += 4

	local v606 = buffer.readf32(u3, u5)

	u5 += 4

	return new(v603, v604, v605, v606)
end

function t5.Rect(rect: Rect) -- line: 621
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v608 = u5 + 17

	if v608 > u4 then
		while v608 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 20)
	u5 += 1

	local MinX = rect.Min.X

	buffer.writef32(u3, u5, MinX)
	u5 += 4

	local MinY = rect.Min.Y

	buffer.writef32(u3, u5, MinY)
	u5 += 4

	local MaxX = rect.Max.X

	buffer.writef32(u3, u5, MaxX)
	u5 += 4

	local MaxY = rect.Max.Y

	buffer.writef32(u3, u5, MaxY)
	u5 += 4
end

t4[21] = function() -- line: 623
	-- upvalues: u3 (ref), u5 (ref)
	local new = Vector2.new
	local v615 = buffer.readf32(u3, u5)

	u5 += 4

	local v616 = buffer.readf32(u3, u5)

	u5 += 4

	return new(v615, v616)
end

function t5.Vector2(vector2: Vector2) -- line: 624
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v618 = u5 + 9

	if v618 > u4 then
		while v618 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 21)
	u5 += 1

	local vector2X = vector2.X

	buffer.writef32(u3, u5, vector2X)
	u5 += 4

	local vector2Y = vector2.Y

	buffer.writef32(u3, u5, vector2Y)
	u5 += 4
end

t4[22] = function() -- line: 626
	-- upvalues: u3 (ref), u5 (ref)
	local v622 = buffer.readf32(u3, u5)

	u5 += 4

	local v623 = buffer.readf32(u3, u5)

	u5 += 4

	local v624 = buffer.readf32(u3, u5)

	u5 += 4

	return (Vector3.new(v622, v623, v624))
end

function t5.Vector3(vector3: Vector3) -- line: 627
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v626 = u5 + 13

	if v626 > u4 then
		while v626 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 22)
	u5 += 1

	local vector3X = vector3.X

	buffer.writef32(u3, u5, vector3X)
	u5 += 4

	local vector3Y = vector3.Y

	buffer.writef32(u3, u5, vector3Y)
	u5 += 4

	local vector3Z = vector3.Z

	buffer.writef32(u3, u5, vector3Z)
	u5 += 4
end

t4[23] = function() -- line: 629
	-- upvalues: u3 (ref), u5 (ref)
	local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
	local v632 = buffer.readu16(u3, u5)

	u5 += 2

	local v633 = v632 / 10430.219195527361
	local v634 = buffer.readu16(u3, u5)

	u5 += 2

	local v635 = v634 / 10430.219195527361
	local v636 = buffer.readu16(u3, u5)

	u5 += 2

	local v637 = fromEulerAnglesXYZ(v633, v635, v636 / 10430.219195527361)
	local v638 = buffer.readf32(u3, u5)

	u5 += 4

	local v639 = buffer.readf32(u3, u5)

	u5 += 4

	local v640 = buffer.readf32(u3, u5)

	u5 += 4

	return v637 + Vector3.new(v638, v639, v640)
end

function t5.CFrame(cFrame: CFrame) -- line: 633
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v642, v643, v644 = cFrame:ToEulerAnglesXYZ()
	local v645 = u5 + 19

	if v645 > u4 then
		while v645 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 23)
	u5 += 1

	local v647 = v642 * 10430.219195527361 + 0.5

	buffer.writeu16(u3, u5, v647)
	u5 += 2

	local v648 = v643 * 10430.219195527361 + 0.5

	buffer.writeu16(u3, u5, v648)
	u5 += 2

	local v649 = v644 * 10430.219195527361 + 0.5

	buffer.writeu16(u3, u5, v649)
	u5 += 2

	local cFrameX = cFrame.X

	buffer.writef32(u3, u5, cFrameX)
	u5 += 4

	local cFrameY = cFrame.Y

	buffer.writef32(u3, u5, cFrameY)
	u5 += 4

	local cFrameZ = cFrame.Z

	buffer.writef32(u3, u5, cFrameZ)
	u5 += 4
end

t4[24] = function() -- line: 641
	-- upvalues: u3 (ref), u5 (ref)
	local new = Region3.new
	local v654 = buffer.readf32(u3, u5)

	u5 += 4

	local v655 = buffer.readf32(u3, u5)

	u5 += 4

	local v656 = buffer.readf32(u3, u5)

	u5 += 4

	local vector3 = Vector3.new(v654, v655, v656)
	local v658 = buffer.readf32(u3, u5)

	u5 += 4

	local v659 = buffer.readf32(u3, u5)

	u5 += 4

	local v660 = buffer.readf32(u3, u5)

	u5 += 4

	return new(vector3, (Vector3.new(v658, v659, v660)))
end

function t5.Region3(p21) -- line: 647
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v662 = p21.Size / 2
	local v663 = p21.CFrame.Position - v662
	local v664 = p21.CFrame.Position + v662
	local v665 = u5 + 25

	if v665 > u4 then
		while v665 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 24)
	u5 += 1

	local X = v663.X

	buffer.writef32(u3, u5, X)
	u5 += 4

	local Y = v663.Y

	buffer.writef32(u3, u5, Y)
	u5 += 4

	local Z = v663.Z

	buffer.writef32(u3, u5, Z)
	u5 += 4

	local X3 = v664.X

	buffer.writef32(u3, u5, X3)
	u5 += 4

	local Y3 = v664.Y

	buffer.writef32(u3, u5, Y3)
	u5 += 4

	local Z3 = v664.Z

	buffer.writef32(u3, u5, Z3)
	u5 += 4
end

t4[25] = function() -- line: 657
	-- upvalues: u3 (ref), u5 (ref)
	local v673 = buffer.readu8(u3, u5)

	u5 += 1

	local t19 = table.create(v673)

	for _ = 1, v673 do
		local new = NumberSequenceKeypoint.new
		local v677 = buffer.readu8(u3, u5)

		u5 += 1

		local v678 = v677 / 255
		local v679 = buffer.readu8(u3, u5)

		u5 += 1

		local v680 = v679 / 255
		local v681 = buffer.readu8(u3, u5)

		u5 += 1
		table.insert(t19, new(v678, v680, v681 / 255))
	end

	return NumberSequence.new(t19)
end

function t5.NumberSequence(p22) -- line: 665
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v683 = #p22.Keypoints
	local v684 = v683 * 3 + 2
	local v685 = u5 + v684

	if v685 > u4 then
		while v685 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 25)
	u5 += 1
	buffer.writeu8(u3, u5, v683)
	u5 += 1

	for _, v688 in p22.Keypoints do
		local v689 = v688.Time * 255 + 0.5

		buffer.writeu8(u3, u5, v689)
		u5 += 1

		local v690 = v688.Value * 255 + 0.5

		buffer.writeu8(u3, u5, v690)
		u5 += 1

		local v691 = v688.Envelope * 255 + 0.5

		buffer.writeu8(u3, u5, v691)
		u5 += 1
	end
end

t4[26] = function() -- line: 675
	-- upvalues: u3 (ref), u5 (ref)
	local v692 = buffer.readu8(u3, u5)

	u5 += 1

	local t20 = table.create(v692)

	for _ = 1, v692 do
		local new = ColorSequenceKeypoint.new
		local v696 = buffer.readu8(u3, u5)

		u5 += 1

		local v697 = v696 / 255
		local fromRGB = Color3.fromRGB
		local v699 = buffer.readu8(u3, u5)

		u5 += 1

		local v700 = buffer.readu8(u3, u5)

		u5 += 1

		local v701 = buffer.readu8(u3, u5)

		u5 += 1
		table.insert(t20, new(v697, fromRGB(v699, v700, v701)))
	end

	return ColorSequence.new(t20)
end

function t5.ColorSequence(p23) -- line: 683
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref)
	local v703 = #p23.Keypoints
	local v704 = v703 * 4 + 2
	local v705 = u5 + v704

	if v705 > u4 then
		while v705 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 26)
	u5 += 1
	buffer.writeu8(u3, u5, v703)
	u5 += 1

	for _, v708 in p23.Keypoints do
		local v709 = v708.Time * 255 + 0.5

		buffer.writeu8(u3, u5, v709)
		u5 += 1

		local v710 = v708.Value.R * 255 + 0.5

		buffer.writeu8(u3, u5, v710)
		u5 += 1

		local v711 = v708.Value.G * 255 + 0.5

		buffer.writeu8(u3, u5, v711)
		u5 += 1

		local v712 = v708.Value.B * 255 + 0.5

		buffer.writeu8(u3, u5, v712)
		u5 += 1
	end
end

t4[27] = function() -- line: 694
	-- upvalues: Enums (copy), u3 (ref), u5 (ref)
	local v713 = Enums
	local v714 = buffer.readu8(u3, u5)

	u5 += 1

	local v715 = v713[v714]
	local v716 = buffer.readu16(u3, u5)

	u5 += 2

	return v715:FromValue(v716)
end

function t5.EnumItem(p24) -- line: 697
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), t15 (copy)
	local v718 = u5 + 4

	if v718 > u4 then
		while v718 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 27)
	u5 += 1

	local v720 = t15[p24.EnumType]

	buffer.writeu8(u3, u5, v720)
	u5 += 1

	local p24Value = p24.Value

	buffer.writeu16(u3, u5, p24Value)
	u5 += 2
end

t4[28] = function() -- line: 704
	-- upvalues: u3 (ref), u5 (ref), t4 (copy)
	local t21 = {}

	while true do
		local v723 = buffer.readu8(u3, u5)

		u5 += 1

		if v723 == 0 then
			break
		end

		local v724 = t4[v723]()
		local v725 = t4
		local v726 = buffer.readu8(u3, u5)

		u5 += 1
		t21[v724] = v725[v726]()
	end

	return t21
end

function t5.table(t22: {[any]: any}) -- line: 711
	-- upvalues: u5 (ref), u4 (ref), u3 (ref), u2 (ref), t5 (copy)
	local v728 = u5 + 1

	if v728 > u4 then
		while v728 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 28)
	u5 += 1

	for v730, v731 in t22 do
		t5[typeof(v730)](v730)
		t5[typeof(v731)](v731)
	end

	local v732 = u5 + 1

	if v732 > u4 then
		while v732 > u4 do
			u4 *= 2
		end

		local buf = buffer.create(u4)

		buffer.copy(buf, 0, u3, 0, u5)
		u2.Buffer = buf
		u3 = buf
	end

	buffer.writeu8(u3, u5, 0)
	u5 += 1
end

return {
	Import = function(t23: {[any]: any}) -- line: 721
		-- upvalues: u2 (ref), u3 (ref), u4 (ref), u5 (ref), Instances (ref), u7 (ref)
		u2 = t23
		u3 = t23.Buffer
		u4 = t23.BufferLength
		u5 = t23.BufferOffset
		Instances = t23.Instances
		u7 = t23.InstancesOffset
	end,
	Export = function() -- line: 730
		-- upvalues: u2 (ref), u4 (ref), u5 (ref), u7 (ref)
		u2.BufferLength = u4
		u2.BufferOffset = u5
		u2.InstancesOffset = u7

		return u2
	end,
	Truncate = function() -- line: 737
		-- upvalues: u5 (ref), u3 (ref), u7 (ref), Instances (ref)
		local buf = buffer.create(u5)

		buffer.copy(buf, 0, u3, 0, u5)

		if u7 == 0 then
			return buf
		end

		return buf, Instances
	end,
	Ended = function() -- line: 743
		-- upvalues: u5 (ref), u4 (ref)
		return u5 >= u4
	end,
	Types = t1,
	Reads = t2,
	Writes = t3
}
