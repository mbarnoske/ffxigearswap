-- BLM TODO List (updated 10/21/2018)

-- Raetic +1 Staff?
-- Relic Neck +2
-- AF+3 Feet (for MB High Acc) ?
-- Amalric +1 Set other than hands (Best for free nuking when not needing MAcc)?

-- Improve FC sets (Cape, Neck, Helios Gloves Aug, Zendik, etc)
-- Improve Drain/Aspir/Burn sets to avoid losing MP
-- Improve DT / MEva Sets

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
    
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('ConsMP', 'ConsMPMB', 'Normal', 'MB', 'HiAcc', 'HiAccConsMP')
    state.IdleMode:options('Normal', 'PDT', 'Death')
    
    send_command('bind !f11 gs c cycleback CastingMode')

    lowTierNukes = S{'Stone', 'Water', 'Aero', 'Fire', 'Blizzard', 'Thunder',
        'Stone II', 'Water II', 'Aero II', 'Fire II', 'Blizzard II', 'Thunder II',
        'Stone III', 'Water III', 'Aero III', 'Fire III', 'Blizzard III', 'Thunder III',
        'Stonega', 'Waterga', 'Aeroga', 'Firaga', 'Blizzaga', 'Thundaga',
        'Stonega II', 'Waterga II', 'Aeroga II', 'Firaga II', 'Blizzaga II', 'Thundaga II'}
    
    -- Additional local binds
    send_command('bind ^` input /ma Stun <t>')

   DarkRing = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -5%','Spell interruption rate down -3%',}}
   TaranusINT = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}}
   TaranusMP = { name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','MP+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
   MerlinicNuke = { name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+9%','MND+9','"Mag.Atk.Bns."+6',}}
   MerlinicRefreshFeet = { name="Merlinic Crackows", augments={'Attack+3','Pet: INT+4','"Refresh"+1','Accuracy+9 Attack+9',}}
   GrioNuke = { name="Grioavolr", augments={'Magic burst dmg.+5%','INT+10','Mag. Acc.+30','"Mag.Atk.Bns."+24','Magic Damage +9',}}
	
    --select_default_macro_book()
end

-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('unbind ^`')
    send_command('unbind @`')
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
	
    ---- Precast Sets ----
    
    -- Precast sets to enhance JAs
    sets.precast.JA['Mana Wall'] = {back=TaranusINT,feet="Wicce Sabots +1"}

    sets.precast.JA.Manafont = {body="Arch. Coat +3"}
    
    -- equip to maximize HP (for Tarus) and minimize MP loss before using convert
    sets.precast.JA.Convert = {}


    -- Fast cast sets for spells
    
    -- Fast Cast 42% for Ele / 80% for Death and other spells needed (Death : use Alacrity too)    
    -- Grio +4%
    -- Amalric Coif +1 +11%
    -- Etiolation Earring +1%
    -- Loq Earring +2%
    -- Helios (Aug) +8%
    -- Otomi +3%
    -- Weatherspoon Ring +5%
    -- Bane Cape +3%
    -- Witful Belt +3%    
    -- Psycloth Lappas +7%
    -- Merlinic Feet +5%

    -- Quick Cast 10% cap
    -- Weatherspoon Ring +3%
    -- 3% QC < 10% cap
         
    -- Current : 52% Fast Cast / 3% QC         
    -- 1969 MP (/SCH)
    sets.precast.FC = {ammo="Impatiens",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Helios Jacket",hands="Otomi Gloves",ring1="Weather. Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}
		
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})

    -- Currently using same set as for FC
    -- FC and MP to avoid losing DMG
    -- 1969 MP (/SCH)
    sets.precast.FC.Death = {ammo="Ghastly Tathlum +1",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Helios Jacket",hands="Otomi Gloves",ring1="Weather. Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}
        
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})

    --sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {neck="Stoicheion Medal"})

    --sets.precast.FC.Cure = set_combine(sets.precast.FC, {body="Heka's Kalasiris", back="Pahtli Cape"})

    --sets.precast.FC.Curaga = sets.precast.FC.Cure

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {ammo="Hasty Pinion +1",
        head="Hagondes Hat +1",neck="Asperity Necklace",ear1="Brutal Earring",ear2="Telos Earring",
        body="Ischemia Chasu.",hands="Spae. Gloves +3",ring1="Ifrit Ring +1",ring2="Rufescent Ring",
        back="Rancorous Mantle",waist="Fotia Belt",legs="Psycloth Lappas",feet="Battlecast Gaiters"}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    --sets.precast.WS['Vidohunir'] = {ammo="Dosis Tathlum",
    --    head="Hagondes Hat",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Regal Earring",
    --    body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Acumen Ring",
    --    back="Toro Cape",waist="Thunder Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

    -- 2218 MP (/SCH)
    sets.precast.WS['Myrkr'] = {ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Moonshade Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Sangoma Ring",ring2="Mephitas's Ring +1",
        back="Bane Cape",waist="Fucho-no-Obi",legs="Amalric Slops +1",feet="Amalric Nails"}
    
    ---- Midcast Sets ----

    sets.midcast.FastRecast = {main=GrioNuke,sub="Enki Strap",ammo="Impatiens",
        head="Amalric Coif +1",ear1="Barkarole Earring",ear2="Loquacious Earring",
        body="Helios Jacket",hands="Otomi Gloves",ring1="Weather. Ring",
        back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}

    sets.midcast.Cure = {main=GrioNuke,sub="Enki Strap",ammo="Impatiens",
        head="Merlinic Hood",neck="Nodens Gorget",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Sirona's Ring",
        back=TaranusMP,waist="Refoccilation Stone",legs="Psycloth Lappas",feet=MerlinicRefreshFeet}

    sets.midcast.Curaga = sets.midcast.Cure

    sets.midcast['Enhancing Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Impatiens",
        head="Merlinic Hood",neck="Incanter's Torque",ear1="Augment. Earring",ear2="Loquacious Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusMP,waist="Olympus Sash",legs="Shedir Seraweels",feet=MerlinicRefreshFeet}
    
    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {ear2="Earthcry Earring",
		neck="Nodens Gorget",waist="Siegel Sash"})

	sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {head="Amalric Coif +1"})
		
    --sets.midcast['Enfeebling Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
    --  head="Merlinic Hood",neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Regal Earring",
    --  body="Spaekona's Coat +3",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
    --  back=TaranusINT,waist="Luminary Sash",legs="Ea Slops +1",feet="Arch. Sabots +3"}

    -- Treasure Hunter PROC on Enfeeble
    sets.midcast['Enfeebling Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
      head="Merlinic Hood",neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Regal Earring",
      body="Spaekona's Coat +3",hands="Volte Bracers",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=TaranusINT,waist="Chaac Belt",legs="Ea Slops +1",feet="Volte Boots"}

    sets.midcast.ElementalEnfeeble = set_combine(sets.midcast['Enfeebling Magic'], {feet="Arch. Sabots +3"})

    sets.midcast['Dark Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
		head="Merlinic Hood",neck="Incanter's Torque",ear1="Barkaro. Earring",ear2="Regal Earring",
        body="Merlinic Jubbah",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusMP,waist="Luminary Sash",legs="Merlinic Shalwar",feet=MerlinicNuke}

    -- 1897 MP (/SCH)
    sets.midcast.Drain = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Regal Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Archon Ring",ring2="Evanescence Ring",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Amalric Slops +1",feet=MerlinicNuke}
            
    sets.midcast.Aspir = sets.midcast.Drain

	sets.midcast.Stun = {main=GrioNuke,sub="Enki Strap",ammo="Impatiens",
		head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Loquac. Earring",
		body="Helios Jacket",hands="Otomi Gloves",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
		back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicNuke}

    -- Elemental Magic sets
    -- (See math in FFXI.txt)

    -- Free Nuke
    sets.midcast['Elemental Magic'] = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Arch. Coat +3",hands="Arch. Gloves +3",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Refoccilation Stone",legs="Arch. Tonban +3",feet="Arch. Sabots +3"}
    
    -- MB Nuke
    sets.midcast['Elemental Magic'].MB = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Ea Houppe. +1",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Freke Ring",
        back=TaranusINT,waist="Refoccilation Stone",legs="Ea Slops +1",feet="Arch. Sabots +3"}
    
    -- Free Nuke Conserve MP
    sets.midcast['Elemental Magic'].ConsMP = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Arch. Gloves +3",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Refoccilation Stone",legs="Arch. Tonban +3",feet="Arch. Sabots +3"}

    -- MB Nuke Conserve MP
    sets.midcast['Elemental Magic'].ConsMPMB = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Locus Ring",
        back=TaranusINT,waist="Refoccilation Stone",legs="Ea Slops +1",feet="Arch. Sabots +3"}
    
    -- Free Nuke HiAcc
    sets.midcast['Elemental Magic'].HiAcc = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusINT,waist="Refoccilation Stone",legs="Arch. Tonban +3",feet="Arch. Sabots +3"}
    
    -- MB Nuke HiAcc
    sets.midcast['Elemental Magic'].HiAccMB = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Spae. Gloves +3",ring1="Mujin Band",ring2="Locus Ring",
        back=TaranusINT,waist="Refoccilation Stone",legs="Ea Slops +1",feet="Arch. Sabots +3"}

    -- Free Nuke Death (Trying AF+3 body for now for more MAcc)
    -- 2037 MP (/SCH)    
    sets.midcast.Death = {main=GrioNuke,sub="Enki Strap",ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Spae. Gloves +3",ring1="Archon Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Refoccilation Stone",legs="Ea Slops +1",feet="Amalric Nails"}

    sets.midcast.Death.ConsMP = sets.midcast.Death
    sets.midcast.Death.HiAcc = sets.midcast.Death
    sets.midcast.Death.HiAccConsMP = sets.midcast.Death
    
    -- Current BLM Death MBD% :
    -- Grio 5%
    -- Mizu Kubikazari : 10% (INT4, MAtt8)
    -- Static Earring : 5%
    -- Merlinic Jubbah : 8% (INT6 MAcc22 MAtt36)
    -- Spae +3 : 8% MBD2
    -- Taranus : 5%
    -- Merlinic Boots : 9% (MAcc25 MAtt31)
    
    -- Total : 42%/8%, Cap 40%/?%
    
    -- MB Nuke Death
    -- 1982 MP (/SCH)        
    sets.midcast.Death.MB = {main=GrioNuke,sub="Enki Strap",ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Mizu. Kubikazari",ear1="Barkarole Earring",ear2="Static Earring",
        body="Merlinic Jubbah",hands="Spae. Gloves +3",ring1="Archon Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Refoccilation Stone",legs="Amalric Slops +1",feet="Amalric Nails"}
		
    sets.midcast.Death.ConsMPMB = sets.midcast.Death.MB
    sets.midcast.Death.HiAccMB = sets.midcast.Death.MB
    sets.midcast.Death.HiAccConsMPMB = sets.midcast.Death.MB
    
    --sets.midcast['Elemental Magic'].HighTierNuke = set_combine(sets.midcast['Elemental Magic'])
    --sets.midcast['Elemental Magic'].HighTierNuke.MB = set_combine(sets.midcast['Elemental Magic'].MB)

    sets.midcast.Impact = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
      head=empty,neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Regal Earring",
      body="Twilight Coat",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=TaranusINT,waist="Luminary Sash",legs="Ea Slops +1",feet="Jhakri Pigaches +2"}
            
    -- Minimal damage gear for procs.
    sets.midcast['Elemental Magic'].Proc = {main=GrioNuke,sub="Enki Strap",ammo="Impatiens",
        head="Befouled Crown",neck="Loricate Torque +1",ear1=empty,ear2="Loquacious Earring",
        body=empty,hands="Spae. Gloves +3",ring1="Sangoma Ring",ring2="Globidonta Ring",
        back="Swith Cape",waist="Witful Belt",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}
    
    -- Sets to return to when not performing an action.
    
    -- Resting sets
    sets.resting = {main=GrioNuke,sub="Enki Strap",ammo="Ghastly Tathlum +1",
        head="Befouled Crown",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Jhakri Robe +2",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}
    
    -- Idle sets
    
    -- Normal refresh idle set
    -- 1760 MP (/SCH)  +8 per tick
    sets.idle = {main=GrioNuke,sub="Enki Strap",ammo="Ghastly Tathlum +1",
        head="Befouled Crown",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}

    -- Idle mode that keeps PDT gear on, but doesn't prevent normal gear swaps for precast/etc.
    sets.idle.PDT = {main=GrioNuke,sub="Enki Strap",ammo="Staunch Tathlum",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Spae. Gloves +3",ring1="Defending Ring",ring2="Gelatinous Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Amalric Slops +1",feet=MerlinicRefreshFeet}

    -- Idle mode scopes:
    -- Idle mode when weak.
    sets.idle.Weak = {main=GrioNuke,sub="Enki Strap",ammo="Ghastly Tathlum +1",
        head="Befouled Crown",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicRefreshFeet}
    
    -- Town gear.
    sets.idle.Town = {main=GrioNuke,sub="Enki Strap",ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Friomisi Earring",
        body="Arch. Coat +3",hands="Arch. Gloves +3",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Refoccilation Stone",legs="Arch. Tonban +3",feet="Arch. Sabots +3"}

    -- 2153 MP (/SCH)  +3 per tick
    sets.idle.Death = {main=GrioNuke,sub="Enki Strap",ammo="Ghastly Tathlum +1",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1=DarkRing,ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Amalric Slops +1",feet=MerlinicRefreshFeet}
        
    -- Defense sets

    sets.defense.PDT = {main=GrioNuke,sub="Enki Strap",ammo="Staunch Tathlum",
        head="Hagondes Hat +1",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Spae. Gloves +3",ring1="Defending Ring",ring2="Gelatinous Ring +1",
        back=TaranusMP,waist="Porous Rope",legs="Hagondes Pants +1",feet="Battlecast Gaiters"}

    sets.defense.MDT = {main=GrioNuke,sub="Enki Strap",ammo="Staunch Tathlum",
        head="Hagondes Hat +1",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Spae. Gloves +3",ring1="Defending Ring",ring2=DarkRing,
        back=TaranusMP,waist="Porous Rope",legs="Psycloth Lappas",feet="Battlecast Gaiters"}

    sets.Kiting = {}

    sets.latent_refresh = {waist="Fucho-no-obi"}

    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    
    sets.buff['Mana Wall'] = {back=TaranusINT,feet="Wicce Sabots +1"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
    sets.engaged = {}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    if spellMap == 'Cure' or spellMap == 'Curaga' then
        gear.default.obi_waist = "Refoccilation Stone"
    elseif spell.skill == 'Elemental Magic' then
        gear.default.obi_waist = "Refoccilation Stone"
        --if state.CastingMode.value == 'Proc' then
        --    classes.CustomClass = 'Proc'
        --end
    end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.action_type == 'Magic' then
		if spell.skill == 'Elemental Magic' or spell.English == "Death" then
			-- obi for nukes, and Death when weather up
         if spell.element == world.day_element or spell.element == world.weather_element then
				equip(sets.obi[spell.element])
		    end
		end
	end
    --if spell.skill == 'Elemental Magic' and state.MagicBurst.value then
    --    equip(sets.magic_burst)
    --end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    -- Lock feet after using Mana Wall.
    if not spell.interrupted then
        if spell.english == 'Mana Wall' then
            enable('feet')
            enable('back')
            equip(sets.buff['Mana Wall'])
            disable('feet')
            disable('back')
        --elseif spell.skill == 'Elemental Magic' then
        --    state.MagicBurst:reset()
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
    -- Unlock feet when Mana Wall buff is lost.
    if buff == "Mana Wall" and not gain then
        enable('feet')
        enable('back')
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
    if spell.skill == 'Elemental Magic' and default_spell_map ~= 'ElementalEnfeeble' then
        --[[ No real need to differentiate with current gear.
        if lowTierNukes:contains(spell.english) then
            return 'LowTierNuke'
        else
            return 'HighTierNuke'
        end
        --]]
    end
end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
    
    return idleSet
end


-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 15)
end
