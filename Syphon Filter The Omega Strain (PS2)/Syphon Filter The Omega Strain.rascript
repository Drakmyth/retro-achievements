// Syphon Filter: The Omega Strain
// #ID = 19121
// #MinimumVersion = 1.3.1

M_CARTHAGE1 = 0x00
M_CARTHAGE2 = 0x01
M_CARTHAGE3 = 0x02
M_ITALY = 0x03
M_BELARUS1 = 0x04
M_BELARUS2 = 0x05
M_KYRGYSTAN = 0x06
M_YEMEN1 = 0x07
M_YEMEN2 = 0x08
M_MINSK = 0x09
M_CHECHNYA = 0x0a
M_LORELEI = 0x0b
M_TOKYO = 0x0c
M_MYANMAR = 0x0d
M_ZURICH = 0x0e
M_MONTENEGRO = 0x0f
M_UKRAINE = 0x10
M_TRAINING = 0x11
M_ALL = [
    M_CARTHAGE1, M_CARTHAGE2, M_CARTHAGE3, M_ITALY,
    M_BELARUS1, M_BELARUS2, M_KYRGYSTAN,
    M_YEMEN1, M_YEMEN2, M_MINSK, M_CHECHNYA,
    M_LORELEI, M_TOKYO, M_MYANMAR, M_ZURICH, M_MONTENEGRO,
    M_UKRAINE, M_TRAINING
]
M_MULTIPLAYER = [
    M_CARTHAGE1, M_CARTHAGE2, M_CARTHAGE3,
    M_BELARUS1, M_BELARUS2,
    M_YEMEN2, M_TOKYO, M_MYANMAR, M_UKRAINE
]
M_NEED_TEAM = [
    M_CARTHAGE1, M_CARTHAGE3,
    M_BELARUS1, M_BELARUS2,
    M_YEMEN2, M_MYANMAR, M_UKRAINE
]
M_SOLO_TEAM = [
    M_CARTHAGE3, M_YEMEN2
]
M_BONUS = [
    M_ITALY, M_KYRGYSTAN, M_CHECHNYA, M_MONTENEGRO
]
M_HIDDEN_OBJ = [
    M_CARTHAGE2, M_BELARUS2, M_KYRGYSTAN,
    M_YEMEN1, M_ZURICH, M_MONTENEGRO
]

TYPE_NORMAL = ""
TYPE_MISSABLE = "missable"
TYPE_PROGRESSION = "progression"
TYPE_WIN = "win_condition"

SCENE_IN_MISSION = 0x0f
SCENE_EQUIPMENT_SELECT = 0x12
SCENE_FADE_OUT = 0x13
SCENE_SUMMARY = 0x14

OBJ_INCOMPLETE = 0x00
OBJ_COMPLETE = 0x01
OBJ_FAILED = 0x02

IDX_SLUG = 0
IDX_PAR = 1
IDX_NAME = 2
IDX_TITLE_SLUG = 3
IDX_NUM_OBJS = 4

// mission: [slug, par, name, title_slug, num_objectives]
missions = {
    M_CARTHAGE1: ["CARTHAGE1", 11, "Carthage, Michigan: Quarantine Zone", "Carthage 1", 8],
    M_CARTHAGE2: ["CARTHAGE2", 8, "Carthage, Michigan: Warehouse District", "Carthage 2", 10],
    M_CARTHAGE3: ["CARTHAGE3", 5, "Carthage, Michigan: Carthage Mall", "Carthage 3", 5],
    M_ITALY: ["ITALY", 7, "Pescara, Italy: St. Cetteo Square", "Italy", 4],
    M_BELARUS1: ["BELARUS1", 18, "Mazyr, Belarus: Krivorozhstal Mill", "Belarus 1", 10],
    M_BELARUS2: ["BELARUS2", 15, "Mazyr, Belarus: Belaya Vezha", "Belarus 2", 12],
    M_KYRGYSTAN: ["KYRGSTAN", 13, "Tash, Kumyr, Kyrgystan: Saydahmat's Village", "Kyrgystan", 14],
    M_YEMEN1: ["YEMEN1", 18, "Sana'a, Yemen: Arms Bazaar", "Yemen 1", 13],
    M_YEMEN2: ["YEMEN2", 17, "Sana'a, Yemen: Taherir Palace", "Yemen 2", 7],
    M_MINSK: ["MINSK", 10, "Minsk, Belarus: International University", "Minsk", 12],
    M_CHECHNYA: ["CHECHNYA", 12, "Samashki, Chechnya: Ivankov's Home", "Chechnya", 12],
    M_LORELEI: ["LORELEI", 28, "North Atlantic: Lorelei Salvage Rig", "Lorelei", 16],
    M_TOKYO: ["TOKYO", 15, "Tokyo, Japan: Murakawa Tower", "Tokyo", 12],
    M_MYANMAR: ["MYANMAR", 20, "Taguang, Myanmar: Irawaddy Basin", "Myanmar", 14],
    M_ZURICH: ["ZURICH", 18, "Zurich, Switzerland: Niculescu Funds Tower", "Zurich", 13],
    M_MONTENEGRO: ["MNTNEGR", 10, "Budva, Montenegro: Niculescu's Villa Estate", "Montenegro", 5],
    M_UKRAINE: ["UKRAINE", 25, "Kiev, Ukraine: Chechen Terrorist Base", "Ukraine", 7],
    M_TRAINING: ["TRAINING", 3, "IPCA European Command: Training Center", "Training", 7],
}

