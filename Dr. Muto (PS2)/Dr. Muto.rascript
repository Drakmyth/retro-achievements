// Dr. Muto
// #ID = 20813
// #MinimumVersion=1.3.1

L_LABRED = "labred"
L_LAB = "lab1"
T_JUNKYARD = "tl1s"
T_VATS = "tl2s"
T_FACTORY = "tl4s"
T_BOSS = "tl5s1a"
A_LAGOON = "al1s"
A_OILRIG = "al2s"
A_HYDROSTATION = "al3s"
A_WATERWORKS = "al4s"
A_BOSS = "al5s1b" // Carla's Hole has two sections: the boss arena (b), and the pipes right before it (a)
F_SPHERE = "fl1s"
F_CUBE = "fl2s"
F_FURNACES = "fl3s"
F_JUPITERCITY = "fl4s"
F_BOSS = "fl4s1d" // Steele's Garage is technically part of Jupiter City rather than its own area
M_WORKSHOP = "ml1s"
M_BOSS = "ml2s1d"

TYPE_NORMAL = ""
TYPE_MISSABLE = "missable"
TYPE_PROGRESSION = "progression"
TYPE_WIN = "win_condition"

PROMPT_NONE = 0
PROMPT_BLUEPRINT = 1
PROMPT_FORMULA = 2

MENU_TITLE = 0x01
MENU_CREDITS = 0x05
MENU_CHEATS = 0x0b
MENU_PAUSE = 0x0c
MENU_GENITOR = 0x0f
MENU_BLUEPRINTS = 0x10
MENU_FORMULAS = 0x11
MENU_QUIT = 0x12
MENU_READYTOSAVE = 0x1c

TITLE_MENUS = [MENU_TITLE, 0x02]
OPTIONS_MENUS = [0x06, 0x08, 0x09, 0x0a]
LOADING_MENUS = [0x17, 0x18, 0x19, 0x1a]
SAVING_MENUS = [0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x25, 0x2a]
MOVIES_MENUS = [0x03, 0x04]
COLLECTION_MENUS = [0x0d, 0x0e, MENU_GENITOR, MENU_BLUEPRINTS, MENU_FORMULAS]

MORPH_DOC = 0
MORPH_MOUSE = 1
MORPH_GORILLA = 2
MORPH_FISH = 3
MORPH_SQUIRREL = 4
MORPH_SPIDER = 6
MORPH_FLY = 7

GADGET_SUPERBALLER = 0
GADGET_POCKETROCKET = 1
GADGET_INVISIBILITY = 2
GADGET_INVULNERABILITY = 3

VIDEO_START = "/movies/start.fmav"
VIDEO_VINNEY = "/movies/vinny.fmav"
VIDEO_CARLA = "/movies/carla.fmav"
VIDEO_STEELE = "/movies/steele.fmav"
VIDEO_BURNITAL = "/movies/burnital.fmav"
VIDEO_ENDING1 = "/movies/ending1.fmav"
VIDEO_ENDING2 = "/movies/ending2.fmav"

IDX_ISOTOPES = 0
IDX_TERRA = 1
IDX_DNA = 2
IDX_ADDRESS = 3

// level: [isotopes, terra, dna, address]
totals = {
    L_LAB: [100, 2, 0, 0x3a3e48],
    T_JUNKYARD: [300, 7, 17, 0x3a3e4c],
    T_VATS: [300, 7, 27, 0x3a3e50],
    T_FACTORY: [300, 7, 62, 0x3a3e58],
    A_LAGOON: [300, 7, 28, 0x3a3e60],
    A_OILRIG: [300, 7, 5, 0x3a3e64],
    A_HYDROSTATION: [282, 7, 42, 0x3a3e68],
    A_WATERWORKS: [300, 7, 3, 0x3a3e6c],
    F_SPHERE: [400, 7, 23, 0x3a3e74],
    F_CUBE: [400, 7, 15, 0x3a3e78],
    F_FURNACES: [400, 7, 7, 0x3a3e7c],
    F_JUPITERCITY: [400, 7, 15, 0x3a3e80],
    M_WORKSHOP: [450, 7, 13, 0x3a3e88],
}

IDX_VIDEOPATH = 0
IDX_TRIGGERFRAME = 1
IDX_GENITORFRAME = 2

// level: [videopath, triggerframe, genitorframe]
bosses = {
    T_BOSS: [VIDEO_VINNEY, 0x280, 0x300],
    A_BOSS: [VIDEO_CARLA, 0x300, 0x3c0],
    F_BOSS: [VIDEO_STEELE, 0x4d0, 0x550],
    M_BOSS: [VIDEO_BURNITAL, 0x6d0, 0x790],    
}

ENDING_BAD = 1
ENDING_GOOD = 2

