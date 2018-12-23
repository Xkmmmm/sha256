function Ch(x,y,z : std_logic_vector) return std_logic_vector is
begin
    return (x and y) xor ((not x) and z);
end function Ch;

function Maj(x,y,z : std_logic_vector)return std_logic_vector is
begin
    return (x and y) xor (x and z) xor (y and z);
end function Maj;

function s0(x : std_logic_vector) return std_logic_vector is
begin 
    return std_logic_vector(rotate_right(unsigned(x),2) xor rotate_right(unsigned(x),13) xor rotate_right(unsigned(x),22));
end function s0;

function s1(x : std_logic_vector) return std_logic_vector is
begin 
    return std_logic_vector(rotate_right(unsigned(x),6) xor rotate_right(unsigned(x),11) xor rotate_right(unsigned(x),25));
end function s1;

function o0(x : std_logic_vector) return std_logic_vector is
begin 
    return std_logic_vector(rotate_right(unsigned(x),7) xor rotate_right(unsigned(x),18) xor rotate_right(unsigned(x),3));
end function o0;

function o1(x : std_logic_vector) return std_logic_vector is
begin 
    return std_logic_vector(rotate_right(unsigned(x),17) xor rotate_right(unsigned(x),19) xor rotate_right(unsigned(x),10));
end function o1;