RANK_R3 = 0x02
RANK_O9 = 0x0b
RANK_C6 = 0x11
RANK_T4 = 0x15

IDX_RANK_NUM = 0
IDX_RANK_NAME = 1

// rank: [rank_num, rank_name]
ranks = {
    RANK_R3: ["R3", "Intelligence Agent"],
    RANK_O9: ["O9", "Intelligence Analyst Specialist"],
    RANK_C6: ["C6", "Intelligence Operations Commander"],
    RANK_T4: ["T4", "Commander in Chief"]
}

RATING_KILLS = 0
RATING_KNIVES = 1
RATING_HEADSHOTS = 2
RATING_NON_LETHAL = 3
RATING_EXPLOSIVES = 4

IDX_RATING_TITLE = 0
TIER1 = 1
TIER2 = 2
TIER3 = 3
TIER4 = 4
IDX_PREFIX = 5
IDX_SUFFIX = 6
IDX_OFFSET = 7

// rating: [title, tier1, tier2, tier3, tier4, prefix, suffix]
ratings = {
    RATING_KILLS: ["Combat Specialist", 300, 600, 900, 1300, "Kill ", " targets", 0x08],
    RATING_KNIVES: ["Combat Knife Specialist", 50, 100, 250, 450, "Kill ", " targets with knives", 0x0c],
    RATING_HEADSHOTS: ["Combat Sharp Shooter", 200, 450, 750, 1100, "Kill ", " targets with headshots", 0x10],
    RATING_NON_LETHAL: ["Non-Lethal Force Specialist", 50, 100, 200, 350, "Use non-lethal force to take down ", " targets", 0x20],
    RATING_EXPLOSIVES: ["Tactical Explosives Specialist", 100, 200, 350, 500, "Kill ", " targets with explosives", 0x18]
}

tiers = ["", "Intermediate", "Advanced", "Expert", "Elite"]

AWARD_SRATINGS = 0
AWARD_COMMENDATIONS = 1
AWARD_MEDALS = 2

IDX_AWARD_NAME = 0
IDX_COUNT = 1
IDX_ARRAY_OFFSET = 2

// award_type: [name, count, array_offset]
awards = {
    AWARD_SRATINGS: ["Special Agency Ratings", 8, 0xab0],
    AWARD_COMMENDATIONS: ["Commendations", 8, 0xac0],
    AWARD_MEDALS: ["Medals", 15, 0xad0]
}

// mission: objective_index
solo_team_objs = {
    M_CARTHAGE3: 1,
    M_YEMEN2: 6
}

// mission: [...objective_indices]
hidden_objs = {
    M_CARTHAGE2: [7],
    M_BELARUS2: [8],
    M_KYRGYSTAN: [13, 14],
    M_YEMEN1: [8, 9],
    M_ZURICH: [9, 10],
    M_MONTENEGRO: [4]
}

