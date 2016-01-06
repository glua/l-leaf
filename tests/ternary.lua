
local a = true;
local b = 1;
local c = 2;


if((check a then b else c) ~= b) then
    return false, "(check a then b else c) ~= b";
end


if((check true then b else a) ~= b) then
    return false, "(check true then b else a) ~= b";
end


if((check false then b else a) ~= a) then
    return false, "(check false then b else a) ~= a";
end

if((check false or true then b else a) ~= b) then
    return false, "(check false or true then b else a) ~= b";
end

if((check false or true then check true or false then c else b else a) ~= c) then
    return false, "(check false or true then check true or false then c else b else a) ~= c";
end

return true;
