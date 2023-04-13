library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.constants.all;


package types is
    type axis_t is (X_AXIS, Y_AXIS, Z_AXIS);

    type dir_t is (X_P, X_N, Y_P, Y_N, Z_P, Z_N);

    subtype int is signed(19 downto 0);

    type vec2i_t is record
        x: integer;
        y: integer;
    end record;

    type vec3i_t is record
        x: integer;
        y: integer;
        z: integer;
    end record;

    type color_t is record
        r: std_logic_vector(3 downto 0);
        g: std_logic_vector(3 downto 0);
        b: std_logic_vector(3 downto 0);
    end record;

    type vga_t is record
        hsync_n, vsync_n: std_logic;
        color: color_t;
    end record;

    function "+"(v1, v2: vec3i_t) return vec3i_t;
    function "-"(v1, v2: vec3i_t) return vec3i_t;
    function length2(v: vec3i_t) return integer;
    function length_mht(v: vec3i_t) return integer;
end package;


package body types is
    function "+"(v1, v2: vec3i_t) return vec3i_t is
    begin
        return vec3i_t'(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z);
    end function;

    function "-"(v1, v2: vec3i_t) return vec3i_t is
    begin
        return vec3i_t'(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z);
    end function;

    function length2(v: vec3i_t) return integer is
    begin
        return v.x * v.x + v.y * v.y + v.z * v.z;
    end function;

    function length_mht(v: vec3i_t) return integer is
    begin
        return abs(v.x) + abs(v.y) + abs(v.z);
    end function;
end package body;