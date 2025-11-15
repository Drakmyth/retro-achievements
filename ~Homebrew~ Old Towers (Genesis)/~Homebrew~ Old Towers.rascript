// ~Homebrew~ Old Towers
// #ID = 33403
// #MinimumVersion=1.3.1

function death_count() => word(0x000EF6) // signed
function current_health() => byte(0x0000F2)
function score() => dword(0x0014CE) * 10000 + dword(0x0014D2) * 1000 + dword(0x0014D6) * 100 + dword(0x0014DA) * 10 + dword(0x0014DE)
function current_level() => byte(0x00464A)
function current_level_state() => byte(0x00464E)
LS_PLAYING = 0
LS_DIED = 1
LS_LOADING = 2
LS_WIN = 3
LS_TITLE = 4
LS_CONTINUE = 5
LS_PAUSED = 6
function cursor_mode() => byte(0x0014CA)
CUR_PLAYER = 0
CUR_LEVEL = 1
function player_action() => byte(0x004702)
ACT_IDLE = 0
ACT_LEFT = 1
ACT_RIGHT = 2
ACT_UP = 3
ACT_DOWN = 4

function level_state_changed(from, to) => prev(current_level_state()) == from && current_level_state() == to
function level_started(level) => current_level() == level && level_state_changed(LS_LOADING, LS_PLAYING)
function level_won(level) => current_level() == level && level_state_changed(LS_PLAYING, LS_WIN)

function achievement_complete_level(title, description, level, points, type) {
    achievement(
        title = title,
        description = description,
        points = points,
        type = type,
        trigger = level_won(level)
    )
}

function achievement_deathless(title, description, start_level, end_level, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = once(level_started(start_level)) &&
                  trigger_when(level_won(end_level)) &&
                  never(prev(death_count()) != death_count())
    )
}

function achievement_time_trial(title, description, start_level, end_level, time, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = once(level_started(start_level)) &&
                  trigger_when(level_won(end_level)) &&
                  never(repeated(time, once(once(prev(current_level()) != start_level &&
                                                 current_level() == start_level) &&
                                            level_state_changed(LS_LOADING, LS_PLAYING)) &&
                                       current_level_state() == LS_PLAYING))
    )
}

function leaderboard_time_trial(title, description, start_level, end_level) {
    leaderboard(
        title = title,
        description = description,
        start  = level_started(start_level),
        cancel = __ornext(current_level() < start_level || current_level() > end_level),
        submit = level_won(end_level),
        value  = unless(current_level_state() != LS_PLAYING) && measured(tally(0, always_true())),
        format = "FRAMES",
        lower_is_better = true
    )
}

achievement_complete_level("Starting the Climb", "Complete Level 01", 1, 1, "progression")
achievement_complete_level("Bouncing Off the Walls", "Complete Level 05", 5, 4, "progression")
achievement_complete_level("Need Some Help?", "Complete Level 10", 10, 5, "progression")
achievement_complete_level("It's Chilly in Here", "Complete Level 15", 15, 5, "progression")
achievement_complete_level("Lots of Moving Parts", "Complete Level 20", 20, 5, "progression")
achievement_complete_level("Kudos Gamemaster!", "Complete Level 25", 25, 5, "win_condition")
achievement_deathless("Can't Touch This", "Beat Tower 1 (Levels 01-10) without dying", 1, 10, 10)
achievement_deathless("Slide to the Finish", "Beat Tower 2 (Levels 11-20) without dying", 11, 20, 10)
achievement_deathless("Ghost in the Machine", "Beat Tower 3 (Levels 21-25) without dying", 21, 25, 10)

achievement(
    title = "First Try!",
    description = "Beat the game with 0 total deads and without restarting any levels",
    points = 25,
    trigger = once(once(prev(current_level()) != 1 && current_level() == 1) &&
                   prev(current_level_state()) == LS_LOADING &&
                   current_level_state() == LS_PLAYING) &&
              death_count() == 0 &&
              trigger_when((current_level() == 25 &&
                           prev(current_level_state()) == LS_PLAYING && current_level_state() == LS_WIN)) &&
              never((prev(current_level_state()) == LS_PLAYING && current_level_state() == LS_LOADING)) &&
              never(current_level() == 0)
)