// level: [videopath, triggerframe]
endings = {
    // ENDING_BAD uses a path prefix to make it trigger when either ending video plays.
    // It triggers one frame after ENDING_GOOD so it pops second if you get both at the same time.
    ENDING_BAD: ["/movies/ending", 0x61],
    ENDING_GOOD: [VIDEO_ENDING2, 0x60],
}

morphstatus = [
    dword(0x3a3f94), // MORPH_DOC
    dword(0x3a3f98), // MORPH_MOUSE
    dword(0x3a3f9c), // MORPH_GORILLA
    dword(0x3a3fa0), // MORPH_FISH
    dword(0x3a3fa4), // MORPH_SQUIRREL
    0, // *unused*
    dword(0x3a3fac), // MORPH_SPIDER
    dword(0x3a3fb0), // MORPH_FLY
]

gadgets = [
    dword(0x3a3ec8), // GADGET_SUPERBALLER
    dword(0x3a3ee4), // GADGET_POCKETROCKET
    dword(0x3a3f54), // GADGET_INVISIBILITY
    dword(0x3a3f70), // GADGET_INVULNERABILITY
]

scrap = [
    dword(0x3a3ec4), // GADGET_SUPERBALLER
    dword(0x3a3ee0), // GADGET_POCKETROCKET
    dword(0x3a3f50), // GADGET_INVISIBILITY
    dword(0x3a3f6c), // GADGET_INVULNERABILITY
]

CHEAT_INVINCIBLE = 0
CHEAT_NODAMAGE = 1
CHEAT_ALLGADGETS = 2
CHEAT_ALLMORPHS = 3
CHEAT_ALLEXTRAMORPHS = 4
CHEAT_MOVIES = 5
CHEAT_GOODENDING = 6
CHEAT_ALLTRANSLOADERS = 7

cheats = [
    dword(0x411c80), // CHEAT_INVINCIBLE
    dword(0x411c84), // CHEAT_NODAMAGE
    dword(0x411c88), // CHEAT_ALLGADGETS
    dword(0x411c8c), // CHEAT_ALLMORPHS
    dword(0x411ca0), // CHEAT_ALLEXTRAMORPHS
    dword(0x411ca4), // CHEAT_MOVIES
    dword(0x411ca8), // CHEAT_GOODENDING
    dword(0x2c0e00), // CHEAT_ALLTRANSLOADERS
]

PROMPT_DISCOVER = 1
PROMPT_UNLOCK = 2

current_level_ptr = dword(0x2f3b4c)
current_area_ptr = dword(current_level_ptr + 0x2c)
function area_id() => current_area_ptr + 0x28
function planet_name() => current_area_ptr + 0x48

function isotopes() => word(0x3a3e94)
function terra() => byte(0x3a3e98)
function genitor() => bitcount(0x3a3ea4) + bitcount(0x3a3ea5) + bitcount(0x3a3ea6)
function roach_dna() => byte(0x3a3e9b)
function fireant_dna() => byte(0x3a3e9c)
function monkey_dna() => byte(0x3a3e9a)
function chark_dna() => byte(0x3a3e9d)
function tarfish_dna() => byte(0x3a3e9e)
function airbag_dna() => byte(0x3a3e9f)
function peliqui_dna() => byte(0x3a3ea0)
function bantra_dna() => byte(0x3a3ea1)
function dna() => morphstatus[MORPH_MOUSE] + roach_dna() + fireant_dna() + monkey_dna() + chark_dna() + tarfish_dna() + airbag_dna() + peliqui_dna() + bantra_dna()

function current_health() => byte(0x2c7260)
function max_health() => byte(0x2ee794)
function health_vials() => byte(0x3a3fbc)

function on_any_level() => current_level_ptr != 0x0
function between_levels() => current_level_ptr == 0x0
function on_level(level) => current_level_ptr != 0x0 && ascii_string_equals(area_id(), level)

function splizz_target() => dword(0x40a650)
function splizz_target_state() => byte(splizz_target() + 0x78)
function object_name_is(object_addr, name) => ascii_string_equals(object_addr + 0x10, name)

boss_ptr = dword(0x2eec78)
function is_fighting_boss() => boss_ptr != 0x0 && boss_flags() != 0x0
function boss_health() => float(boss_ptr + 0x8c)
function boss_health_display() => dword(0x2eecb8)
function boss_flags() => byte(0x2eec7c)
function boss_name_equals(name) => ascii_string_equals(boss_ptr + 0x10, name)
function is_boss_beaten() => boss_health_display() == 0xffffffff

function is_game_active() => bit0(0x436714) == 0x1
function is_loading() => dword(0x2bac30) == 0x1
function is_reloading() => dword(0x2bac2c) == 0x1
function cutscene_blocked_control() => dword(0x3fddc0) == 0x0

