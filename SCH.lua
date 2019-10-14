-- SCH TODO List (updated 11/12/2017)

-- Maybe look at this someday...

----------------------------------------------------


-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

--[[
        Custom commands:

        Shorthand versions for each strategem type that uses the version appropriate for
        the current Arts.
		In-game macro: /console gs c scholar xxx

                                        Light Arts              Dark Arts

        gs c scholar light              Light Arts/Addendum
        gs c scholar dark                                       Dark Arts/Addendum
        gs c scholar cost               Penury                  Parsimony
        gs c scholar speed              Celerity                Alacrity
        gs c scholar aoe                Accession               Manifestation
        gs c scholar power              Rapture                 Ebullience
        gs c scholar duration           Perpetuance
        gs c scholar accuracy           Altruism                Focalization
        gs c scholar enmity             Tranquility             Equanimity
        gs c scholar skillchain                                 Immanence
        gs c scholar addendum           Addendum: White         Addendum: Black
--]]



-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
	include('organizer-lib')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    info.addendumNukes = S{"Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",
        "Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
    update_active_strategems()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'MB')
    state.IdleMode:options('Normal', 'PDT')
	
    info.low_nukes = S{"Stone", "Water", "Aero", "Fire", "Blizzard", "Thunder", 
	                   "Stone II", "Water II", "Aero II", "Fire II", "Blizzard II", "Thunder II"}
    info.mid_nukes = S{}
    info.high_nukes = S{"Stone III", "Water III", "Aero III", "Fire III", "Blizzard III", "Thunder III",
					    "Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",
	                    "Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

    send_command('bind ` input /ma Stun <t>; wait 0.5; input /p Casting STUN on <t>.')
   
    GrioEnfeeb = { name="Grioavolr", augments={'Enfb.mag. skill +15','MND+11','Mag. Acc.+30','"Mag.Atk.Bns."+27','Magic Damage +2',}}
    GrioNuke = { name="Grioavolr", augments={'Magic burst mdg.+5%','INT+10','Mag. Acc.+30','"Mag.Atk.Bns."+24','Magic Damage +9',}}
   
    DarkRing = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -5%','Spell interruption rate down -3%',}}
    ChironicDTHands = { name="Chironic Gloves", augments={'MND+1','"Dbl.Atk."+3','Damage taken-4%','Mag. Acc.+1 "Mag.Atk.Bns."+1',}}
    ChironicDTFeet = { name="Chironic Slippers", augments={'"Dbl.Atk."+1','MND+5','Damage taken-4%','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
    ChironicTH = {name="Chironic Gloves", augments={'"Mag.Atk.Bns."+7','Accuracy+18 Attack+18','"Treasure Hunter"+2','Mag. Acc.+8 "Mag.Atk.Bns."+8',}}    
    ChironicRefreshHands = { name="Chironic Gloves", augments={'CHR+1','Accuracy+2','"Refresh"+1','Accuracy+13 Attack+13','Mag. Acc.+13 "Mag.Atk.Bns."+13',}}
    ChironicMAccHands = { name="Chironic Gloves", augments={'Mag. Acc.+30','"Fast Cast"+4','Magic Damage +6','Mag. Acc.+18 "Mag.Atk.Bns."+18',}}   
    MerlinicNuke = { name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+9%','MND+9','"Mag.Atk.Bns."+6',}}
    MerlinicRefreshFeet = { name="Merlinic Crackows", augments={'Attack+3','Pet: INT+4','"Refresh"+1','Accuracy+9 Attack+9',}}

    --select_default_macro_book()
end

function user_unload()
	send_command('unbind `')
	send_command('unbind ^`')
	send_command('unbind !`')
	send_command('unbind ^-')
	send_command('unbind ^=')
	send_command('unbind delete')
	send_command('unbind end')
	send_command('unbind home')
end
-- Define sets and vars used by this job file.

function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    
	sets.obi = {
       Fire = {waist="Hachirin-no-Obi"},
       Earth = {waist="Hachirin-no-Obi"},
       Water = {waist="Hachirin-no-Obi"},
       Wind = {waist="Hachirin-no-Obi"},
       Ice = {waist="Hachirin-no-Obi"},
       Lightning = {waist="Hachirin-no-Obi"},
       Light = {waist="Hachirin-no-Obi"},
       Dark = {waist="Hachirin-no-Obi"},
    }    

    -- Precast Sets

    -- Precast sets to enhance JAs

    sets.precast.JA['Tabula Rasa'] = {legs="Pedagogy Pants"}


    -- Fast cast sets for spells

    sets.precast.FC = {ammo="Incantor Stone",
        head="Amalric Coif +1",ear1="Barkarole Earring",ear2="Loquac. Earring",
        body="Helios Jacket",hands="Gende. Gages +1",ring1="Weatherspoon Ring",
        back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})

    --sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {neck="Stoicheion Medal"})

    --sets.precast.FC.Cure = set_combine(sets.precast.FC, {body="Heka's Kalasiris",ear1="Mendicant's earring",back="Pahtli Cape"})

    --sets.precast.FC.Curaga = sets.precast.FC.Cure

    sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {ammo="Hasty Pinion +1",
        head="Hagondes Hat +1",neck="Asperity Necklace",ear1="Brutal Earring",ear2="Telos Earring",
        body="Ischemia Chasu.",hands="Amalric Gages +1",ring1="Ifrit Ring +1",ring2="Rufescent Ring",
        back="Rancorous Mantle",waist="Fotia Belt",legs="Psycloth Lappas",feet="Battlecast Gaiters"}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    --sets.precast.WS['Vidohunir'] = {ammo="Dosis Tathlum",
    --    head="Hagondes Hat",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Regal Earring",
    --    body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Acumen Ring",
    --    back="Toro Cape",waist="Thunder Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

    sets.precast.WS['Myrkr'] = {ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Moonshade Earring",
        body="Amalric Doublet +1",hands="Otomi Gloves",ring1="Sangoma Ring",ring2="Mephitas's Ring +1",
        back="Twilight Cape",waist="Fucho-no-Obi",legs="Amalric Slops +1",feet="Amalric Nails"}
    
    -- Midcast Sets

    sets.midcast.FastRecast = {ammo="Incantor Stone",
        head="Amalric Coif +1",ear2="Loquacious Earring",
        body="Helios Jacket",hands="Gende. Gages +1",ring1="Weatherspoon Ring",
        back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}

    sets.midcast.Cure = {ammo="Incantor Stone",
        head="Amalric Coif +1",neck="Nodens Gorget",ear1="Regal Earring",ear2="Loquac. Earring",
        body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Sirona's Ring",ring2="Stikini Ring +1",
        back="Lugh's Cape",waist="Witful Belt",legs="Chironic Hose",feet="Medium's Sabots"}

    sets.midcast.CureWithLightWeather = {ammo="Incantor Stone",
        head="Amalric Coif +1",neck="Nodens Gorget",ear1="Regal Earring",ear2="Loquac. Earring",
        body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Sirona's Ring",ring2="Stikini Ring +1",
        back="Twilight Cape",waist="Hachirin-no-Obi",legs="Chironic Hose",feet="Medium's Sabots"}

    sets.midcast.Curaga = sets.midcast.Cure

    -- TODO
    --sets.midcast.Regen = {main="Bolelabunga",head="Arbatel Bonnet",feet="Telchine pigaches"}
   
    sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {head="Amalric Coif +1"})

    sets.midcast.Cursna = set_combine(sets.midcast['Enhancing Magic'], {ring1="Haoma's Ring"})

    sets.midcast['Enhancing Magic'] = {ammo="Incantor Stone",
        head="Befouled Crown",neck="Incanter's Torque",ear1="Augment. Earring",ear2="Andoaa Earring",
        body="Chironic Doublet",hands=ChironicRefreshHands,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Lugh's Cape",waist="Olympus Sash",legs="Shedir Seraweels",feet=MerlinicNuke}
                    
    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {neck="Nodens Gorget",ear2="Earthcry Earring",waist="Siegel Sash",legs="Shedir Seraweels"})

    -- TODO
    --sets.midcast.Storm = set_combine(sets.midcast['Enhancing Magic'], {feet="Pedagogy Loafers +1"})

    --sets.midcast.Protect = {ring1="Sheltered Ring"}
    --sets.midcast.Protectra = sets.midcast.Protect

    --sets.midcast.Shell = {ring1="Sheltered Ring"}
    --sets.midcast.Shellra = sets.midcast.Shell

    -- Custom spell classes
    sets.midcast.MndEnfeebles = {main=GrioNuke,sub="Enki Strap",ammo="Quartz Tathlum +1",
        head="Merlinic Hood",neck="Incanter's Torque",ear1="Gwati Earring",ear2="Digni. Earring",
        body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Lugh's Cape",waist="Rumination Sash",legs="Chironic Hose",feet="Medium's Sabots"}

    sets.midcast.IntEnfeebles = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Merlinic Hood",neck="Incanter's Torque",ear1="Gwati Earring",ear2="Digni. Earring",
        body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Lugh's Cape",waist="Rumination Sash",legs="Chironic Hose",feet="Medium's Sabots"}

    sets.midcast.ElementalEnfeeble = sets.midcast.IntEnfeebles

    sets.midcast['Dark Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Merlinic Hood",neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Digni. Earring",
        body="Merlinic Jubbah",hands=ChironicMAccHands,ring1="Sangoma Ring",ring2="Stikini Ring +1",
        back="Lugh's Cape",waist="Porous Rope",legs="Merlinic Shalwar",feet=MerlinicNuke}

    sets.midcast.Kaustra = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Merlinic Jubbah",hands="Amalric Gages +1",ring1="Archon Ring",ring2="Freke Ring",
        back="Lugh's Cape",waist="Refoccilation Stone",legs="Merlinic Shalwar",feet=MerlinicNuke}
        
    -- Hit 50 MB% w/o feet b/c of Arbatel Loafers +1 during Klimaform/Weather    
    sets.midcast.Kaustra.MB = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Pixie Hairpin +1",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Static Earring",
        body="Merlinic Jubbah",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Archon Ring",
        back="Lugh's Cape",waist="Refoccilation Stone",legs="Merlinic Shalwar",feet=MerlinicNuke}

    sets.midcast.Drain = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Digni. Earring",
        body="Merlinic Jubbah",hands=ChironicMAccHands,ring1="Archon Ring",ring2="Evanescence Ring",
        back="Lugh's Cape",waist="Fucho-no-Obi",legs="Chironic Hose",feet=MerlinicNuke}

    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = {main=GrioNuke,sub="Enki Strap",ammo="Incantor Stone",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Regal Earring",ear2="Loquac. Earring",
        body="Helios Jacket",hands="Gende. Gages +1",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}

    sets.midcast['Elemental Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Merlinic Hood",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Freke Ring",ring2="Shiva Ring +1",
        back="Lugh's Cape",waist="Refoccilation Stone",legs="Merlinic Shalwar",feet=MerlinicNuke}
    
    -- Hit 50 MB% w/o feet b/c of Arbatel Loafers +1 during Klimaform/Weather    
    
    -- Current SCH Elemental Magic MBD% :
    -- Grioavolr (Nuke) : 5% (MAcc30, Matt24, MDmg9)
    -- Merlinic Hood : 6% (MAcc36, MAtt37)
    -- Mizu Kubikazari : 10% (INT4, MAtt8)
    -- Merlinic Jubbah : 8% (INT6 MAcc22 MAtt36)
    -- Amalric Gages : 5%+
    -- Mujin Band : 5%+
    -- Merlinic Shalwar : 7% (MAcc23 Matt34)
    -- Merlinic Boots : 9% (MAcc25 MAtt31)
    
    -- Total : 60%, Cap 50%
    sets.midcast['Elemental Magic'].MB = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Merlinic Hood",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Merlinic Jubbah",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Freke Ring",
        back="Lugh's Cape",waist="Refoccilation Stone",legs="Merlinic Shalwar",feet=MerlinicNuke}

    sets.midcast.Helix = sets.midcast['Elemental Magic']
    -- Hit 50 MB% w/o feet b/c of Arbatel Loafers +1 during Klimaform/Weather    
    sets.midcast.Helix.MB = sets.midcast['Elemental Magic'].MB

    sets.midcast.Impact = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head=empty,neck="Incanter's Torque",ear1="Gwati Earring",ear2="Digni. Earring",
        body="Twilight Cloak",hands=ChironicMAccHands,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Lugh's Cape",waist="Porous Rope",legs="Chironic Hose",feet="Medium's Sabots"}                  
        
    -- Sets to return to when not performing an action.

    -- Resting sets
    sets.resting = {main=GrioNuke,sub="Enki Strap",ammo="Homiliary",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands=ChironicRefreshHands,ring1=DarkRing,ring2="Defending Ring",
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}

    -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)

    sets.idle.Town = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Amalric Coif +1",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Freke Ring",
        back="Lugh's Cape",waist="Refoccilation Stone",legs="Merlinic Shalwar",feet=MerlinicNuke}

    sets.idle.Field = {main=GrioNuke,sub="Enki Strap",ammo="Homiliary",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Barkarole Earring",
        body="Jhakri Robe +2",hands=ChironicRefreshHands,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}

    sets.idle.Field.PDT = {main=GrioNuke,sub="Enki Strap",ammo="Homiliary",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Barkarole Earring",
        body="Jhakri Robe +2",hands=ChironicRefreshHands,ring1="Defending Ring",ring2=DarkRing,
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}

    sets.idle.Field.Stun = {main=GrioNuke,sub="Enki Strap",ammo="Homiliary",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Barkarole Earring",
        body="Jhakri Robe +2",hands=ChironicRefreshHands,ring1="Defending Ring",ring2=DarkRing,
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}

    sets.idle.Weak = {main=GrioNuke,sub="Enki Strap",ammo="Homiliary",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Barkarole Earring",
        body="Jhakri Robe +2",hands=ChironicRefreshHands,ring1="Defending Ring",ring2=DarkRing,
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}

    -- Defense sets

    sets.defense.PDT = {main=GrioNuke,sub="Enki Strap",ammo="Staunch Tathlum",
        head="Amalric Coif +1",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Regal Earring",
        body="Merlinic Jubbah",hands=ChironicDTHands,ring1="Defending Ring",ring2="Gelatinous Ring +1",
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Merlinic Shalwar",feet=ChironicDTFeet}

    sets.defense.MDT = {main=GrioNuke,sub="Enki Strap",ammo="Staunch Tathlum",
        head="Amalric Coif +1",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Regal Earring",
        body="Merlinic Jubbah",hands=ChironicDTHands,ring1="Defending Ring",ring2=DarkRing,
        back="Solemnity Cape",waist="Fucho-no-Obi",legs="Merlinic Shalwar",feet=ChironicDTFeet}

    sets.Kiting = {} --{feet="Herald's Gaiters"}

    sets.latent_refresh = {waist="Fucho-no-obi"}
	
	    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- TH4 Tag
    sets.engaged = {main=GrioNuke,sub="Enki Strap",ammo="Homiliary",
        head="Amalric Coif +1",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Barkarole Earring",
        body="Merlinic Jubbah",hands=ChironicTH,ring1="Defending Ring",ring2=DarkRing,
        back="Solemnity Cape",waist="Chaac Belt",legs="Merlinic Shalwar",feet="Volte Boots"}

    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    sets.buff['Ebullience'] = {} --{head="Merlinic Hood"}
    sets.buff['Rapture'] = {} --{head="Arbatel Bonnet"}
    sets.buff['Perpetuance'] = {hands="Svnt. Bracers +2"}
    sets.buff['Immanence'] = {} --{hands="Arbatel Bracers +1"}
    sets.buff['Penury'] = {} --{legs="Arbatel Pants"}
    sets.buff['Parsimony'] = {} --{legs="Arbatel Pants"}
    sets.buff['Celerity'] = {} --{feet="Pedagogy Loafers +1"}
    sets.buff['Alacrity'] = {} --{feet="Pedagogy Loafers +1"}

    sets.buff['Klimaform'] = {feet="Arbatel Loafers +1"}

    sets.buff.FullSublimation = {} --{head="Academic's Mortarboard",ear1="Savant's Earring",body="Pedagogy Gown"}
    sets.buff.PDTSublimation = {} --{head="Academic's Mortarboard",ear1="Savant's Earring"}
	
    --sets.buff['Sandstorm'] = {feet="Desert Boots"}
	
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the general midcast() is done.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' then
        apply_grimoire_bonuses(spell, action, spellMap, eventArgs)
    end
	if spell.action_type == 'Magic' then
      if spellMap == 'Helix' then
         -- no obi for helix
      elseif spell.skill == 'Elemental Magic' or spell.english == "Kaustra" then
         -- obi for nukes, and Kaustra when weather up
			if spell.element == world.day_element or spell.element == world.weather_element then
				equip(sets.obi[spell.element])
		    end
		end
	end    
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if buff == "Sublimation: Activated" then
        handle_equipping_gear(player.status)
    end
end

-- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Offense Mode' then
        if newValue == 'Normal' then
            disable('main','sub','range')
        else
            enable('main','sub','range')
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' or default_spell_map == 'Curaga' then
            if world.weather_element == 'Light' then
                return 'CureWithLightWeather'
            end
        elseif spell.skill == 'Enfeebling Magic' then
            if spell.type == 'WhiteMagic' then
                return 'MndEnfeebles'
            else
                return 'IntEnfeebles'
            end
        elseif spell.skill == 'Elemental Magic' then
            if info.low_nukes:contains(spell.english) then
                return 'LowTierNuke'
            elseif info.mid_nukes:contains(spell.english) then
                return 'MidTierNuke'
            elseif info.high_nukes:contains(spell.english) then
                return 'HighTierNuke'
            end
        end
    end
end

function customize_idle_set(idleSet)
    if state.Buff['Sublimation: Activated'] then
        if state.IdleMode.value == 'Normal' then
            idleSet = set_combine(idleSet, sets.buff.FullSublimation)
        elseif state.IdleMode.value == 'PDT' then
            idleSet = set_combine(idleSet, sets.buff.PDTSublimation)
        end
    end

    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end

    return idleSet
end

-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    if cmdParams[1] == 'user' and not (buffactive['light arts']      or buffactive['dark arts'] or
                       buffactive['addendum: white'] or buffactive['addendum: black']) then
        if state.IdleMode.value == 'Stun' then
            send_command('@input /ja "Dark Arts" <me>')
        else
            send_command('@input /ja "Light Arts" <me>')
        end
    end

    update_active_strategems()
    update_sublimation()
end

-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for direct player commands.
function job_self_command(cmdParams, eventArgs)
    if cmdParams[1]:lower() == 'scholar' then
        handle_strategems(cmdParams)
        eventArgs.handled = true
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Reset the state vars tracking strategems.
function update_active_strategems()
    state.Buff['Ebullience'] = buffactive['Ebullience'] or false
    state.Buff['Rapture'] = buffactive['Rapture'] or false
    state.Buff['Perpetuance'] = buffactive['Perpetuance'] or false
    state.Buff['Immanence'] = buffactive['Immanence'] or false
    state.Buff['Penury'] = buffactive['Penury'] or false
    state.Buff['Parsimony'] = buffactive['Parsimony'] or false
    state.Buff['Celerity'] = buffactive['Celerity'] or false
    state.Buff['Alacrity'] = buffactive['Alacrity'] or false

    state.Buff['Klimaform'] = buffactive['Klimaform'] or false
end

function update_sublimation()
    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
end

-- Equip sets appropriate to the active buffs, relative to the spell being cast.
function apply_grimoire_bonuses(spell, action, spellMap)
    if state.Buff.Perpetuance and spell.type =='WhiteMagic' and spell.skill == 'Enhancing Magic' then
        equip(sets.buff['Perpetuance'])
    end
    if state.Buff.Rapture and (spellMap == 'Cure' or spellMap == 'Curaga') then
        equip(sets.buff['Rapture'])
    end
    if spell.skill == 'Elemental Magic' and spellMap ~= 'ElementalEnfeeble' then
        if state.Buff.Ebullience and spell.english ~= 'Impact' then
            equip(sets.buff['Ebullience'])
        end
        if state.Buff.Immanence then
            equip(sets.buff['Immanence'])
        end
        if state.Buff.Klimaform and spell.element == world.weather_element then
            equip(sets.buff['Klimaform'])
        end
    end

    if state.Buff.Penury then equip(sets.buff['Penury']) end
    if state.Buff.Parsimony then equip(sets.buff['Parsimony']) end
    if state.Buff.Celerity then equip(sets.buff['Celerity']) end
    if state.Buff.Alacrity then equip(sets.buff['Alacrity']) end
end


function display_current_caster_state()
	local msg = ''

	if state.OffenseMode.value ~= 'None' then
		msg = msg .. 'Melee'

		if state.CombatForm.has_value then
			msg = msg .. ' (' .. state.CombatForm.value .. ')'
		end
        
		msg = msg .. ', '
	end

	msg = msg .. 'Idle ['..state.IdleMode.value..'], Casting ['..state.CastingMode.value..']'

	add_to_chat(122, msg)
	local currentStrats = get_current_strategem_count()
	local arts
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		arts = 'Light Arts'
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		arts = 'Dark Arts'
	else
		arts = 'No Arts Activated'
	end
	add_to_chat(122, 'Current Available Strategems: ['..currentStrats..'], '..arts..'')
end

-- General handling of strategems in an Arts-agnostic way.
-- Format: gs c scholar <strategem>
	function handle_strategems(cmdParams)
    -- cmdParams[1] == 'scholar'
    -- cmdParams[2] == strategem to use
	end
function handle_strategems(cmdParams)
    if not cmdParams[2] then
        add_to_chat(123,'Error: No strategem command given.')
        return
    end
 
    local currentStrats = get_current_strategem_count()
    local newStratCount = currentStrats - 1
    if currentStrats > 0 then
        add_to_chat(122, '***Current Charges Available: ['..newStratCount..']***')
    else
        add_to_chat(122, '***Out of strategems! Canceling...***')
        return
    end
 
    local strategem = cmdParams[2]:lower()
 
    if strategem == 'light' then
        if buffactive['light arts'] then
            send_command('input /ja "Addendum: White" <me>')
        elseif buffactive['addendum: white'] then
            add_to_chat(122,'Error: Addendum: White is already active.')
        else
            send_command('input /ja "Light Arts" <me>')
        end
    elseif strategem == 'dark' then
        if buffactive['dark arts'] then
            send_command('input /ja "Addendum: Black" <me>')
        elseif buffactive['addendum: black'] then
            add_to_chat(122,'Error: Addendum: Black is already active.')
        else
            send_command('input /ja "Dark Arts" <me>')
        end
    elseif buffactive['light arts'] or buffactive['addendum: white'] then
        if strategem == 'cost' then
            send_command('@input /ja Penury <me>')
        elseif strategem == 'speed' then
            send_command('@input /ja Celerity <me>')
        elseif strategem == 'aoe' then
            send_command('@input /ja Accession <me>')
        elseif strategem == 'power' then
            send_command('@input /ja Rapture <me>')
        elseif strategem == 'duration' then
            send_command('@input /ja Perpetuance <me>')
        elseif strategem == 'accuracy' then
            send_command('@input /ja Altruism <me>')
        elseif strategem == 'enmity' then
            send_command('@input /ja Tranquility <me>')
        elseif strategem == 'skillchain' then
            add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
        elseif strategem == 'addendum' then
            send_command('@input /ja "Addendum: White" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    elseif buffactive['dark arts']  or buffactive['addendum: black'] then
        if strategem == 'cost' then
            send_command('@input /ja Parsimony <me>')
        elseif strategem == 'speed' then
            send_command('@input /ja Alacrity <me>')
        elseif strategem == 'aoe' then
            send_command('@input /ja Manifestation <me>')
        elseif strategem == 'power' then
            send_command('@input /ja Ebullience <me>')
        elseif strategem == 'duration' then
            add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
        elseif strategem == 'accuracy' then
            send_command('@input /ja Focalization <me>')
        elseif strategem == 'enmity' then
            send_command('@input /ja Equanimity <me>')
        elseif strategem == 'skillchain' then
            send_command('@input /ja Immanence <me>')
        elseif strategem == 'addendum' then
            send_command('@input /ja "Addendum: Black" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    else
        add_to_chat(123,'No arts has been activated yet.')
    end
end

function get_current_strategem_count()
	local allRecasts = windower.ffxi.get_ability_recasts()
	local stratsRecast = allRecasts[231]

	local maxStrategems = math.floor(player.main_job_level + 10) / 20

	local fullRechargeTime = 5*33

	local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)
	
	return currentCharges
end


-- Select default macro book on initial load or subjob change.
--function select_default_macro_book()
--    if player.sub_job == 'RDM' then
--        set_macro_page(1, 17)
--    elseif player.sub_job == 'BLM' then
--        set_macro_page(1, 17)	
--    elseif player.sub_job == 'WHM' then
--        set_macro_page(1, 17)
--	end	
--end
