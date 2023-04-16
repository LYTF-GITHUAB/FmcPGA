library IEEE;
use IEEE.std_logic_1164.all;

use work.types.all;


entity block_collision_tb is
end entity;

architecture Behavioral of block_collision_tb is
    component block_collision is
        port (
            start_p, end_p: in vec3i_t;
            block_p: in vec3i_t;
            hit_p: out vec3i_t;
            hit_dir: out dir_t;
            uv_coord: out vec2i_t;
            valid: out std_logic
        );
    end component;

    signal start_p, end_p: vec3i_t;
    signal block_p: vec3i_t;
    signal hit_p: vec3i_t;
    signal hit_dir: dir_t;
    signal uv_coord: vec2i_t;
    signal valid: std_logic;
begin
    uut: block_collision port map (
        start_p => start_p,
        end_p => end_p,
        block_p => block_p,
        hit_p => hit_p,
        hit_dir => hit_dir,
        uv_coord => uv_coord,
        valid => valid
    );
    
    start_p <= (0, 56, 16);
    end_p <= (24, 0, 0);
    block_p <= (0, 2, 0);
end architecture;