video_player_ptr = dword(0x3bd814)
function is_any_video_playing() => dword(video_player_ptr + 0x2088) == 0x1
function video_path_equals(path) => ascii_string_equals(video_player_ptr + 0x2028, path)
function is_video_playing(path) => is_any_video_playing() && video_path_equals(path)
function video_elapsed() => dword(video_player_ptr + 0x206c)

function reveal_prompt() => dword(0x2bac40)
function reveal_time_remaining() => float(0x2bac44)
function menu_is_open() => dword(0x2babdc) == 0x1
function transloader_is_open() => dword(0x2babec)
function active_menu() => dword(0x3a5058)
function is_on_any_menu() => active_menu() != 0x0
function is_on_menu(menu) => is_on_any_menu() && active_menu_type() == menu
function is_on_menu_set(menus) => any_of(menus, x => is_on_menu(x))
function active_menu_state() => byte(active_menu())
function active_menu_type() => byte(active_menu() + 0x20)
function active_menu_is_ready() => bit1(active_menu()) == 0x1
function active_menu_allows_player_input() => bit2(active_menu()) == 0x1
function entered_cheat_is(cheat) => ascii_string_equals(active_menu() + 0x44, cheat, 10)
function prev_entered_cheat_is(cheat) => ascii_string_equals(active_menu() + 0x44, cheat, 10, transform=a=>prev(a))
function current_blueprint() => dword(0x3a50b0)
function dialog_is_open() => bit0(0x2be3a8) == 0x1
function current_dialog_is(id) => ascii_string_equals(0x2be3b8, id)
function is_using_alternate_costume() => dword(0x2c1d50) != 0x0 && dword(0x2c1d54) == 0x0
function current_morph() => dword(0x2c6e58)

function girders_not_dropped() => bit7(0x2ed485) == 0x0 && low4(0x2ed486) == 0x0

function is_cheat_enabled(cheat) => cheats[cheat] == 0x1
function any_cheats_enabled(checkcheats) => any_of(checkcheats, is_cheat_enabled)
function cheat_protection(checkcheats) {
    return disable_when(any_cheats_enabled(checkcheats), until=on_any_level() && prev(current_area_ptr) != current_area_ptr)
}

function achievement_isotopes(title, description, total, points, type=TYPE_NORMAL) {
    achievement(
        title = title,
        description = description,
        points = points,
        type = type,
        trigger = is_game_active() &&
                  on_any_level() &&
                  prev(isotopes()) < total && measured(isotopes() >= total)
    )
}

function achievement_terra(title, description, total, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        type = TYPE_PROGRESSION,
        trigger = is_game_active() &&
                  on_any_level() &&
                  prev(terra()) == total - 1 && measured(terra() == total)
    )
}

function achievement_video(title, description, videopath, triggerframe, points, type) {
    achievement(
        title = title,
        description = description,
        points = points,
        type = type,
        trigger = is_game_active() &&
                  !is_on_any_menu() &&
                  between_levels() &&
                  cheat_protection([CHEAT_INVINCIBLE, CHEAT_NODAMAGE]) &&
                  is_video_playing(videopath) &&
                  prev(video_elapsed() < triggerframe) && video_elapsed() >= triggerframe
    )
}

function achievement_boss(title, description, level) {
    videopath = bosses[level][IDX_VIDEOPATH]
    triggerframe = bosses[level][IDX_TRIGGERFRAME]
    achievement_video(title, description, videopath, triggerframe, 10, TYPE_PROGRESSION)
}

function achievement_ending(title, description, ending) {
    videopath = endings[ending][IDX_VIDEOPATH]
    triggerframe = endings[ending][IDX_TRIGGERFRAME]
    achievement_video(title, description, videopath, triggerframe, 25, TYPE_WIN)
}

function discovery_ignore_prompt(prompt) {
    return once(prev(reveal_prompt()) == prompt && reveal_prompt() == PROMPT_NONE) &&
           !menu_is_open()
}

function discovery_open_menu(menu, prompt) {
    return once(prev(reveal_prompt()) == prompt && reveal_prompt() == PROMPT_NONE) &&
           menu_is_open() &&
           is_on_menu(menu) &&
           active_menu_is_ready() &&
           active_menu_allows_player_input()
}

function discovery_edgecases() {
    return (transloader_is_open() == 1 && is_on_menu(MENU_READYTOSAVE)) ||
           (menu_is_open() && is_on_menu(MENU_QUIT))
}

function achievement_discovery(title, description, isotope_count, menu, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = is_game_active() &&
                  on_any_level() &&
                  cheat_protection([CHEAT_ALLGADGETS, CHEAT_ALLMORPHS, CHEAT_ALLEXTRAMORPHS]) &&
                  never(isotopes() < isotope_count) &&
                  once(prev(isotopes()) < isotope_count && isotopes() >= isotope_count) &&
                  (discovery_ignore_prompt(PROMPT_DISCOVER) || discovery_open_menu(menu, PROMPT_DISCOVER) || discovery_edgecases())
    )
}