bonus_unlock_reqs = {
    M_ITALY: [M_CARTHAGE1, M_CARTHAGE2, M_CARTHAGE3],
    M_KYRGYSTAN: [M_BELARUS1, M_BELARUS2],
    M_CHECHNYA: [M_YEMEN1, M_YEMEN2, M_MINSK],
    M_MONTENEGRO: [M_LORELEI, M_TOKYO, M_MYANMAR, M_ZURICH]
}

TASER_IDLE = 0x00
TASER_EXTEND = 0x01
TASER_ATTACH = 0x02
TASER_RETRACT = 0x03

TASER_RELEASE = 0
TASER_INCAP = 1
TASER_KILL = 2

END_SUCCESS = 0x00
END_QUIT = 0x02
END_ERROR = 0x03

SLOT_SIDEARM = 0x00
SLOT_BACK = 0x02
SLOT_AUX = 0x03
SLOT_GRENADE = 0x04
SLOT_MELEE = 0x05
SLOT_HANDS = 0x06
SLOT_WEAPONS = [SLOT_SIDEARM, SLOT_BACK, SLOT_AUX, SLOT_GRENADE, SLOT_MELEE]

WEAPON_AIR_PISTOL = 0x20

GOBJ_TOKYO_BEER_KEG = 0x1614cc