achievement_time_trial("Blink and You'll Miss It", "Beat Tower 1 (Levels 01-10) in less than 1 minute and 45 seconds", 1, 10, 6300, 10)
achievement_time_trial("The Blue Blur", "Beat Tower 2 (Levels 11-20) in less than 3 minutes", 11, 20, 10800, 10)
achievement_time_trial("Greased Lightning", "Beat Tower 3 (Levels 21-25) in less than 3 minutes and 30 seconds", 21, 25, 12600, 10)

achievement(
    title = "Move It or Lose It",
    description = "Beat Level 05 without stopping",
    points = 2,
    trigger = current_level() == 5 &&
              once(level_state_changed(LS_LOADING, LS_PLAYING)) &&
              trigger_when(level_state_changed(LS_PLAYING, LS_WIN)) &&
              never(repeated(8, once(prev(player_action()) != player_action()) && always_true() && never(player_action() != ACT_IDLE))) &&
              never((current_level_state() == LS_DIED || current_level_state() == LS_LOADING))
)

achievement(
    title = "Watch Your Step",
    description = "Complete Level 13 using fewer than 28 moves",
    points = 3,
    trigger = once(level_state_changed(LS_LOADING, LS_PLAYING)) &&
              trigger_when(level_state_changed(LS_PLAYING, LS_WIN)) &&
              never(repeated(28, prev(player_action()) != ACT_IDLE && player_action() == ACT_IDLE)) &&
              never((current_level_state() == LS_DIED || current_level_state() == LS_LOADING)) && never(current_level() != 13)
)

achievement(
    title = "Unbreakable",
    description = "Break all the bricks on Level 23",
    points = 10,
    trigger = current_level() == 23 &&
              __ornext(current_level_state() == LS_PAUSED || current_level_state() == LS_PLAYING) &&
              trigger_when(once(prev(word(0x00115A)) == 8 && word(0x00115A) == 0)) &&
              trigger_when(once(prev(word(0x00115C)) == 8 && word(0x00115C) == 0)) &&
              trigger_when(once(prev(word(0x001162)) == 8 && word(0x001162) == 0)) &&
              trigger_when(once(prev(word(0x001164)) == 8 && word(0x001164) == 0)) &&
              trigger_when(once(prev(word(0x001180)) == 8 && word(0x001180) == 0)) &&
              trigger_when(once(prev(word(0x001182)) == 8 && word(0x001182) == 0)) &&
              trigger_when(once(prev(word(0x001184)) == 8 && word(0x001184) == 0)) &&
              trigger_when(once(prev(word(0x00118A)) == 8 && word(0x00118A) == 0)) &&
              trigger_when(once(prev(word(0x00118C)) == 8 && word(0x00118C) == 0)) &&
              trigger_when(once(prev(word(0x00118E)) == 8 && word(0x00118E) == 0)) &&
              trigger_when(once(prev(word(0x0011A6)) == 8 && word(0x0011A6) == 0)) &&
              trigger_when(once(prev(word(0x0011B8)) == 8 && word(0x0011B8) == 0)) &&
              trigger_when(once(prev(word(0x0011CE)) == 8 && word(0x0011CE) == 0)) &&
              trigger_when(once(prev(word(0x0011D0)) == 8 && word(0x0011D0) == 0)) &&
              trigger_when(once(prev(word(0x0011DE)) == 8 && word(0x0011DE) == 0)) &&
              trigger_when(once(prev(word(0x0011E0)) == 8 && word(0x0011E0) == 0)) &&
              trigger_when(once(prev(word(0x001246)) == 8 && word(0x001246) == 0)) &&
              trigger_when(once(prev(word(0x001248)) == 8 && word(0x001248) == 0)) &&
              trigger_when(once(prev(word(0x001256)) == 8 && word(0x001256) == 0)) &&
              trigger_when(once(prev(word(0x001258)) == 8 && word(0x001258) == 0)) &&
              trigger_when(once(prev(word(0x00126E)) == 8 && word(0x00126E) == 0)) &&
              trigger_when(once(prev(word(0x001280)) == 8 && word(0x001280) == 0)) &&
              trigger_when(once(prev(word(0x001298)) == 8 && word(0x001298) == 0)) &&
              trigger_when(once(prev(word(0x00129A)) == 8 && word(0x00129A) == 0)) &&
              trigger_when(once(prev(word(0x00129C)) == 8 && word(0x00129C) == 0)) &&
              trigger_when(once(prev(word(0x0012A2)) == 8 && word(0x0012A2) == 0)) &&
              trigger_when(once(prev(word(0x0012A4)) == 8 && word(0x0012A4) == 0)) &&
              trigger_when(once(prev(word(0x0012A6)) == 8 && word(0x0012A6) == 0)) &&
              trigger_when(once(prev(word(0x0012C2)) == 8 && word(0x0012C2) == 0)) &&
              trigger_when(once(prev(word(0x0012C4)) == 8 && word(0x0012C4) == 0)) &&
              trigger_when(once(prev(word(0x0012CA)) == 8 && word(0x0012CA) == 0)) &&
              trigger_when(once(prev(word(0x0012CC)) == 8 && word(0x0012CC) == 0)) &&
              never((current_level_state() != LS_PAUSED && current_level_state() != LS_PLAYING))
)