function achievement_morph(title, description, morph, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = is_game_active() &&
                  on_any_level() &&
                  cheat_protection([CHEAT_ALLMORPHS, CHEAT_ALLEXTRAMORPHS]) &&
                  never(morphstatus[morph] == 0) &&
                  once(prev(morphstatus[morph] == 0) && morphstatus[morph] == 1) &&
                  (discovery_ignore_prompt(PROMPT_UNLOCK) || discovery_open_menu(MENU_FORMULAS, PROMPT_UNLOCK) || discovery_edgecases())
    )
}

function achievement_extra_morph(title, description, morph, isotope_count, dna, dna_count, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = is_game_active() &&
                  on_any_level() &&
                  cheat_protection([CHEAT_ALLMORPHS, CHEAT_ALLEXTRAMORPHS]) &&
                  morphstatus[morph] == 1 &&
                  isotopes() >= isotope_count &&
                  prev(dna) == dna_count - 1 && dna == dna_count
    )
}

function achievement_dna(title, description, count, total) {
    achievement(
        title = title,
        description = description,
        points = 10,
        trigger = is_game_active() &&
                  on_any_level() &&
                  prev(count) == total - 1 && measured(count == total)
    )
}

function achievement_gadget(title, description, gadget, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = is_game_active() &&
                  on_any_level() &&
                  never(gadgets[gadget] == 0) &&
                  measured(scrap[gadget] == 7) &&
                  once(prev(gadgets[gadget] == 0) && gadgets[gadget] == 1) &&
                  (discovery_ignore_prompt(PROMPT_UNLOCK) || discovery_open_menu(MENU_BLUEPRINTS, PROMPT_UNLOCK) || discovery_edgecases())
    )
}

function achievement_completionist(title, description, level, type=TYPE_NORMAL) {
    level_isotopes = totals[level][IDX_ISOTOPES]
    level_terra = totals[level][IDX_TERRA]
    level_dna = totals[level][IDX_DNA]
    player_isotopes = word(totals[level][IDX_ADDRESS])
    player_terra = byte(totals[level][IDX_ADDRESS] + 0x2)
    player_dna = byte(totals[level][IDX_ADDRESS] + 0x3)
    
    level_collectables = level_isotopes + level_terra + level_dna
    player_collectables = player_isotopes + player_terra + player_dna

    achievement(
        title = title,
        description = description,
        points = 10,
        type = type,
        trigger = is_game_active() &&
                  on_level(level) &&
                  prev(player_collectables) < level_collectables && measured(player_collectables == level_collectables)
    )
}

achievement(
    title = "Isotope Collector I",
    description = "Collect 15 isotopes to prevent the reactor from melting down",
    points = 1,
    type = TYPE_PROGRESSION,
    trigger = is_game_active() &&
              on_level(L_LAB) &&
              measured(isotopes() == 15) &&
              current_dialog_is("MBAL420M") &&
              prev(dialog_is_open()) && !dialog_is_open()
              
)

achievement_isotopes("Isotope Collector II", "Collect 100 isotopes", 100, 5, TYPE_PROGRESSION)
achievement_isotopes("Isotope Collector III", "Collect 1000 isotopes", 1000, 5, TYPE_PROGRESSION)
achievement_isotopes("Isotope Collector IV", "Collect 2184 isotopes", 2184, 10)

hydrostation_isotopes = totals[A_HYDROSTATION][IDX_ISOTOPES]
player_hydrostation_isotopes = word(totals[A_HYDROSTATION][IDX_ADDRESS])

achievement(
    title = "The Lost Isotopes",
    description = "Collect \"all\" 282 isotopes in the Hydro Station on Aqeum",
    points = 5,
    trigger = is_game_active() &&
              on_level(A_HYDROSTATION) &&
              prev(player_hydrostation_isotopes) < hydrostation_isotopes && measured(player_hydrostation_isotopes == hydrostation_isotopes)
)

achievement_isotopes("Isotope Collector V", "Collect 3784 isotopes", 3784, 10)
achievement_isotopes("Isotope Collector VI", "Collect all 4234 isotopes", 4234, 25, TYPE_MISSABLE)

achievement_terra("Terra Collector I", "Collect 1 terra", 1, 1)
achievement_terra("Terra Collector II", "Collect 23 terra", 23, 10)
achievement_terra("Terra Collector III", "Collect 51 terra", 51, 10)

// Note: AutoCR complains the trigger_when call compares a pointer to a value. It doesn't,
// but I think it's getting confused by us directly accessing an address in the middle of
// an array.
achievement(
    title = "Cut the Chains",
    description = "Complete Cut the Chains on Flotos without knocking down the steel girders",
    type = TYPE_MISSABLE,
    points = 5,
    trigger = is_game_active() &&
              on_level(F_FURNACES) &&
              girders_not_dropped() &&
              prev(dword(0x4119bc)) == 0x0 && trigger_when(dword(0x4119bc) == 0x4)
)