player_mgr_ptr = dword(0x4ffc0c)
player_ptr = dword(player_mgr_ptr + 0x30)
player_index = dword(0x4ffd28)
player_stats_ptr = dword(0x4ffd18 + (player_index * 4))
mission_ptr = dword(0x4ffc2c)
mission_stats_ptr = dword(player_stats_ptr + 0xcc)
rank_object_ptr = dword(player_stats_ptr + 0xb50)
objective_mgr_ptr = dword(dword(dword(dword(dword(0x4ffb78) + 0x4) + 0x4) + 0x4) + 0x8)
omega_array_ptr = dword(dword(player_stats_ptr + 0xaf0) + 0x0c)
zeus_array_ptr = player_stats_ptr + 0xdc
objective_state_ptr = player_stats_ptr + 0x84
player_inventory_ptr = dword(player_ptr + 0x3524)
taser_mgr_ptr = dword(player_inventory_ptr + 0x00)
active_interaction_ptr = dword(player_ptr + 0x3474)
active_interaction_gobj_ptr = dword(active_interaction_ptr + 0xa8)
script_variable_registry_ptr = dword(0x554f18)
script_variable_array_ptr = dword(script_variable_registry_ptr + 0x08)
workers_dead_ptr = dword(dword(script_variable_array_ptr + 0x27c) + 0x0c)
workers_saved_ptr = dword(dword(script_variable_array_ptr + 0x280) + 0x0c)
beer_crouches_ptr = dword(dword(script_variable_array_ptr + 0x390) + 0x0c)
function game_mode() => byte(0x5721c8)
function current_scene() => byte(0x4ffba0)
function current_mission() => dword(0x494198)
function mission_end_state() => byte(0x4ffd15) + (byte(0x4ffd14) * 2) // No <<, so we have to + instead of |
function player_health() => float(player_ptr + 0x40)
function player_health_max() => dword(player_ptr + 0x3398)
function player_rank() => dword(rank_object_ptr + 0x4)
function player_rating(rating) => dword(player_stats_ptr + ratings[rating][IDX_OFFSET])
function player_best_solo_time(mission) => dword(mission_stats_ptr + (mission * 32))
function player_best_team_time(mission) => dword(mission_stats_ptr + (mission * 32) + 0x4)
function player_weapon_slot(slot) => dword(player_inventory_ptr + (slot * 0x10) + 0x8)
function player_selected_weapon() => player_weapon_slot(byte(player_inventory_ptr + 0x84))
function mission_collateral() => dword(player_stats_ptr + 0x6c)
function mission_deaths() => dword(player_stats_ptr + 0x70)
function mission_kills() => dword(player_stats_ptr + 0x50)
function mission_knives() => dword(player_stats_ptr + 0x54)
function mission_headshots() => dword(player_stats_ptr + 0x58)
function mission_non_lethal() => dword(player_stats_ptr + 0x68)
function mission_explosives() => dword(player_stats_ptr + 0x60)
function mission_shots() => dword(player_stats_ptr + 0x74)
function mission_marksmanship() => (dword(player_stats_ptr + 0x80) * 1.0) / (dword(player_stats_ptr + 0x7c) * 1.0)
function mission_efficiency() => (dword(player_stats_ptr + 0x78) * 1.0) / (dword(player_stats_ptr + 0x74) * 1.0)
function mission_timer() => float(mission_ptr + 0x6dc)
function mission_success() => byte(player_stats_ptr + 0xb71)
function active_interaction_gobj() => dword(active_interaction_gobj_ptr + 0x0c)
function taser_state() => byte(taser_mgr_ptr + 0x08)
function taser_target() => dword(taser_mgr_ptr + 0x2c)
function taser_past_incap_threshold() => byte(taser_mgr_ptr + 0xbd) == 0x01
function taser_past_kill_threshold() => byte(taser_mgr_ptr + 0xbc) == 0x01
function workers_dead() => float(workers_dead_ptr)
function workers_saved() => float(workers_saved_ptr)
function beer_crouches() => float(beer_crouches_ptr)
function mission_solo_par(mission) {
    // Training doesn't have a defined solo par, so we make one up
    if (mission == M_TRAINING)
        return 180 // 3 Minutes

    return dword(mission_stats_ptr + (mission * 32) + 0x08)
}
function mission_team_par(mission) => dword(mission_stats_ptr + (mission * 32) + 0x0c)
function solo_objective_range(mission) {
    end_index = missions[mission][IDX_NUM_OBJS] - 1
    if (array_contains(M_NEED_TEAM, mission) && !array_contains(M_SOLO_TEAM, mission)) {
        end_index = end_index - 1
    }
    return range(0, end_index)
}
function objective_status(index) => byte(dword(objective_mgr_ptr + 0x130 + (index * 4)) + 0x24)
function is_objective_failed(mission, index) {
    if (array_contains(M_SOLO_TEAM, mission) && index == solo_team_objs[mission]) {
        return always_false()
    }

    return objective_status(index) == 0x02
}
function is_under_par(mission) {
    return is_mission(mission) &&
           mission_timer() < mission_solo_par(mission) &&
           never(
               is_mission(mission) &&
               mission_timer() > mission_solo_par(mission)
           )
}
function zeus_file_count() => dword(player_stats_ptr + 0xd8)
function any_objectives_failed(mission) => any_of(solo_objective_range(mission), index => is_objective_failed(mission, index))
function is_scene(scene) => current_scene() == scene
function is_scene_any_of(scenes) => __ornext(any_of(scenes, scene => is_scene(scene)))
function is_mission(mission) => current_mission() == mission
function is_singleplayer() => game_mode() == 0x00
function is_multiplayer() => game_mode() == 0x01
function is_mission_end_state(state) => mission_end_state() == state
function num_complete_awards(award) => sum_of(range(0, awards[award][IDX_COUNT] - 1), index => byte(dword(player_stats_ptr + awards[award][IDX_ARRAY_OFFSET]) + (index * 20)))
// Integer division on omega_array_ptr bytes effectively treats 0x00 and 0x01 as 0x00, and 0x02 as 0x01
function num_complete_omega() => sum_of(range(0, 9), index => byte(omega_array_ptr + index) / 2)
function on_mission_end() => is_scene(SCENE_FADE_OUT) && prev(is_scene(SCENE_IN_MISSION))
function on_mission_success() => mission_success() == 0x01 && prev(mission_success()) == 0x00
function taser_has_target() => taser_target() != 0x00
function is_taser_state(state) => taser_state() == state
function is_taser_outcome(outcome) {
    if (outcome == TASER_RELEASE) return !taser_past_incap_threshold() && !taser_past_kill_threshold()
    if (outcome == TASER_INCAP) return taser_past_incap_threshold() && !taser_past_kill_threshold()
    if (outcome == TASER_KILL) return taser_past_incap_threshold() && taser_past_kill_threshold()
    return always_false()
}

function achievement_mission(mission, title, points, type=TYPE_PROGRESSION) {
    bonus = ""
    if (array_contains(M_BONUS, mission)) {
        bonus = " bonus"
    }

    achievement(
        title = title,
        description = "Complete the " + missions[mission][IDX_NAME] + bonus + " mission",
        points = points,
        type = type,
        trigger = is_mission(mission) &&
                  on_mission_end() &&
                  is_mission_end_state(END_SUCCESS)
    )    
}

