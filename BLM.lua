-- BLM TODO List (updated 4/16/2021)

-- Chrys. Torque (for Optimizing AM2)
-- R20 Agwu's (for free nuking)
-- Nyame set (Idle/DT)
-- Amalric Body +1 Path D (Vidohunir)
-- Dyna-D Weapon (Mana Wall)
-- Mana wall set / other DT/MEva set for Mana Wall tanking

-- Improved Myrkr Set
-- Improved Death Set
-- Healing Set
-- Enfeebling Set optimization as possible / Stun / EleEnfeeble / Impact
-- Enhancing Set optimization as possible

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
    state.CastingMode:options('ConsMPLow', 'ConsMPMBLow', 'ConsMPHi', 'ConsMPMBHi', 'Low', 'LowMB', 'Hi', 'HiMB')
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
   TaranusFC = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}}
   TaranusMP = { name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','MP+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
   TaranusOA = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10',}}
   TaranusWS = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}}
   MerlinicHeadFC = { name="Merlinic Hood", augments={'Mag. Acc.+22','"Fast Cast"+7','INT+6','"Mag.Atk.Bns."+6',}}
   MerlinicHeadOA = { name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+11','MND+10',}}
   MerlinicHeadNuke = { name="Merlinic Hood", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst dmg.+6%','Mag. Acc.+13','"Mag.Atk.Bns."+14',}}
   MerlinicHeadTH = { name="Merlinic Hood", augments={'"Fast Cast"+2','Crit.hit rate+1','"Treasure Hunter"+1','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
   MerlinicBodyFC = { name="Merlinic Jubbah", augments={'Mag. Acc.+9','"Fast Cast"+7','INT+10','"Mag.Atk.Bns."+3',}}
   MerlinicBodyDA = { name="Merlinic Jubbah", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Drain" and "Aspir" potency +11','INT+5',}}
   MerlinicBodyWSD = { name="Merlinic Jubbah", augments={'Potency of "Cure" effect received+2%','MND+14','Weapon skill damage +6%','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
   MerlinicHandsFC = { name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+7','INT+6','Mag. Acc.+2',}}
   MerlinicHandsOA = { name="Merlinic Dastanas", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+11','"Mag.Atk.Bns."+14',}}
   MerlinicHandsDA = { name="Merlinic Dastanas", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +11','CHR+8',}}
   MerlinicHandsRefresh = { name="Merlinic Dastanas", augments={'AGI+2','MND+13','"Refresh"+2','Accuracy+5 Attack+5','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
   MerlinicFeetFC = { name="Merlinic Crackows", augments={'"Fast Cast"+7','Mag. Acc.+1',}}
   MerlinicFeetOA = { name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+29','"Occult Acumen"+11','Mag. Acc.+8',}}
   MerlinicFeetNuke = { name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+9%','MND+9','"Mag.Atk.Bns."+6',}}
   MerlinicFeetRefresh = { name="Merlinic Crackows", augments={'Attack+3','Pet: INT+4','"Refresh"+1','Accuracy+9 Attack+9',}}
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
	
    -- Precast sets to enhance JAs

    sets.precast.JA['Mana Wall'] = {back=TaranusINT,feet="Wicce Sabots +1"}

    sets.precast.JA.Manafont = {body="Arch. Coat +3"}

    sets.precast.JA['Sublimation'] = {waist="Embla Sash"}

    -- Fast cast sets for spells

    sets.precast.FC = {ammo="Sapience Orb",
        head=MerlinicHeadFC,neck="Baetyl Pendant",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body=MerlinicBodyFC,hands=MerlinicHandsFC,ring1="Weather. Ring",ring2="Mephitas's Ring +1",
        back=TaranusFC,waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicFeetFC}

    sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})

    -- FC and MP to avoid losing DMG (TODO : Rework)
    sets.precast.FC.Death = {ammo="Ghastly Tathlum +1",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Helios Jacket",hands=MerlinicHandsFC,ring1="Weather. Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicFeetFC}

    -- Weaponskill sets

    sets.precast.WS = {ammo="Pemphredo Tathlum",
        head="Pixie Hairpin +1",neck="Baetyl Pendant",ear1="Malignance Earring",ear2="Regal Earring",
        body="Amalric Doublet +1",hands="Jhakri Cuffs +2",ring1="Archon Ring",ring2="Epaminondas's Ring",
        back=TaranusWS,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}

    sets.precast.WS['Myrkr'] = {ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Moonshade Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Sangoma Ring",ring2="Mephitas's Ring +1",
        back="Bane Cape",waist="Fucho-no-Obi",legs="Amalric Slops +1",feet="Amalric Nails +1"}

    -- Improvement Potential only known possible:
    -- Amazing DM Augmented Merlinic (MAB/WSD) (LOL)
    -- Amalric +1 Path D Body
    sets.precast.WS['Vidohunir'] = {ammo="Pemphredo Tathlum",
        head="Pixie Hairpin +1",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Regal Earring",
        body="Amalric Doublet +1",hands="Jhakri Cuffs +2",ring1="Freke Ring",ring2="Epaminondas's Ring",
        back=TaranusWS,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}
    
    ---- Midcast Sets ----

    sets.midcast.FastRecast = {ammo="Impatiens",
        head=MerlinicHeadFC,neck="Baetyl Pendant",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body=MerlinicBodyFC,hands=MerlinicHandsFC,ring1="Weather. Ring",ring2="Mephitas's Ring +1",
        back=TaranusFC,waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicFeetFC}

    sets.midcast.Cure = {ammo="Impatiens",
        head=MerlinicHeadNuke,neck="Nodens Gorget",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Sirona's Ring",
        back=TaranusMP,waist="Sacro Cord",legs="Psycloth Lappas",feet=MerlinicFeetRefresh}

    sets.midcast.Curaga = sets.midcast.Cure

    sets.midcast['Enhancing Magic'] = {ammo="Impatiens",
        head="Telchine Cap",neck="Incanter's Torque",ear1="Mimir Earring",ear2="Loquacious Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusMP,waist="Embla Sash",legs="Telchine Braconi",feet=MerlinicFeetRefresh}

    sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], {head="Amalric Coif +1",legs="Shedir Seraweels"})

    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {ear2="Earthcry Earring", neck="Nodens Gorget",waist="Siegel Sash",legs="Shedir Seraweels"})

    sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {head="Amalric Coif +1"})
		
    --sets.midcast['Enfeebling Magic'] = {ammo="Pemphredo Tathlum",
    --  head=MerlinicHeadNuke,neck="Src. Stole +2",ear1="Malignance Earring",ear2="Regal Earring",
    --  body="Spaekona's Coat +3",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
    --  back=TaranusINT,waist="Luminary Sash",legs="Ea Slops +1",feet="Arch. Sabots +3"}
    
    -- TH4 PROC on Enfeeble
    sets.midcast['Enfeebling Magic'] = {ammo="Pemphredo Tathlum",
      head="Volte Cap",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Regal Earring",
      body="Spaekona's Coat +3",hands="Volte Bracers",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=TaranusINT,waist="Chaac Belt",legs="Ea Slops +1",feet="Volte Boots"}

    -- TODO : Agwu Legs
    sets.midcast.ElementalEnfeeble = set_combine(sets.midcast['Enfeebling Magic'], {legs="Arch. Tonban +3",feet="Arch. Sabots +3"})

    sets.midcast['Dark Magic'] = {ammo="Pemphredo Tathlum",
		head=MerlinicHeadNuke,neck="Incanter's Torque",ear1="Malignance Earring",ear2="Regal Earring",
      body="Merlinic Jubbah",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=TaranusMP,waist="Luminary Sash",legs="Merlinic Shalwar",feet=MerlinicFeetNuke}

    sets.midcast.Drain = {ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Barkaro. Earring",ear2="Regal Earring",
      body=MerlinicBodyDA,hands=MerlinicHandsDA,ring1="Archon Ring",ring2="Evanescence Ring",
      back=TaranusMP,waist="Fucho-no-Obi",legs="Spae. Tonban +3",feet="Agwu's Pigaches"}
    sets.midcast.Aspir = sets.midcast.Drain

    -- FC/Recast
	 sets.midcast.Stun = {ammo="Impatiens",
		head="Amalric Coif +1",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Loquac. Earring",
		body=MerlinicBodyFC,hands=MerlinicHandsFC,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
		back=TaranusFC,waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicFeetFC}

    -- Elemental Magic sets
    
    -- Base Set (ConsMPLow)
    sets.midcast['Elemental Magic'] = {ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Amalric Gages +1",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Sacro Cord",legs="Arch. Tonban +3",feet="Amalric Nails +1"}
    sets.midcast['Elemental Magic'].ConsMPLow = sets.midcast['Elemental Magic']

    sets.midcast['Elemental Magic'].ConsMPMBLow = {ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Static Earring",
        body="Spaekona's Coat +3",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Locus Ring",
        back=TaranusINT,waist="Sacro Cord",legs="Ea Slops +1",feet="Amalric Nails +1"}
        
    --sets.midcast['Elemental Magic'].OA = {ammo="Seraphic Ampulla",
    --    head=MerlinicHeadOA,neck="Src. Stole +2",ear1="Dedition Earring",ear2="Malignance Earring",
    --    body="Spaekona's Coat +3",hands=MerlinicHeadsOA,ring1="Chirich Ring +1",ring2="Chirich Ring +1",
    --    back=TaranusOA,waist="Oneiros Rope",legs="Perdition Slops",feet=MerlinicFeetOA}
    
    sets.midcast['Elemental Magic'].ConsMPHi = {ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Regal Earring",
        body="Spaekona's Coat +3",hands="Arch. Gloves +3",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Sacro Cord",legs="Arch. Tonban +3",feet="Arch. Sabots +3"}
        
    sets.midcast['Elemental Magic'].ConsMPMBHi = {ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Src. Stole +2",ear1="Malignance Earring",ear2="Static Earring",
        body="Spaekona's Coat +3",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Locus Ring",
        back=TaranusINT,waist="Sacro Cord",legs="Ea Slops +1",feet="Arch. Sabots +3"}
    
    sets.midcast['Elemental Magic'].Low = {ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Src. Stole +2",ear1="Regal Earring",ear2="Malignance Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Sacro Cord",legs="Arch. Tonban +3",feet="Amalric Nails +1"}

    sets.midcast['Elemental Magic'].LowMB = {ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Src. Stole +2",ear1="Static Earring",ear2="Malignance Earring",
        body="Ea Houppe. +1",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Freke Ring",
        back=TaranusINT,waist="Sacro Cord",legs="Ea Slops +1",feet="Amalric Nails +1"}
    
    sets.midcast['Elemental Magic'].Hi = {ammo="Pemphredo Tathlum",
        head="Arch. Petasos +3",neck="Src. Stole +2",ear1="Barkarole Earring",ear2="Malignance Earring",
        body="Arch. Coat +3",hands="Arch. Gloves +3",ring1="Freke Ring",ring2="Shiva Ring +1",
        back=TaranusINT,waist="Sacro Cord",legs="Arch. Tonban +3",feet="Arch. Sabots +3"}

    sets.midcast['Elemental Magic'].HiMB = {ammo="Pemphredo Tathlum",
        head="Ea Hat +1",neck="Src. Stole +2",ear1="Static Earring",ear2="Malignance Earring",
        body="Ea Houppe. +1",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Freke Ring",
        back=TaranusINT,waist="Sacro Cord",legs="Ea Slops +1",feet="Arch. Sabots +3"}

    sets.midcast.Death = {ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Barkarole Earring",ear2="Regal Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Archon Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Sacro Cord",legs="Ea Slops +1",feet="Amalric Nails +1"}
    sets.midcast.Death.ConsMPLow = sets.midcast.Death
    sets.midcast.Death.ConsMPHi = sets.midcast.Death
    sets.midcast.Death.Low = sets.midcast.Death
    sets.midcast.Death.Hi = sets.midcast.Death
    
    sets.midcast.Death.MB = {ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Src. Stole +2",ear1="Barkarole Earring",ear2="Static Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1="Archon Ring",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Sacro Cord",legs="Amalric Slops +1",feet="Amalric Nails +1"}
    sets.midcast.Death.ConsMPMBLow = sets.midcast.Death.MB
    sets.midcast.Death.ConsMPMBHi = sets.midcast.Death.MB
    sets.midcast.Death.HiMB = sets.midcast.Death.MB
    
    sets.midcast.Impact = {ammo="Pemphredo Tathlum",
        head=empty,neck="Src. Stole +2",ear1="Malignance Earring",ear2="Regal Earring",
        body="Twilight Coat",hands="Spae. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusINT,waist="Luminary Sash",legs="Ea Slops +1",feet="Jhakri Pigaches +2"}
            
    sets.midcast['Elemental Magic'].Proc = {ammo="Impatiens",
        head="Befouled Crown",neck="Loricate Torque +1",ear1=empty,ear2="Loquacious Earring",
        body=empty,hands="Spae. Gloves +3",ring1="Sangoma Ring",ring2="Globidonta Ring",
        back="Swith Cape",waist="Witful Belt",legs="Assid. Pants +1",feet=MerlinicFeetRefresh}
    
    -- Resting sets

    sets.resting = {ammo="Ghastly Tathlum +1",
        head="Befouled Crown",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Jhakri Robe +2",hands=MerlinicHandsRefresh,ring1="Stikini Ring +1",ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicFeetRefresh}
    
    -- Idle sets

    sets.idle = {ammo="Ghastly Tathlum +1",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands=MerlinicHandsRefresh,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicFeetRefresh}

    sets.idle.Town = {ammo="Ghastly Tathlum +1",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands=MerlinicHandsRefresh,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=MerlinicFeetRefresh}

    -- Idle mode that keeps PDT gear on, but doesn't prevent normal gear swaps for precast/etc.
    sets.idle.PDT = {ammo="Staunch Tathlum",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands=MerlinicHandsRefresh",ring1="Defending Ring",ring2="Gelatinous Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Amalric Slops +1",feet=MerlinicFeetRefresh}
    sets.idle.Weak = sets.idle.PDT

    sets.idle.Death = {ammo="Ghastly Tathlum +1",
        head="Amalric Coif +1",neck="Src. Stole +2",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Amalric Doublet +1",hands="Spae. Gloves +3",ring1=DarkRing,ring2="Mephitas's Ring +1",
        back=TaranusMP,waist="Fucho-no-Obi",legs="Amalric Slops +1",feet=MerlinicFeetRefresh}
        
    -- Defense sets

    sets.defense.PDT = {ammo="Staunch Tathlum",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Spae. Gloves +3",ring1="Defending Ring",ring2="Gelatinous Ring +1",
        back=TaranusMP,waist="Luminary Sash",legs="Amalric Slops +1",feet=MerlinicFeetRefresh}

    sets.defense.MDT = {ammo="Staunch Tathlum",
        head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Shamash Robe",hands="Volte Bracers",ring1="Defending Ring",ring2=DarkRing,
        back=TaranusMP,waist="Luminary Sash",legs="Psycloth Lappas",feet="Volte Boots"}

    sets.Kiting = {}

    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    
    sets.buff['Mana Wall'] = {back=TaranusINT,feet="Wicce Sabots +1"}

    -- Engaged sets
    
    -- Haste
    -- Mythic = 60Acc
    -- Grip = 30Acc, Haste4, DT-6%
    -- Ammo ??  (Vanir Battery DA1% or Amar Cluster 10Acc)
    -- BSallet R15 = 53Acc, Haste8
    -- Combatants 15Acc, STP4
    -- Telos 10Acc DA1%, STP5
    -- Ear2 (Cessance 6Acc, DA3%, STP3 or Brutal DA5% STP1)
    -- Body (Agwu's 40Acc Haste3)
    -- Hands (Gazu R15 90+Acc, Haste15)
    -- Chirich+1 10Acc 6STP
    -- Chirich+1 10Acc 6STP
    -- Back DEX, 30Acc, 10STP or DA10%
    -- Waist Windbuffet+1  2Acc, TA2%, QA2%
    -- Jhakri +2 45Acc 9STP, Haste2
    -- Feet (Battlecast Gaiters 15Acc 5STP PDT-3%, Haste4)
    sets.engaged = {ammo="Staunch Tathlum",
        head="Blistering Sallet +1",neck="Combatant's Torque",ear1="Telos Earring",ear2="Brutal Earring",
        body="Onca Suit",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
        back=TaranusOA,waist="Windbuffet Belt +1"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    if spellMap == 'Cure' or spellMap == 'Curaga' then
        gear.default.obi_waist = "Sacro Cord"
    elseif spell.skill == 'Elemental Magic' then
        gear.default.obi_waist = "Sacro Cord"
        --if state.CastingMode.value == 'Proc' then
        --    classes.CustomClass = 'Proc'
        --end
    -- WS that use sash or obi : obi only better than sash when 2x weather or weather+day
    elseif spell.english == 'Vidohunir' then
        if (spell.element == world.weather_element and world.weather_intensity == 2) or 
           (spell.element == world.day_element and spell.element == world.weather_element) then
            equip(sets.obi[spell.element])
        end
    end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.action_type == 'Magic' then
		if spell.skill == 'Elemental Magic' or spell.English == "Death" then
         -- Nuking in sash, obi, or default waist depending on range, weather, and day.
         if (spell.element == world.weather_element and world.weather_intensity == 2) or 
            (spell.element == world.day_element and spell.element == world.weather_element) then
            equip(sets.obi[spell.element])
         elseif spell.target.distance < (10 + spell.target.model_size) then
            equip({waist="Orpheus's Sash"})
         elseif spell.element == world.day_element or spell.element == world.weather_element then
            equip(sets.obi[spell.element])
         end
		end
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    -- Lock Mana Wall set.
    if not spell.interrupted then
        if spell.english == 'Mana Wall' then
            enable('feet')
            enable('back')
            equip(sets.buff['Mana Wall'])
            disable('feet')
            disable('back')
        end
    end
end

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    -- Unlock Mana Wall set.
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

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
end

-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 15)
end