achievement_terra("Terra Collector IV", "Collect 79 terra", 79, 10)
achievement_terra("Terra Collector V", "Collect all 86 terra", 86, 25)

achievement(
    title = "Costume Achievement",
    description = "Collect a terra while wearing any secret costume",
    points = 1,
    trigger = is_game_active() &&
              on_any_level() &&
              prev(terra()) == terra() - 1 &&
              current_morph() == MORPH_DOC &&
              is_using_alternate_costume()
)

achievement_boss("Totltec Boss", "Defeat Vinny \"The Tool\" Bino in Vinny's Dump on Totltec", T_BOSS)

achievement(
    title = "Totltec Boss Challenge",
    description = "Defeat Vinny without using the Doczilla morph",
    points = 25,
    type = TYPE_MISSABLE,
    trigger = is_game_active() &&
              on_level(T_BOSS) &&
              cheat_protection([CHEAT_INVINCIBLE, CHEAT_NODAMAGE]) &&
              is_fighting_boss() &&
              !prev(is_boss_beaten()) && trigger_when(is_boss_beaten()) &&
              disable_when(prev(boss_health()) - boss_health() > 1, until=prev(is_reloading()) && !is_reloading())
)

achievement_boss("Aqeum Boss", "Defeat Carla \"Squid Kisser\" MacPhearson in Carla's Hole on Aqeum", A_BOSS)

achievement(
    title = "Aqeum Boss Challenge",
    description = "Defeat Carla using only spin attacks",
    points = 25,
    type = TYPE_MISSABLE,
    trigger = is_game_active() &&
              on_level(A_BOSS) &&
              cheat_protection([CHEAT_INVINCIBLE, CHEAT_NODAMAGE]) &&
              is_fighting_boss() &&
              !prev(is_boss_beaten()) && trigger_when(is_boss_beaten()) &&
              disable_when(prev(boss_health()) - boss_health() == 1, until=prev(is_reloading()) && !is_reloading())
)

achievement_boss("Flotos Boss", "Defeat Steele in Steele's Garage on Flotos", F_BOSS)
achievement_boss("Mazon Boss", "Defeat Burnital in Burnital's Lair on Mazon", M_BOSS)

function genitor_world() {
    return on_any_level() &&
           prev(genitor()) == 16 && measured(genitor() == 17, when=!is_any_video_playing()) &&
           disable_when(is_fighting_boss(), until=on_level(L_LAB))
}

function genitor_boss(level) {
    frame_trigger = bosses[level][IDX_GENITORFRAME]
    return between_levels() &&
           is_video_playing(bosses[level][IDX_VIDEOPATH]) &&
           !is_on_any_menu() &&
           prior(genitor()) == 16 && measured(genitor() == 17, when=is_game_active() && 
                                                                    prev(video_elapsed()) < frame_trigger && video_elapsed() >= frame_trigger &&
                                                                    video_path_equals(bosses[level][IDX_VIDEOPATH]))
}

achievement(
    title = "Genitor Collector",
    description = "Collect all 17 parts of the ACME Genitor 9000",
    points = 10,
    type = TYPE_PROGRESSION,
    trigger = is_game_active() &&
              (genitor_world() ||
               genitor_boss(T_BOSS) ||
               genitor_boss(A_BOSS) ||
               genitor_boss(F_BOSS) ||
               genitor_boss(M_BOSS))
)

achievement_ending("Normal End", "Activate the ACME Genitor 9000", ENDING_BAD)
achievement_ending("True End", "Activate the ACME Genitor 9000 after collecting at least 3400 isotopes", ENDING_GOOD)

achievement(
    title = "Mouse Morph I",
    description = "Receive the Gerbillus Doctorus morph formula from Al",
    points = 1,
    trigger = is_game_active() &&
              on_level(L_LAB) &&
              prev(morphstatus[MORPH_MOUSE]) == 0 && morphstatus[MORPH_MOUSE] == 1
)