function achievement_unlock_bonus(mission, title, points) {
    achievement(
        title = title,
        description = "Unlock the " + missions[mission][IDX_NAME] + " bonus mission",
        points = points,
        type = TYPE_NORMAL,
        trigger = all_of(bonus_unlock_reqs[mission], req =>
                      player_best_solo_time(req) != -1 &&
                      mission_solo_par(req) >= player_best_solo_time(req)
                  ) &&
                  any_of(bonus_unlock_reqs[mission], req =>
                      prev(player_best_solo_time(req)) == -1 ||
                      mission_solo_par(req) < prev(player_best_solo_time(req))
                  )
    )
}

function achievement_rank(rank, title, points) {
    rank_num = ranks[rank][IDX_RANK_NUM]
    rank_name = ranks[rank][IDX_RANK_NAME]
    
    or_higher = ""
    if (rank < RANK_T4) {
        or_higher = " or higher"
    }
    
    description = "Reach Rank " + rank_num + " - " + rank_name + or_higher
    
    achievement(
        title = title,
        description = description,
        points = points,
        type = TYPE_NORMAL,
        trigger = is_scene(SCENE_FADE_OUT) &&
                  measured(player_rank() >= rank) &&
                  prev(player_rank()) < rank
    )
}

function achievement_rating(rating, tier, points) {
    title = tiers[tier] + " " + ratings[rating][IDX_RATING_TITLE]
    description = ratings[rating][IDX_PREFIX] + ratings[rating][tier] + ratings[rating][IDX_SUFFIX]

    achievement(
        title = title,
        description = description,
        points = points,
        type = TYPE_NORMAL,
        trigger = is_scene(SCENE_IN_MISSION) &&
                  measured(player_rating(rating) >= ratings[rating][tier]) &&
                  prev(player_rating(rating)) < ratings[rating][tier]
    )
}

function achievement_award(award, title, points) {
    achievement(
        title = title,
        description = "Earn all of the " + awards[award][IDX_AWARD_NAME],
        points = points,
        type = TYPE_NORMAL,
        trigger = is_scene(SCENE_FADE_OUT) &&
                  measured(num_complete_awards(award) == awards[award][IDX_COUNT]) &&
                  prev(num_complete_awards(award) < awards[award][IDX_COUNT])
    )
}

function achievement_bythebook(mission, points) {
    obj_count = missions[mission][IDX_NUM_OBJS]
    solo_obj_count = obj_count
    
    obj_type = ""
    if (array_contains(M_NEED_TEAM, mission)) {
        obj_type = " non-team"
        solo_obj_count = obj_count - 1
    }
    
    game_mode = ""
    if (array_contains(M_MULTIPLAYER, mission)) {
        game_mode = " solo"
    }
    
    par = missions[mission][IDX_PAR]
    slug = missions[mission][IDX_SLUG]
    
    description = "Complete all " + solo_obj_count + obj_type + " objectives" + game_mode + " in " + slug + " in under " + par + ":00 with full health, no deaths, and no collateral damage"
    
    achievement(
        title = "By the Book: " + missions[mission][IDX_TITLE_SLUG],
        description = description,
        points = points,
        type = TYPE_NORMAL,
        trigger = is_mission(mission) &&
                  is_scene_any_of([SCENE_IN_MISSION, SCENE_FADE_OUT]) &&
                  trigger_when(on_mission_success()) &&
                  is_mission_end_state(END_SUCCESS) &&
                  is_singleplayer() &&
                  is_under_par(mission) &&
                  player_health() == player_health_max() &&
                  mission_deaths() == 0 &&
                  mission_collateral() == 0 &&
                  !any_objectives_failed(mission)
    )
}