leaderboard(
    title = "First Try! Marathon",
    description = "Beat consecutive levels without dying or restarting",
    start  = current_level() != 26 && repeated(2, level_state_changed(LS_PLAYING, LS_WIN) &&
             never(current_level() == 0) && never(prev(death_count()) != death_count()) &&
             never(level_state_changed(LS_PLAYING, LS_LOADING))),
    cancel = prev(current_level()) != 0 && current_level() == 0,
    submit = always_true() &&
             ((prev(death_count()) != death_count()) ||
             level_state_changed(LS_PLAYING, LS_LOADING)),
    value  = measured(tally(0, once(always_true()), level_state_changed(LS_PLAYING, LS_WIN), always_false())),
    format = "VALUE"
)

leaderboard_time_trial("Tower 1 Speedrun", "Beat Tower 1 (Levels 01-10) in the quickest time", 1, 10)
leaderboard_time_trial("Tower 2 Speedrun", "Beat Tower 2 (Levels 11-20) in the quickest time", 11, 20)
leaderboard_time_trial("Tower 3 Speedrun", "Beat Tower 3 (Levels 21-25) in the quickest time", 21, 25)

LeadZeroLookup = {
    1: "0",
    2: "0",
    3: "0",
    4: "0",
    5: "0",
    6: "0",
    7: "0",
    8: "0",
    9: "0",
}

StatusLookup = {
    0: "Playing ",
    1: "Lying dead on ",
    2: "Loading into ",
    3: "Cheering after having beaten ",
    6: "Paused on ",
}

rp_level_zeroes = rich_presence_lookup("LeadZero", current_level(), LeadZeroLookup)
rp_level = rich_presence_value("Number", current_level())
rp_health = rich_presence_value("Number", current_health())
rp_deaths = rich_presence_value("Number", death_count())
rp_score = rich_presence_value("Number", score())
rp_status = rich_presence_lookup("Status", current_level_state(), StatusLookup)

rich_presence_conditional_display(current_level() == 0, "Admiring the Title Screen")
rich_presence_conditional_display(current_level() == 26, "Being congratulated! | ♥️ {0}/5 💀 {1} | {2} Points", rp_health, rp_deaths, rp_score)
rich_presence_conditional_display(cursor_mode() == CUR_LEVEL, "Strategizing on Level {0}{1} | ♥️ {2}/5 💀 {3} | {4} Points", rp_level_zeroes, rp_level, rp_health, rp_deaths, rp_score)
rich_presence_conditional_display(current_level() < 26 && current_level_state() == LS_CONTINUE, "Debating whether to try Level {0}{1} again | ♥️ {2}/5 💀 {3} | {4} Points", rp_level_zeroes, rp_level, rp_health, rp_deaths, rp_score)
rich_presence_conditional_display(current_level() == 5 && current_level_state() == LS_PLAYING, "Running around on Level {0}{1} | ♥️ {2}/5 💀 {3} | {4} Points", rp_level_zeroes, rp_level, rp_health, rp_deaths, rp_score)
rich_presence_conditional_display(current_level() == 13 && current_level_state() == LS_PLAYING, "Taking careful steps on Level {0} | ♥️ {1}/5 💀 {2} | {3} Points", rp_level, rp_health, rp_deaths, rp_score)
rich_presence_conditional_display(current_level() == 23 && current_level_state() == LS_PLAYING, "Breaking bricks on Level {0} | ♥️ {1}/5 💀 {2} | {3} Points", rp_level, rp_health, rp_deaths, rp_score)
rich_presence_display("{0}Level {1}{2} | ♥️ {3}/5 💀 {4} | {5} Points", rp_status, rp_level_zeroes, rp_level, rp_health, rp_deaths, rp_score)