achievement_extra_morph("Mouse Morph II", "Upgrade your Gerbillus Doctorus morph into the Rat morph", MORPH_MOUSE, 900, chark_dna(), 30, 3)
achievement_discovery("Gorilla Morph I", "Discover the Doczilla morph formula", 250, MENU_FORMULAS, 2)
achievement_morph("Gorilla Morph II", "Unlock the Doczilla morph", MORPH_GORILLA, 5)
achievement_extra_morph("Gorilla Morph III", "Upgrade your Doczilla morph into the Mech Gorilla morph", MORPH_GORILLA, 1200, tarfish_dna(), 30, 3)
achievement_discovery("Spider Morph I", "Discover the Arachnidoc morph formula", 450, MENU_FORMULAS, 2)
achievement_morph("Spider Morph II", "Unlock the Arachnidoc morph", MORPH_SPIDER, 5)
achievement_extra_morph("Spider Morph III", "Upgrade your Arachnidoc morph into the Roach morph", MORPH_SPIDER, 1800, peliqui_dna(), 30, 3)
achievement_discovery("Fish Morph I", "Discover the Spiny Docfish morph formula", 700, MENU_FORMULAS, 2)
achievement_morph("Fish Morph II", "Unlock the Spiny Docfish morph", MORPH_FISH, 5)
achievement_extra_morph("Fish Morph III", "Upgrade your Spiny Docfish morph into the Electric Eel morph", MORPH_FISH, 2400, airbag_dna(), 30, 3)
achievement_discovery("Squirrel Morph I", "Discover the Teradoctyl morph formula", 1400, MENU_FORMULAS, 2)
achievement_morph("Squirrel Morph II", "Unlock the Teradoctyl morph", MORPH_SQUIRREL, 5)
achievement_extra_morph("Squirrel Morph III", "Upgrade your Teradoctyl morph into the Bat morph", MORPH_SQUIRREL, 3200, bantra_dna(), 13, 3)

achievement_dna("Roach Collector", "Capture DNA from all 44 roaches", roach_dna(), 44)
achievement_dna("Fire Ant Collector", "Capture DNA from all 46 fire ants", fireant_dna(), 46)
achievement_dna("Monkey Collector", "Capture DNA from all 16 monkeys", monkey_dna(), 16)
achievement_dna("Chark Collector", "Capture DNA from all 39 charks", chark_dna(), 39)
achievement_dna("Tarfish Collector", "Capture DNA from all 40 tarfish", tarfish_dna(), 40)
achievement_dna("Airbag Collector", "Capture DNA from all 30 airbags", airbag_dna(), 30)
achievement_dna("Peliqui Collector", "Capture DNA from all 30 peliqui", peliqui_dna(), 30)
achievement_dna("Bantra Collector", "Capture DNA from all 13 bantra", bantra_dna(), 13)

achievement_discovery("Invisibility Gadget I", "Discover the blueprint for the Invisibility gadget", 65, MENU_BLUEPRINTS, 1)
achievement_gadget("Invisibility Gadget II", "Collect 7 Kloak Em scrap and unlock the Invisibility gadget", GADGET_INVISIBILITY, 5)
achievement_discovery("Pocket Rocket Gadget I", "Discover the blueprint for the Pocket Rocket gadget", 150, MENU_BLUEPRINTS, 1)
achievement_gadget("Pocket Rocket Gadget II", "Collect 7 Uberpowder scrap and unlock the Pocket Rocket gadget", GADGET_POCKETROCKET, 5)
achievement_discovery("Super Baller Gadget I", "Discover the blueprint for the Super Baller gadget", 375, MENU_BLUEPRINTS, 1)
achievement_gadget("Super Baller Gadget II", "Collect 7 Boing! scrap and unlock the Super Baller gadget", GADGET_SUPERBALLER, 5)

achievement(
    title = "Dev Mistake I",
    description = "Collect an 8th Boing! scrap",
    points = 1,
    type = TYPE_MISSABLE,
    trigger = is_game_active() &&
              on_level(F_JUPITERCITY) &&
              prev(scrap[GADGET_SUPERBALLER]) == 7 && scrap[GADGET_SUPERBALLER] == 8
              
)

achievement_discovery("Invulnerability Gadget I", "Discover the blueprint for the Invulnerability gadget", 600, MENU_BLUEPRINTS, 1)
achievement_gadget("Invulnerability Gadget II", "Collect 7 Renaline scrap and unlock the Invulnerability gadget", GADGET_INVULNERABILITY, 5)

achievement(
    title = "Health Collector",
    description = "Attempt to collect more than 20 health vials while already at 6 full hearts",
    points = 2,
    badge = "0",
    trigger = is_game_active() &&
              on_any_level() &&
              max_health() == 6 &&
              current_health() == max_health() &&
              health_vials() == 20 &&
              current_dialog_is("EDOC210M") &&
              prev(!dialog_is_open()) && dialog_is_open() &&
              disable_when(any_cheats_enabled([CHEAT_INVINCIBLE, CHEAT_NODAMAGE]), until=max_health() == 3 && health_vials() == 0)
              
)

achievement(
    title = "Toilet Humor",
    description = "Flush the toilet in the Lab",
    points = 0,
    trigger = is_game_active() &&
              on_level(L_LAB) &&
              splizz_target() != 0x0 &&
              object_name_is(splizz_target(), "switch_analog") &&
              prev(splizz_target_state()) == 0x0 &&
              splizz_target_state() == 0x80
              
)