achievement_mission(M_TRAINING, "Prove Me Wrong", 5, TYPE_NORMAL)
achievement_mission(M_CARTHAGE1, "No One Dies on My Watch", 5)
achievement_mission(M_CARTHAGE2, "Innocents Die Every Day", 5)
achievement_mission(M_CARTHAGE3, "A Carthage Welcome", 5)
achievement_unlock_bonus(M_ITALY, "Stone's Trade", 5)
achievement_mission(M_ITALY, "Just Say Whack 'Em", 5, TYPE_NORMAL)
achievement_mission(M_BELARUS1, "A Nice Friendly Interview", 5)
achievement_mission(M_BELARUS2, "In for a Little Chop", 5)
achievement_unlock_bonus(M_KYRGYSTAN, "Lian's Gambit", 5)
achievement_mission(M_KYRGYSTAN, "More Than They Bargained For", 5, TYPE_NORMAL)
achievement_mission(M_YEMEN1, "Don't Trust the Infidels", 5)
achievement_mission(M_YEMEN2, "Play the Tourist!", 5)
achievement_mission(M_MINSK, "About Bloody Time", 5)
achievement_unlock_bonus(M_CHECHNYA, "Mujari's Conscience", 5)
achievement_mission(M_CHECHNYA, "A Limited Palette", 5, TYPE_NORMAL)
achievement_mission(M_LORELEI, "Might Get Rough", 5)
achievement_mission(M_TOKYO, "Shake and Bake", 5)
achievement_mission(M_MYANMAR, "A Coin Toss", 5)
achievement_mission(M_ZURICH, "Who Said Anything About Zurich?", 5)
achievement_unlock_bonus(M_MONTENEGRO, "Logan's Shadow", 5)
achievement_mission(M_MONTENEGRO, "One Last Gamble", 5, TYPE_NORMAL)
achievement_mission(M_UKRAINE, "For the Cause!", 5, TYPE_WIN)

achievement_rank(RANK_R3, "Star Recruit", 5)
achievement_rank(RANK_O9, "Officer's Club", 5)
achievement_rank(RANK_C6, "Command Performance", 5)
achievement_rank(RANK_T4, "Top Brass", 5)

achievement_rating(RATING_KILLS, TIER1, 5)
achievement_rating(RATING_KILLS, TIER2, 5)
achievement_rating(RATING_KILLS, TIER3, 5)
achievement_rating(RATING_KILLS, TIER4, 5)
achievement_rating(RATING_KNIVES, TIER1, 5)
achievement_rating(RATING_KNIVES, TIER2, 5)
achievement_rating(RATING_KNIVES, TIER3, 5)
achievement_rating(RATING_KNIVES, TIER4, 5)
achievement_rating(RATING_HEADSHOTS, TIER1, 5)
achievement_rating(RATING_HEADSHOTS, TIER2, 5)
achievement_rating(RATING_HEADSHOTS, TIER3, 5)
achievement_rating(RATING_HEADSHOTS, TIER4, 5)
achievement_rating(RATING_NON_LETHAL, TIER1, 5)
achievement_rating(RATING_NON_LETHAL, TIER2, 5)
achievement_rating(RATING_NON_LETHAL, TIER3, 5)
achievement_rating(RATING_NON_LETHAL, TIER4, 5)
achievement_rating(RATING_EXPLOSIVES, TIER1, 5)
achievement_rating(RATING_EXPLOSIVES, TIER2, 5)
achievement_rating(RATING_EXPLOSIVES, TIER3, 5)
achievement_rating(RATING_EXPLOSIVES, TIER4, 5)

achievement_award(AWARD_SRATINGS, "One of the Elite", 5)
achievement_award(AWARD_COMMENDATIONS, "Permanent Record", 5)
achievement_award(AWARD_MEDALS, "Beyond the Call", 5)

achievement(
    title = "The Cure Is Working",
    description = "Cure the Omega Strain",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_scene(SCENE_FADE_OUT) &&
              measured(num_complete_omega() == 10, format="percent") &&
              prev(num_complete_omega() < 10)
)

function all_zeus_objectives_complete(base_addr_resolver) {
    masks = [0xcb7d5dbe, 0x805a5369, 0x2c4ec420, 0x1429214b, 0x5a89da50, 0x6c61c046]

    complete = always_true()
    for offset in range(0, 5) {
        addr = objective_state_ptr + (0x04 * offset)
        complete = complete && base_addr_resolver(addr) & masks[offset] == masks[offset]
    }
    
    return complete
}

achievement(
    title = "Zeus Declassified",
    description = "Unlock all the Zeus Files",
    points = 5,
    type = TYPE_NORMAL,
    trigger = all_zeus_objectives_complete(dword) &&
              !all_zeus_objectives_complete(addr => prev(dword(addr)))
)

