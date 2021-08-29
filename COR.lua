-- COR TODO List (updated 10/12/2017)

-- See new FFXIAH guide for new ideas - need alot of gears
-- Weapons : R15 Fomalhaut, Complete Death Penalty (in progress), Armageddon (in that order)
-- More Reforged Armors
-- Neck +2
-- Savage Blade : Herc Legs?
-- Leaden : Death Penalty.  Improve Herc Aug?
-- Last Stand : Add'l work on Herc Legs, Boots w/ AGI, racc/ratt, WSD.
-- FC Set (utsu, /WHM)
-- Healing Set (/WHM)
-- Quick Draw MAcc set
-- Quick Draw Dmg set
-- Aeolian Edge set
-- DT sets
-- Wildfire set (for self SC)

--[[
    gs c toggle luzafring -- Toggles use of Luzaf Ring on and off
    
    Offense mode is melee or ranged.  Used ranged offense mode if you are engaged
    for ranged weaponskills, but not actually meleeing.
    Acc on offense mode (which is intended for melee) will currently use .Acc weaponskill
    mode for both melee and ranged weaponskills.  Need to fix that in core.
--]]


-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
    
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    -- Whether to use Luzaf's Ring
    state.LuzafRing = M(false, "Luzaf's Ring")
    -- Whether a warning has been given for low ammo
    state.warned = M(false)

    define_roll_values()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('LowAcc', 'TH', 'MedAcc', 'SB', 'Hybrid', 'HiAcc', 'MaxAcc', 'LowAccLeaden', 'MedAccLeaden', 'HiAccLeaden', 'MaxAccLeaden', 'RangedLeaden', 'RangedLStand')
    state.RangedMode:options('Normal', 'Acc')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT', 'Refresh')
    
    state.CombatForm:reset()
    if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
       state.CombatForm:set('DW')
       add_to_chat(122,'DW Form Set')
    else
       state.CombatForm:reset()
       add_to_chat(122,'DW Form Not Set')
    end

    gear.MeleeMain = "Naegling"
    gear.MeleeDWSub = "Blurred Knife +1"
    gear.MeleeDWMaxAccSub = "Fettering Blade"
    gear.MeleeShield = "Nusku Shield"
    gear.RangedLeadenMain = "Fettering Blade"
    gear.RangedDWLeadenSub = "Tauret"
    gear.RangedLStandMain = "Fettering Blade"
    gear.RangedDWLStandSub = "Kustawi +1"
    gear.RangedShield = "Nusku Shield"
    gear.MeleeGun = "Ataktos"
    gear.LeadenGun = "Fomalhaut"
    gear.LStandGun = "Fomalhaut"
    gear.PRGun = "Compensator"
    gear.RAbullet = "Chrono Bullet"
    gear.WSbullet = "Chrono Bullet"
    gear.MAbullet = "Chrono Bullet"
    gear.QDbullet = "Chrono Bullet"
    gear.PRcape = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}
    gear.TPcape = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}
    gear.MAcape = { name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
    gear.RAcape = { name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}
    gear.Snapcape = { name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Snapshot"+10',}}
    gear.STRWScape = { name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
    gear.LScape = { name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}}
    options.ammo_warning_limit = 15

    gear.HercGlovesAccTA = {name="Herculean Gloves", augments={'Accuracy+26','"Triple Atk."+4','DEX+4','Attack+7',}}
    gear.HercBootsAccTA = {name="Herculean Boots", augments={'Accuracy+17 Attack+17','"Triple Atk."+4','Accuracy+2','Attack+2',}}
    gear.HercHeadAGIMattWS = {name="Herculean Helm", augments={'Mag. Acc.+14 "Mag.Atk.Bns."+14','AGI+6','Mag. Acc.+15','"Mag.Atk.Bns."+12',}}
    gear.HercHandsAGIMattWS = {name="Herculean Gloves", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Weapon skill damage +3%','DEX+7','"Mag.Atk.Bns."+6',}}
    gear.HercLegsAGIMattWS = {name="Herculean Trousers", augments={'"Mag.Atk.Bns."+24','"Fast Cast"+3','AGI+11','Mag. Acc.+1',}}
    gear.HercLegsAGIRAttWS = {name="Herculean Trousers", augments={'Rng.Acc.+25 Rng.Atk.+25','Weapon skill damage +3%','AGI+6','Rng.Acc.+2',}}
    gear.HercFeetAGIMattWS = {name="Herculean Boots", augments={'Pet: Haste+4','"Mag.Atk.Bns."+15','Weapon skill damage +3%','Accuracy+15 Attack+15','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
    gear.HercFeetAGIRAttWS = {name="Herculean Boots", augments={'Rng.Acc.+19','Weapon skill damage +4%','AGI+5','Rng.Atk.+12',}}
    gear.CarmineBodyMND = {name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}}
    gear.CarmineBodyMAtt = {name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}}
    
    gear.DarkRing = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -5%','Spell interruption rate down -3%',}}
    
    -- Additional local binds
end


-- Called when this job file is unloaded (eg: job change)
function user_unload()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets

	-- Precast sets to enhance JAs
	sets.precast.JA['Snake Eye'] = {legs="Lanun Culottes +1"}
	sets.precast.JA['Wild Card'] = {feet="Lanun Bottes +3"}
	sets.precast.JA['Random Deal'] = {body="Lanun Frac +3"}
	
	sets.Obi = {}
	sets.Obi.Thunder = {waist='Hachirin-no-Obi'}
	sets.Obi.Water = {waist='Hachirin-no-Obi'}
	sets.Obi.Fire = {waist='Hachirin-no-Obi'}
	sets.Obi.Ice = {waist='Hachirin-no-Obi'}
	sets.Obi.Wind = {waist='Hachirin-no-Obi'}
	sets.Obi.Earth = {waist='Hachirin-no-Obi'}
	sets.Obi.Light = {waist='Hachirin-no-Obi'}
	sets.Obi.Dark = {waist='Hachirin-no-Obi'}
	
	sets.precast.CorsairRoll = {range=gear.PRGun,
      head="Lanun Tricorne +1", neck="Regal Necklace",
      hands="Chasseur's Gants +1",
      back=gear.PRcape,legs="Desultor Tassets"}
	
	--sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Chas. Culottes +1"})
	sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Chass. Bottes +1"})
	--sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Chass. Tricorne +1"})
	sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's Frac +1"})
	sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +1"})
	
	sets.precast.LuzafRing = {ring1="Luzaf's Ring"}
	sets.precast.FoldDoubleBust = {hands="Chasseur's Gants +1"}

	-- Waltz set (chr and vit)
   
   -- TODO : This   
	sets.precast.Waltz = {
		--head="Whirlpool Mask",
		--body="Iuitl Vest",hands="Iuitl Wristbands",
		--legs="Nahtirah Trousers",feet="Iuitl Gaiters +1"
   }
		
	-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

	sets.precast.FC = {
      head="Carmine Mask +1",ear1="Etiolation Earring",ear2="Loquacious Earring",
      hands="Leyline Gloves",ring1="Kishar Ring",ring2="Weather. Ring",
      legs=gear.HercLegsAGIMattWS,feet="Carmine Greaves +1"}
	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

   -- Snapshot set : Hit Cap 70% + any Rapid Shot if possible
   -- Aurore Beret +1 = 5%
   -- Oshosi Vest = 12%
   --   (Laksa. +3 Rapid Shot 20)
   -- Carmine FG +1 = 8% and 11 Rapid Shot
   -- Camalus Cape = 10%
   -- Impulse Belt = 3%
   --   (Yemaya Belt 5 Rapid Shot)
   -- Adhemar Kecks = 9% and 10 Rapid Shot 
   --   (Adhemar Kecks +1 10% and 11 Rapid Shot)
   --   (Laksa Trews +3 15%)
   -- Meg Jam +2 10%
   -- COR gifts 10%
   -- Total : 67% (Cap 70), 21 Rapid Shot
   
	sets.precast.RA = {ammo=gear.RAbullet,
		head="Aurore Beret +1",
		body="Oshosi Vest",hands="Carmine Fin. Ga. +1",
		back=gear.Snapcape,waist="Impulse Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
       
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {
		head="Meghanada Visor +2",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Laksa. Frac +3",hands="Meg. Gloves +2",ring1="Hajduk Ring",ring2="Hajduk Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Meg. Chausses +2",feet="Lanun Bottes +3"}

	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Evisceration'] = sets.precast.WS

	sets.precast.WS['Requiescat'] = {
      head="Lilitu Headpiece",neck="Fotia Gorget",ear1="Telos Earring",ear2="Moonshade Earring",
      body=gear.CarmineBodyMND,hands="Meg. Gloves +2",ring1="Stikini Ring +1",ring2="Rufescent Ring",
      back=gear.STRWScape,waist="Eschan Stone",legs="Meg. Chausses +2",feet="Carmine Greaves +1"}

	sets.precast.WS['Wildfire'] = {ammo=gear.MAbullet,
		head=gear.HercHeadAGIMattWS,neck="Baetyl Pendant",ear1="Regal Earring",ear2="Friomisi Earring",
		body="Lanun Frac +3",hands="Carmine Fin. Ga. +1",ring1="Dingir Ring",ring2="Epaminondas's Ring",
		back=gear.MAcape,waist="Eschan Stone",legs=gear.HercLegsAGIMattWS,feet="Lanun Bottes +3"}

   -- TODO : Better Herc Augments
	sets.precast.WS['Leaden Salute'] = {ammo=gear.MAbullet,
		head="Pixie Hairpin +1",neck="Baetyl Pendant",ear1="Friomisi Earring",ear2="Moonshade Earring",
		body="Lanun Frac +3",hands="Carmine Fin. Ga. +1",ring1="Dingir Ring",ring2="Archon Ring",
		back=gear.MAcape,waist="Eschan Stone",legs=gear.HercLegsAGIMattWS,feet="Lanun Bottes +3"}
		
   sets.precast.WS['Savage Blade'] = {
      head="Lilitu Headpiece",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
      body="Laksa. Frac +3",hands="Meg. Gloves +2",ring1="Epaminondas's Ring",ring2="Regal Ring",
      back=gear.STRWScape,waist="Sailfi Belt +1",legs="Meg. Chausses +2",feet="Lanun Bottes +3"}
	
	sets.precast.WS['Aeolian Edge'] = {ammo=gear.MAbullet,
		head=gear.HercHeadAGIMattWS,neck="Baetyl Pendant",ear1="Regal Earring",ear2="Friomisi Earring",
		body="Laksa. Frac +3",hands="Carmine Fin. Ga. +1",ring1="Epaminondas's Ring",ring2="Regal Ring",
		back=gear.MAcape,waist="Eschan Stone",legs=gear.HercLegsAGIMattWS,feet=gear.HercFeetAGIMattWS}

   -- 1225 RAcc / 1179 RAtt (w/ Fettering, Nusku, Fomalhaut, Chrono), +222 AGI, TP+750, WSD+33%, Belt/Neck, etc
	sets.precast.WS['Last Stand'] = {ammo=gear.WSbullet,
		head="Meghanada Visor +2",neck="Fotia Gorget",ear1="Moonshade Earring",ear2="Ishvara Earring",
		body="Laksa. Frac +3",hands="Meg. Gloves +2",ring1="Epaminondas's Ring",ring2="Regal Ring",
		back=gear.LScape,waist="Fotia Belt",legs=gear.HercLegsAGIRAttWS,feet="Lanun Bottes +3"}

   -- 1247 RAcc / 1201 RAtt (w/ Fettering, Nusku, Fomalhaut, Chrono), +233 AGI, TP+750, WSD+29%, Belt/Neck, etc
	sets.precast.WS['Last Stand'].Acc = {ammo=gear.WSbullet,
		head="Meghanada Visor +2",neck="Fotia Gorget",ear1="Moonshade Earring",ear2="Enervating Earring",
		body="Laksa. Frac +3",hands="Meg. Gloves +2",ring1="Hajduk Ring",ring2="Regal Ring",
		back=gear.LScape,waist="Fotia Belt",legs="Meg. Chausses +2",feet="Meg. Jam. +2"}
      
	-- TODO
   -- Midcast Sets
	sets.midcast.FastRecast = {
		--head="Whirlpool Mask",
		--body="Iuitl Vest",hands="Iuitl Wristbands",
		--legs="Manibozho Brais",feet="Iuitl Gaiters +1"
   }
		
	-- Specific spells
	sets.midcast.Utsusemi = sets.midcast.FastRecast

   sets.midcast.Cure = {
       head="Carmine Mask +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Loquacious Earring",
       body="Carm. Scale Mail",hands="Leyline Gloves",ring1="Stikini Ring +1",ring2="Sirona's Ring",
       back="Solemnity Cape",waist="Hachirin-no-Obi",legs="Carmine Cuisses +1",feet="Carmine Greaves +1"}
   
	sets.midcast.CorsairShot = {ammo=gear.QDbullet,
		head=gear.HercHeadAGIMattWS,neck="Baetyl Pendant",ear1="Regal Earring",ear2="Friomisi Earring",
		body="Lanun Frac +3",hands="Carmine Fin. Ga. +1",ring1="Dingir Ring",ring2="Shiva Ring +1",
		back=gear.MAcape,waist="Eschan Stone",legs=gear.HercLegsAGIMattWS,feet="Lanun Bottes +3"}

	sets.midcast.CorsairShot.Acc = {ammo=gear.QDbullet,
		head=gear.HercHeadAGIMattWS,neck="Sanctity Necklace",ear1="Regal Earring",ear2="Friomisi Earring",
		body="Lanun Frac +3",hands="Carmine Fin. Ga. +1",ring1="Dingir Ring",ring2="Shiva Ring +1",
		back=gear.MAcape,waist="Eschan Stone",legs=gear.HercLegsAGIMattWS,feet="Lanun Bottes +3"}
  
	sets.midcast.CorsairShot['Light Shot'] = {ammo=gear.QDbullet,
		head="Carmine Mask +1",neck="Sanctity Necklace",ear1="Digni. Earring",ear2="Gwati Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
		back=gear.MAcape,waist="Yemaya Belt",legs="Malignance Tights",feet="Malignance Boots"}
   sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']
	
	-- Ranged gear

   -- SJ WAR 1331 RAcc / 1081 RAtt (w/ Fettering, Nusku, Fomalhaut, Chrono)
	sets.midcast.RA = {ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Ilabrat Ring",ring2="Dingir Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Malignance Tights",feet="Malignance Boots"}    

   -- SJ WAR 1364 RAcc / 1141 RAtt (w/ Fettering, Nusku, Fomalhaut, Chrono)
   -- TODO : Beyla Earring
	sets.midcast.RA.Acc = {ammo=gear.RAbullet,
      head="Malignance Chapeau",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Laksa. Frac +3",hands="Malignance Gloves",ring1="Hajduk Ring",ring2="Regal Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Malignance Tights",feet="Malignance Boots"}

   -- SJ WAR 1271 RAcc / 1215 RAtt (w/ Fettering, Nusku, Fomalhaut, Chrono)
	sets.midcast.TS = {ammo=gear.RAbullet,
		head="Oshosi Mask",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Chasseur's Frac +1",hands="Malignance Gloves",ring1="Ilabrat Ring",ring2="Hajduk Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Oshosi Trousers",feet="Malignance Boots"}

   -- SJ WAR 1302 RAcc / 1201 RAtt (w/ Fettering, Nusku, Fomalhaut, Chrono), TS +30% (90%), +10 DMG, 34 STP, 8 Crit%
	sets.midcast.TS.Acc = {ammo=gear.RAbullet,
		head="Oshosi Mask",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Oshosi Vest",hands="Malignance Gloves",ring1="Hajduk Ring",ring2="Hajduk Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Oshosi Trousers",feet="Malignance Boots"}
      
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {
      --neck="Wiglen Gorget",ring1="Sheltered Ring",ring2="Paguroidea Ring"
   }
	
	-- Idle sets
	sets.idle = {
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2=gear.DarkRing,
      back="Solemnity Cape",waist="Flume Belt",legs="Carmine Cuisses +1",feet="Malignance Boots"}

	sets.idle.Town = {main=gear.RangedLStandMain,sub=gear.RangedShield,range=gear.LStandGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Ilabrat Ring",ring2="Dingir Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Malignance Tights",feet="Malignance Boots"}
   sets.idle.DW = sets.idle
	sets.idle.DW.Town = {main=gear.RangedLStandMain,sub=gear.RangedShield,range=gear.LStandGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Iskur Gorget",ear1="Telos Earring",ear2="Enervating Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Ilabrat Ring",ring2="Dingir Ring",
		back=gear.RAcape,waist="Yemaya Belt",legs="Malignance Tights",feet="Malignance Boots"}
     
	-- Defense sets
   
   -- PDT : 45% (cap 50%)
   -- MDT : 22% (Assume shellV = at least 24%, cap 50%)
   -- MDB : 23% 
   -- MEva : 292
	sets.defense.PDT = {
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}

   -- PDT : 22% (cap 50%) 
   -- MDT : 23% (Assume shellV = at least 24%, cap 50%)
   -- MDB : 31% 
   -- MEva : 466
   -- Mubvum. Mantle, (Dampening Tam) (Warder's Charm) (Shadow Ring?), Ahosi Leggings
	sets.defense.MDT = {
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2=gear.DarkRing,
      back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}      
	
	sets.Kiting = {}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Normal melee group
	sets.engaged.LowAcc = {main=gear.MeleeMain,sub=gear.MeleeShield,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Iskur Gorget",ear1="Brutal Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=gear.HercBootsAccTA}
	sets.engaged.LowAccLeaden = set_combine(sets.engaged.LowAcc, {range=gear.LeadenGun})
   
   sets.engaged.DW = {}
	sets.engaged.DW.LowAcc = {main=gear.MeleeMain,sub=gear.MeleeDWSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Iskur Gorget",ear1="Suppanomimi",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=gear.HercBootsAccTA}
   sets.engaged.DW.LowAccLeaden = set_combine(sets.engaged.DW.LowAcc, {range=gear.LeadenGun})

	sets.engaged.MedAcc = {main=gear.MeleeMain,sub=gear.MeleeShield,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Brutal Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Samnuha Tights",feet=gear.HercBootsAccTA}
	sets.engaged.MedAccLeaden = set_combine(sets.engaged.MedAcc, {range=gear.LeadenGun})
      
	sets.engaged.DW.MedAcc = {main=gear.MeleeMain,sub=gear.MeleeDWSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Suppanomimi",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Samnuha Tights",feet=gear.HercBootsAccTA}
   sets.engaged.DW.MedAccLeaden = set_combine(sets.engaged.DW.MedAcc, {range=gear.LeadenGun}) 

	sets.engaged.DW.SB = {main=gear.MeleeMain,sub=gear.MeleeDWSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Dampening Tam",neck="Combatant's Torque",ear1="Suppanomimi",ear2="Digni. Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Volte Tights",feet=gear.HercBootsAccTA}
   sets.engaged.DW.SBLeaden = set_combine(sets.engaged.DW.SB, {range=gear.LeadenGun})   
   
	sets.engaged.DW.Hybrid = {main=gear.MeleeMain,sub=gear.MeleeDWSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Suppanomimi",ear2="Telos Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Malignance Tights",feet="Malignance Boots"}

	sets.engaged.HiAcc = {main=gear.MeleeMain,sub=gear.MeleeShield,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet=gear.HercBootsAccTA}
	sets.engaged.HiAccLeaden = set_combine(sets.engaged.HiAcc, {range=gear.LeadenGun})

	sets.engaged.TH = {main=gear.MeleeMain,sub=gear.MeleeShield,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Volte Bracers",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Chaac Belt",legs="Carmine Cuisses +1",feet="Volte Boots"}
   sets.engaged.DW.TH = {main=gear.MeleeMain,sub=gear.MeleeDWSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Volte Bracers",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Chaac Belt",legs="Carmine Cuisses +1",feet="Volte Boots"}
   
	sets.engaged.DW.HiAcc = {main=gear.MeleeMain,sub=gear.MeleeDWSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet=gear.HercBootsAccTA}
   sets.engaged.DW.HiAccLeaden = set_combine(sets.engaged.DW.HiAcc, {range=gear.LeadenGun})

	sets.engaged.MaxAcc = {main=gear.MeleeMain,sub=gear.MeleeShield,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
		body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet="Meg. Jam. +2"}
	sets.engaged.MaxAccLeaden = set_combine(sets.engaged.MaxAcc, {range=gear.LeadenGun})
      
	sets.engaged.DW.MaxAcc = {main=gear.MeleeMain,sub=gear.MeleeDWMaxAccSub,range=gear.MeleeGun,ammo=gear.RAbullet,
		head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
		body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
		back=gear.TPcape,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet="Meg. Jam. +2"}
   sets.engaged.DW.MaxAccLeaden = set_combine(sets.engaged.DW.MaxAcc, {range=gear.LeadenGun})

   -- Using a DT / MEva hybrid set to try to mitigate as much dmg as possible for these ranged sets
   -- PDT : +30% (cap 50%) 
   -- MDT : 22% (Assume shellV = at least 24%, cap 50%)
   -- MDB : 28% 
   -- MEva : 477
   
	sets.engaged.RangedLeaden = {main=gear.RangedLeadenMain,sub=gear.RangedShield,range=gear.LeadenGun, ammo=gear.RAbullet,
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2=gear.DarkRing,
      back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.RangedLeaden = set_combine(sets.engaged.RangedLeaden, {sub=gear.RangedDWLeadenSub})

	sets.engaged.RangedLStand = {main=gear.RangedLStandMain,sub=gear.RangedShield,range=gear.LStandGun, ammo=gear.RAbullet,
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2=gear.DarkRing,
      back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.RangedLStand = set_combine(sets.engaged.RangedLStand, {sub=gear.RangedDWLStandSub})
   
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    -- Equip obis for weaponskills that use obis and quick draw
    if spell.english == 'Leaden Salute' then
      if spell.element == world.day_element or spell.element == world.weather_element then
        equip(sets.Obi[spell.element])
      end
    elseif spell.english == 'Wildfire' then
      if spell.element == world.day_element or spell.element == world.weather_element then
        equip(sets.Obi[spell.element])
      end
    elseif spell.type == 'CorsairShot' then
      if spell.element == world.day_element or spell.element == world.weather_element then
        equip(sets.Obi[spell.element])
      end
    end
    -- gear sets
    if (spell.type == 'CorsairRoll' or spell.english == "Double-Up") and state.LuzafRing.value then
      equip(sets.precast.LuzafRing)
    elseif spell.type == 'CorsairShot' and state.CastingMode.value == 'Resistant' then
      classes.CustomClass = 'Acc'
    elseif spell.english == 'Fold' and buffactive['Bust'] == 2 then
      if sets.precast.FoldDoubleBust then
        equip(sets.precast.FoldDoubleBust)
        eventArgs.handled = true
      end
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Ranged Attack' then
        if buffactive['Triple Shot'] then
           if state.RangedMode.current == 'Acc' then
              equip(sets.midcast.TS.Acc)
           else
              equip(sets.midcast.TS)
           end
        end
    end    
end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
    if spell.type == 'CorsairRoll' and not spell.interrupted then
        display_roll_info(spell)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Return a customized weaponskill mode to use for weaponskill sets.
-- Don't return anything if you're not overriding the default value.
function get_custom_wsmode(spell, spellMap, default_wsmode)
end

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
end

function job_self_command(cmdParams, eventArgs)
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
    local msg = ''
    
    msg = msg .. 'Off.: '..state.OffenseMode.current
    msg = msg .. ', Rng.: '..state.RangedMode.current
    msg = msg .. ', WS.: '..state.WeaponskillMode.current
    msg = msg .. ', QD.: '..state.CastingMode.current

    if state.DefenseMode.value ~= 'None' then
        local defMode = state[state.DefenseMode.value ..'DefenseMode'].current
        msg = msg .. ', Defense: '..state.DefenseMode.value..' '..defMode
    end
    
    if state.Kiting.value then
        msg = msg .. ', Kiting'
    end
    
    if state.PCTargetMode.value ~= 'default' then
        msg = msg .. ', Target PC: '..state.PCTargetMode.value
    end

    if state.SelectNPCTargets.value then
        msg = msg .. ', Target NPCs'
    end

    msg = msg .. ', Roll Size: ' .. (state.LuzafRing.value and 'Large') or 'Small'
    
    add_to_chat(122, msg)

    eventArgs.handled = true
end


-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function define_roll_values()
    rolls = {
        ["Corsair's Roll"]   = {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"]       = {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"]    = {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"]       = {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"]     = {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"]    = {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Puppet Roll"]      = {lucky=3, unlucky=7, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"]      = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"]      = {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"]       = {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"]     = {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"]    = {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"]     = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"]   = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"]   = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Drachen Roll"]     = {lucky=4, unlucky=8, bonus="Pet Accuracy"},
        ["Gallant's Roll"]   = {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"]    = {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"]    = {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"]   = {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Bolter's Roll"]    = {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"]    = {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"]   = {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"]   = {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies' Roll"]     = {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"]     = {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"]   = {lucky=4, unlucky=8, bonus="Counter Rate"},
        ["Runeist's Roll"]   = {lucky=4, unlucky=8, bonus="Magic Evasion"},
    }
end

function display_roll_info(spell)
    rollinfo = rolls[spell.english]
    if rollinfo then
        add_to_chat(104, spell.english..' - '..rollinfo.bonus..' - Lucky '..tostring(rollinfo.lucky)..' - Unlucky '..tostring(rollinfo.unlucky)..'.')
    end
end