achievement(
    title = "Dev Secret I",
    description = "Activate the Junkyard Dev Easter Egg",
    points = 1,
    trigger = is_game_active() &&
              on_level(T_JUNKYARD) &&
              current_dialog_is("SM1TA03M") &&
              prev(!dialog_is_open()) && dialog_is_open()
              
)

// NOTE: Using `prior()` on this isn't great because we're relying on the game
// to not re-use the memory the splizz_target was pointing to on the last frame.
// I haven't found a better way to detect the secret being triggered though.
achievement(
    title = "Dev Secret II",
    description = "Activate the Vats Dev Easter Egg",
    points = 1,
    trigger = is_game_active() &&
              on_level(T_VATS) &&
              object_name_is(prior(splizz_target()), "switch_splizz") &&
              prev(bit2(prior(splizz_target()) + 0x78)) == 0x0 &&
              bit2(prior(splizz_target()) + 0x78) == 0x1
              
)

function discovered_transloader_count() => dword(0x2c0630)
function last_discovered_transloader() => 0x2c0634 + (discovered_transloader_count() - 1) * 12

achievement(
    title = "Dev Mistake II",
    description = "Find the secret transloader on Flotos",
    points = 1,
    trigger = is_game_active() &&
              on_level(F_JUPITERCITY) &&
              prev(discovered_transloader_count()) == discovered_transloader_count() - 1 &&
              ascii_string_equals(last_discovered_transloader(), "DLRT2C4F")
)

achievement(
    title = "RA Fun",
    description = "Try to enable the RALIBRETRO cheat",
    points = 0,
    trigger = menu_is_open() && is_on_menu(MENU_CHEATS) &&
              !prev_entered_cheat_is("RALIBRETRO") && entered_cheat_is("RALIBRETRO")
)

achievement_completionist("Lab Completionist", "Collect all terra and isotopes in the Lab", L_LAB, TYPE_MISSABLE)
achievement_completionist("Junkyard Completionist", "Collect all terra, isotopes, and DNA in The Junkyard on Totltec", T_JUNKYARD, TYPE_MISSABLE)
achievement_completionist("Vats Completionist", "Collect all terra, isotopes, and DNA in The Vats on Totltec", T_VATS, TYPE_MISSABLE)
achievement_completionist("Factory Completionist", "Collect all terra, isotopes, and DNA in The Factory on Totltec", T_FACTORY)
achievement_completionist("Lagoon Completionist", "Collect all terra, isotopes, and DNA in The Lagoon on Aqeum", A_LAGOON)
achievement_completionist("Oil Rig Completionist", "Collect all terra, isotopes, and DNA in The Oil Rig on Aqeum", A_OILRIG)
achievement_completionist("Hydro Station Completionist", "Collect all terra, isotopes, and DNA in the Hydro Station on Aqeum", A_HYDROSTATION)
achievement_completionist("Water Works Completionist", "Collect all terra, isotopes, and DNA in the Water Works on Aqeum", A_WATERWORKS)
achievement_completionist("Sphere Completionist", "Collect all terra, isotopes, and DNA in The Sphere on Flotos", F_SPHERE, TYPE_MISSABLE)
achievement_completionist("Cube Completionist", "Collect all terra, isotopes, and DNA in The Cube on Flotos", F_CUBE, TYPE_MISSABLE)
achievement_completionist("Furnaces Completionist", "Collect all terra, isotopes, and DNA in The Furnaces on Flotos", F_FURNACES, TYPE_MISSABLE)
achievement_completionist("Jupiter City Completionist", "Collect all terra, isotopes, and DNA in Jupiter City on Flotos", F_JUPITERCITY, TYPE_MISSABLE)
achievement_completionist("Workshop Completionist", "Collect all terra, isotopes, and DNA in The Workshop on Mazon", M_WORKSHOP)

function start_boss_leaderboard(bosslevel) {
    return is_game_active() &&
           on_level(bosslevel) &&
           is_fighting_boss() &&
           prev(!cutscene_blocked_control()) && cutscene_blocked_control()
}

function cancel_boss_leaderboard(bosslevel) {
    return any_cheats_enabled([CHEAT_INVINCIBLE, CHEAT_NODAMAGE]) ||
           is_on_menu(MENU_TITLE)
}

function submit_boss_leaderboard(bosslevel) {
    return prev(!is_boss_beaten()) && is_boss_beaten()
}

function value_boss_leaderboard() {
    return unless(is_on_any_menu() || is_reloading()) && measured(tally(0, always_true()))
}

function leaderboard_boss(title, description, bosslevel) {
    leaderboard(
        title = title,
        description = description,
        start  = start_boss_leaderboard(bosslevel),
        cancel = cancel_boss_leaderboard(bosslevel),
        submit = submit_boss_leaderboard(bosslevel),
        value  = value_boss_leaderboard(),
        format = "FRAMES",
        lower_is_better = true
    )
}