function no_failed_pinnacle_requirements() {
    return any_of(M_ALL, mission =>
        is_mission(mission) &&
        is_under_par(mission) &&
        mission_kills() >= 25 &&
        mission_knives() >= 5 &&
        mission_headshots() >= 5 &&
        mission_non_lethal() >= 5 &&
        mission_explosives() >= 5 &&
        mission_marksmanship() >= 0.5 &&
        mission_efficiency() >= 0.5 &&
        !any_objectives_failed(mission)
    )
}

achievement(
    title = "The Pinnacle Challenge",
    description = "Complete any mission solo under par with at least 25 kills including at least 5 knife kills, 5 headshots, 5 non-lethal takedowns, 5 explosives kills, and maintaining marksmanship and efficiency scores of at least 50%",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_scene_any_of([SCENE_IN_MISSION, SCENE_FADE_OUT]) &&
              trigger_when(on_mission_success()) &&
              is_mission_end_state(END_SUCCESS) &&
              is_singleplayer() &&
              no_failed_pinnacle_requirements()
)

function on_objective_revealed(mission, index) {
    return objective_status(index) != 0x00 &&
           prev(objective_status(index)) == 0x00
}

achievement(
    title = "Need to Know",
    description = "Discover a hidden objective",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_scene(SCENE_IN_MISSION) &&
              any_of(M_HIDDEN_OBJ, mission =>
                  is_mission(mission) &&
                  any_of(hidden_objs[mission], index =>
                      on_objective_revealed(mission, index) // TODO: This can be done by anyone on the team in multiplayer
                  )
              )
)

achievement(
    title = "Know When to Let Go",
    description = "Incapacitate a target with a taser without killing them",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_scene(SCENE_IN_MISSION) &&
              taser_has_target() &&
              is_taser_outcome(TASER_INCAP) &&
              is_taser_state(TASER_RETRACT) &&
              prev(is_taser_state(TASER_ATTACH))
)

function all_weapon_slots_empty() => all_of(SLOT_WEAPONS, slot => player_weapon_slot(slot) == 0xffffffff)

achievement(
    title = "On-Site Procurement",
    description = "Complete any mission other than TRAINING solo under par with an empty initial loadout",
    points = 5,
    type = TYPE_NORMAL,
    trigger = never(!is_scene_any_of([SCENE_IN_MISSION, SCENE_FADE_OUT])) &&
              trigger_when(on_mission_success()) &&
              is_mission_end_state(END_SUCCESS) &&
              is_singleplayer() &&
              once(
                  is_scene(SCENE_IN_MISSION) &&
                  prev(is_scene(SCENE_EQUIPMENT_SELECT)) &&
                  all_weapon_slots_empty()
              ) &&
              any_of(range(M_CARTHAGE1, M_UKRAINE), mission => is_under_par(mission))
)

achievement(
    title = "Team Objective?",
    description = "Rescue the SWAT officers in CARTHAGE3 while playing solo",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_scene(SCENE_IN_MISSION) &&
              is_mission(M_CARTHAGE3) &&
              is_singleplayer() &&
              trigger_when(objective_status(1) == OBJ_COMPLETE &&
              prev(objective_status(1)) == OBJ_INCOMPLETE) &&
              never(objective_status(1) == OBJ_FAILED)
)

achievement(
    title = "Nice and Quiet",
    description = "Kill all 16 targets and complete the mission in ITALY",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_mission(M_ITALY) &&
              trigger_when(on_mission_end()) &&
              is_mission_end_state(END_SUCCESS) &&
              measured(mission_kills() >= 16)
)

function workers_started_despawning() => workers_saved() > 0 && prev(workers_saved()) == 0

achievement(
    title = "All Aboard",
    description = "Take all 7 workers down the elevator together in BELARUS1",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_mission(M_BELARUS1) &&
              is_scene(SCENE_IN_MISSION) &&
              workers_dead() == 0 &&
              trigger_when(once(workers_started_despawning()) && workers_saved() >= 7) &&
              disable_when(
                  repeated(30, workers_saved() > 0 && workers_saved() < 7),
                  until = !is_mission(M_BELARUS1) || !is_scene(SCENE_IN_MISSION)
              )
)