leaderboard_boss("Beat Vinny", "Beat Vinny in the fastest time", T_BOSS)
leaderboard_boss("Beat Carla", "Beat Carla in the fastest time", A_BOSS)
leaderboard_boss("Beat Steele", "Beat Steele in the fastest time", F_BOSS)
leaderboard_boss("Beat Burnital", "Beat Burnital in the fastest time", M_BOSS)

RPPlanets = {
    "lab": "in the Lab",
    "totltec": "on Totltec",
    "aqeum": "on Aqeum",
    "flotos": "on Flotos",
    "mazon": "on Mazon"
}

RPMorphs = {
    MORPH_DOC: "🧑‍⚕️",
    MORPH_MOUSE: "🐁",
    MORPH_GORILLA: "🦍",
    MORPH_FISH: "🐟",
    MORPH_SQUIRREL: "🐿️",
    MORPH_SPIDER: "🕷️",
    MORPH_FLY: "🪰",
}

RPAreas = {
    L_LABRED: "Preventing a meltdown",
    L_LAB: "Wasting time",
    T_JUNKYARD: "Rumaging through The Junkyard",
    T_VATS: "Draining The Vats",
    T_FACTORY: "Disrupting production in The Factory",
    T_BOSS: "Teaching Vinny a lesson",
    A_LAGOON: "Bobbing along in The Lagoon",
    A_OILRIG: "Sabotaging The Oil Rig",
    A_HYDROSTATION: "Hugging cave walls in the Hydro Station",
    A_WATERWORKS: "Overloading turbines in the Water Works",
    A_BOSS: "Playing in Carla's pond",
    F_SPHERE: "Reversing goomidification in The Sphere",
    F_CUBE: "Flying circles around The Cube",
    F_FURNACES: "Executing cool moves in The Furnaces",
    F_JUPITERCITY: "Chasing drones around Jupiter City",
    //F_BOSS: "Infesting Steele's ship with fleas", // Because F_BOSS has the same prefix as F_JUPITERCITY, we need to use a conditional display for it
    M_WORKSHOP: "Electrifying minions in The Workshop",
    M_BOSS: "Preparing to feel Burnital's wrath",
}

rp_area = rich_presence_ascii_string_lookup("Area", area_id(), RPAreas)
rp_planet = rich_presence_ascii_string_lookup("Planet", planet_name(), RPPlanets, fallback="somewhere they're not supposed to be")
rp_morph = rich_presence_lookup("Morph", current_morph(), RPMorphs, fallback="👨‍⚕️")
rp_terra = rich_presence_value("Terra", terra(), "VALUE")
rp_isotopes = rich_presence_value("Isotopes", isotopes(), "VALUE")
rp_genitor = rich_presence_value("Genitor", genitor(), "VALUE")
rp_dna = rich_presence_value("Dna", dna(), "VALUE")

// Ending 1
// Ending 2

rich_presence_conditional_display(is_on_menu_set(TITLE_MENUS), "Admiring the Title Screen")
// on_any_level() on these protects from being on the title screen after good ending
rich_presence_conditional_display(is_game_active() && on_any_level() && is_on_menu_set(OPTIONS_MENUS), "Tweaking settings {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_game_active() && on_any_level() && is_on_menu(MENU_CHEATS), "Thinking about being naughty {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_game_active() && on_any_level() && is_on_menu(MENU_PAUSE), "Taking a break {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_game_active() && on_any_level() && is_on_menu_set(COLLECTION_MENUS), "Organizing their collectables {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_on_menu_set(OPTIONS_MENUS), "Tweaking settings")
rich_presence_conditional_display(is_on_menu(MENU_CHEATS), "Thinking about being naughty")
rich_presence_conditional_display(is_on_menu_set(MOVIES_MENUS), "Watching a movie")
rich_presence_conditional_display(is_on_menu(MENU_CREDITS), "Honoring some awesome people!")
rich_presence_conditional_display(is_on_menu_set(LOADING_MENUS), "Picking up where they left off")
rich_presence_conditional_display(is_on_menu_set(SAVING_MENUS), "Recording their progress {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_video_playing(VIDEO_START), "Brainstorming a solution {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_reloading(), "Learning from their mistakes {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(is_loading(), "Transloading | {0} | 🌎 {1}/86 ⚛️ {2}/4232 🛰 {3}/17 🧬 {4}/258", rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)
rich_presence_conditional_display(on_level(F_BOSS), "Infesting Steele's ship with fleas {0} | {1} | 🌎 {2}/86 ⚛️ {3}/4232 🛰 {4}/17 🧬 {5}/258", rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)

rich_presence_display("{0} {1} | {2} | 🌎 {3}/86 ⚛️ {4}/4232 🛰 {5}/17 🧬 {6}/258", rp_area, rp_planet, rp_morph, rp_terra, rp_isotopes, rp_genitor, rp_dna)