achievement(
    title = "Keep to the Shadows",
    description = "Kill all 23 targets and complete the mission in KYRGSTAN",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_mission(M_KYRGYSTAN) &&
              trigger_when(on_mission_end()) &&
              is_mission_end_state(END_SUCCESS) &&
              measured(mission_kills() >= 23)
)

achievement(
    title = "A Terrible Headache",
    description = "Complete CHECHNYA with all 25 targets incapacitated without using the Air Pistol",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_mission(M_CHECHNYA) &&
              trigger_when(on_mission_end()) &&
              is_mission_end_state(END_SUCCESS) &&
              measured(mission_non_lethal() >= 25) &&
              never(
                  is_scene(SCENE_IN_MISSION) &&
                  player_selected_weapon() == WEAPON_AIR_PISTOL &&
                  mission_shots() > prev(mission_shots())
              )
)

achievement(
    title = "Draft Intelligence",
    description = "Drink from the secret beer keg in TOKYO",
    points = 5,
    type = TYPE_NORMAL,
    trigger = is_mission(M_TOKYO) &&
              is_scene(SCENE_IN_MISSION) &&
              beer_crouches() >= 6.0 &&
              active_interaction_ptr != 0 &&
              prev(active_interaction_ptr) == 0 &&
              active_interaction_gobj() == GOBJ_TOKYO_BEER_KEG
)

achievement_bythebook(M_TRAINING, 10)
achievement_bythebook(M_CARTHAGE1, 10)
achievement_bythebook(M_CARTHAGE2, 10)
achievement_bythebook(M_CARTHAGE3, 10)
achievement_bythebook(M_ITALY, 10)
achievement_bythebook(M_BELARUS1, 10)
achievement_bythebook(M_BELARUS2, 10)
achievement_bythebook(M_KYRGYSTAN, 10)
achievement_bythebook(M_YEMEN1, 10)
achievement_bythebook(M_YEMEN2, 10)
achievement_bythebook(M_MINSK, 10)
achievement_bythebook(M_CHECHNYA, 10)
achievement_bythebook(M_LORELEI, 10)
achievement_bythebook(M_TOKYO, 10)
achievement_bythebook(M_MYANMAR, 10)
achievement_bythebook(M_ZURICH, 10)
achievement_bythebook(M_MONTENEGRO, 10)
achievement_bythebook(M_UKRAINE, 10)

RPMissions = {
    M_CARTHAGE1: "Carthage: Quarantine Zone",
    M_CARTHAGE2: "Carthage: Warehouse District",
    M_CARTHAGE3: "Carthage Mall",
    M_ITALY: "St. Cetteo Square",
    M_BELARUS1: "Krivorozhstal Mill",
    M_BELARUS2: "Belaya Vezha",
    M_KYRGYSTAN: "Saydahmat's Village",
    M_YEMEN1: "Sana'a Arms Bazaar",
    M_YEMEN2: "Taherir Palace",
    M_MINSK: "Minsk International University",
    M_CHECHNYA: "Ivankov's Home",
    M_LORELEI: "Lorelei Salvage Rig",
    M_TOKYO: "Murakawa Tower",
    M_MYANMAR: "Irawaddy Basin",
    M_ZURICH: "Niculescu Funds Tower",
    M_MONTENEGRO: "Niculescu's Villa Estate",
    M_UKRAINE: "Chechen Terrorist Base",
    M_TRAINING: "IPCA Training Center"
}

rp_mission = rich_presence_lookup("Mission", current_mission(), RPMissions, fallback="an unknown mission")
rp_mission_time = rich_presence_value("MissionTime", mission_timer(), "SECS")

rich_presence_conditional_display(is_scene(SCENE_EQUIPMENT_SELECT), "Preparing for {0}", rp_mission)
rich_presence_conditional_display(is_scene(SCENE_IN_MISSION), "On assignment at {0} • {1}", rp_mission, rp_mission_time)
rich_presence_conditional_display(is_scene(SCENE_FADE_OUT), "Wrapping up at {0}", rp_mission)
rich_presence_conditional_display(is_scene(SCENE_SUMMARY), "Reviewing the operation at {0}", rp_mission)
rich_presence_display("At IPCA headquarters")