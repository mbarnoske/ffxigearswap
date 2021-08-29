-- BLU TODO List (LOTS of stuff... maybe work on it someday)

-- FC, Blue Magic, Burst Affinity Set, DT set(s), Melee TP and CDC Sets, More Refresh+ Idle Gear
-- Tizona, AF+3, Relic+3, MAcc, Acc, Efflux Legs

-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
   mote_include_version = 2
    
   -- Load and initialize the include file.
   include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
   state.Buff['Burst Affinity'] = buffactive['Burst Affinity'] or false
   state.Buff['Chain Affinity'] = buffactive['Chain Affinity'] or false
   state.Buff.Convergence = buffactive.Convergence or false
   state.Buff.Diffusion = buffactive.Diffusion or false
   state.Buff.Efflux = buffactive.Efflux or false
    
   state.Buff['Unbridled Learning'] = buffactive['Unbridled Learning'] or false

   blue_magic_maps = {}
    
   -- Mappings for gear sets to use for various blue magic spells.
   -- While Str isn't listed for each, it's generally assumed as being at least
   -- moderately signficant, even for spells with other mods.
    
   -- Physical Spells --
    
   -- Physical spells with no particular (or known) stat mods
   blue_magic_maps.Physical = S{
      'Bilgestorm'
   }

   -- Spells with heavy accuracy penalties, that need to prioritize accuracy first.
   blue_magic_maps.PhysicalAcc = S{
      'Heavy Strike',
   }

   -- Physical spells with Str stat mod
   blue_magic_maps.PhysicalStr = S{
      'Battle Dance','Bloodrake','Death Scissors','Dimensional Death',
      'Empty Thrash','Quadrastrike','Sinker Drill','Spinal Cleave',
      'Uppercut','Vertical Cleave'
   }
        
   -- Physical spells with Dex stat mod
   blue_magic_maps.PhysicalDex = S{
      'Amorphic Spikes','Asuran Claws','Barbed Crescent','Claw Cyclone','Disseverment',
      'Foot Kick','Frenetic Rip','Goblin Rush','Hysteric Barrage','Paralyzing Triad',
      'Seedspray','Sickle Slash','Smite of Rage','Terror Touch','Thrashing Assault',
      'Vanity Dive'
   }
        
   -- Physical spells with Vit stat mod
   blue_magic_maps.PhysicalVit = S{
      'Body Slam','Cannonball','Delta Thrust','Glutinous Dart','Grand Slam',
      'Power Attack','Quad. Continuum','Sprout Smack','Sub-zero Smash'
   }
        
   -- Physical spells with Agi stat mod
   blue_magic_maps.PhysicalAgi = S{
      'Benthic Typhoon','Feather Storm','Helldive','Hydro Shot','Jet Stream',
      'Pinecone Bomb','Spiral Spin','Wild Oats'
   }

   -- Physical spells with Int stat mod
   blue_magic_maps.PhysicalInt = S{
      'Mandibular Bite','Queasyshroom'
   }

   -- Physical spells with Mnd stat mod
   blue_magic_maps.PhysicalMnd = S{
      'Ram Charge','Screwdriver','Tourbillion'
   }

   -- Physical spells with Chr stat mod
   blue_magic_maps.PhysicalChr = S{
      'Bludgeon'
   }

   -- Physical spells with HP stat mod
   blue_magic_maps.PhysicalHP = S{
      'Final Sting'
   }

   -- Magical Spells --

   -- Magical spells with the typical Int mod
   blue_magic_maps.Magical = S{
      'Anvil Lightning','Blinding Fulgor','Scouring Spate',
      'Searing Tempest','Silent Storm','Diffusion Ray','Spectral Floe',
      'Blastbomb','Blazing Bound','Bomb Toss','Cursed Sphere','Dark Orb','Death Ray',
      'Diffusion Ray','Droning Whirlwind','Embalming Earth','Firespit','Foul Waters',
      'Ice Break','Leafstorm','Maelstrom','Rail Cannon','Regurgitation','Rending Deluge',
      'Retinal Glare','Subduction','Tem. Upheaval','Water Bomb','Swipe'
   }

   -- Magical spells with a primary Mnd mod
   blue_magic_maps.MagicalMnd = S{
      'Acrid Stream','Evryone. Grudge','Magic Hammer','Mind Blast'
   }

   -- Magical spells with a primary Chr mod
   blue_magic_maps.MagicalChr = S{
      'Eyes On Me','Mysterious Light'
   }

   -- Magical spells with a Vit stat mod (on top of Int)
   blue_magic_maps.MagicalVit = S{
      'Thermal Pulse'
   }

   -- Magical spells with a Dex stat mod (on top of Int)
   blue_magic_maps.MagicalDex = S{
      'Charged Whisker','Gates of Hades'
   }
   
   -- Magic spells that can use dark affinity gear
   blue_magic_maps.MagicalDark = S{
      'Tenebral Crush','Palling Salvo'
   }
   
   -- Magical spells (generally debuffs) that we want to focus on magic accuracy over damage.
   -- Add Int for damage where available, though.
   blue_magic_maps.MagicAccuracy = S{
      'Entomb','1000 Needles','Absolute Terror','Actinic Burst','Auroral Drape','Awful Eye',
      'Blank Gaze','Blistering Roar','Blood Drain','Blood Saber','Chaotic Eye',
      'Cimicine Discharge','Cold Wave','Corrosive Ooze','Demoralizing Roar','Digest',
      'Dream Flower','Enervation','Feather Tickle','Filamented Hold','Frightful Roar',
      'Geist Wall','Hecatomb Wave','Infrasonics','Jettatura','Light of Penance',
      'Lowing','Mind Blast','Mortal Ray','MP Drainkiss','Osmosis','Reaving Wind',
      'Sandspin','Sandspray','Sheep Song','Soporific','Sound Blast','Stinking Gas',
      'Sub-zero Smash','Venom Shell','Voracious Trunk','Yawn'
   }
        
   -- Breath-based spells
   blue_magic_maps.Breath = S{
      'Bad Breath','Flying Hip Press','Frost Breath','Heat Breath',
      'Hecatomb Wave','Magnetite Cloud','Poison Breath','Radiant Breath','Self-Destruct',
      'Thunder Breath','Vapor Spray','Wind Breath'
   }

   -- Stun spells
   blue_magic_maps.Stun = S{
      'Blitzstrahl','Frypan','Head Butt','Sudden Lunge','Tail slap','Temporal Shift',
      'Thunderbolt','Whirl of Rage'
   }
        
   -- Healing spells
   blue_magic_maps.Healing = S{
      'Healing Breeze','Magic Fruit','Plenilune Embrace','Pollen','Restoral','White Wind',
      'Wild Carrot'
   }
    
   -- Buffs that depend on blue magic skill
   blue_magic_maps.SkillBasedBuff = S{
      'Barrier Tusk','Diamondhide','Magic Barrier','Metallic Body','Occultation','Plasma Charge',
      'Pyric Bulwark','Reactor Cool'
   }

   -- Other general buffs
   blue_magic_maps.Buff = S{
      'Amplification','Animating Wail','Carcharian Verve','Cocoon',
      'Erratic Flutter','Exuviation','Fantod','Feather Barrier','Harden Shell',
      'Memento Mori','Nat. Meditation','Orcish Counterstance','Refueling',
      'Regeneration','Saline Coat','Triumphant Roar','Warm-Up','Winds of Promyvion',
      'Zephyr Mantle'
   }
    
   -- Refresh
   blue_magic_maps.Refresh = S{
      'Battery Charge'
   }
    
   -- Spells that require Unbridled Learning to cast.
   unbridled_spells = S{
      'Absolute Terror','Bilgestorm','Blistering Roar','Bloodrake','Carcharian Verve',
      'Crashing Thunder','Droning Whirlwind','Gates of Hades','Harden Shell','Polar Roar',
      'Pyric Bulwark','Thunderbolt','Tourbillion','Uproot'
   }
   
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()

   state.OffenseMode:options('Standard', 'AccuracyLite', 'AccuracyMedium', 'AccuracyFull', 'AccuracyExtreme', 'Refresh')
   state.WeaponskillMode:options('Normal', 'Acc')
   state.CastingMode:options('Normal', 'Resistant')
   state.IdleMode:options('Normal', 'DT', 'DTMovement')
   state.PhysicalDefenseMode:options('PDT')
   state.MagicalDefenseMode:options('MDT')

   state.WeaponType = M{['description'] = 'Weapon Type'}
   state.WeaponType:options('Sword', 'Club')
   state.WeaponType:set('Sword')
   
   -- Additional local binds
   send_command('bind ^` input /ja "Chain Affinity" <me>')
   send_command('bind @` input /ja "Efflux" <me>')
   send_command('bind !` input /ja "Burst Affinity" <me>')
   send_command('wait 0.1; unbind !f11; wait 0.1; bind !f11 gs c cycle WeaponType')

end


-- Called when this job file is unloaded (eg: job change)
function user_unload()
   send_command('unbind ^`')
   send_command('unbind !`')
   send_command('unbind @`')
end


-- Set up gear sets.
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
    
   DarkRing = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -5%','Spell interruption rate down -3%',}}
   HercGlovesAccTA = {name="Herculean Gloves", augments={'Accuracy+26','"Triple Atk."+4','DEX+4','Attack+7',}}
   HercGlovesCrit = { name="Herculean Gloves", augments={'Accuracy+27','Crit.hit rate+4','DEX+5','Attack+2',}}
   HercBootsAccTA = {name="Herculean Boots", augments={'Accuracy+17 Attack+17','"Triple Atk."+4','Accuracy+2','Attack+2',}}
   RosemertasTP = {name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}
   RosemertasDEXWS = {name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}}
   RosemertasINT = {name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}}

   --sets.buff['Burst Affinity'] = {feet="Mavi Basmak +2"}
   sets.buff['Burst Affinity'] = {}
   --sets.buff['Chain Affinity'] = {head="Mavi Kavuk +2", feet="Assimilator's Charuqs"}
   --sets.buff.Convergence = {head="Luhlaza Keffiyeh"}
   sets.buff.Diffusion = {feet="Luhlaza Charuqs"}
   --sets.buff.Enchainment = {body="Luhlaza Jubbah"}
   --sets.buff.Efflux = {legs="Mavi Tayt +2"}
   sets.buff.Efflux = {}

   -- Sword / Club swaps 
   sets.Weapon = {}
   sets.Weapon.Sword = { main="Naegling", sub="Almace" }
   sets.Weapon.Club = { main="Maxentius", sub="Bunzi's Rod" }
   
   -- Precast Sets
    
   -- Precast sets to enhance JAs
   sets.precast.JA['Azure Lore'] = {hands="Mirage Bazubands +2"}

   -- Waltz sets
   sets.precast.Waltz = {}
   sets.precast.Waltz['Healing Waltz'] = {}

   -- Fast cast sets for spells

   -- Carmine Mask +1 +14%
   -- Enchanter Ear +1 +2%
	-- Loq Earring +2%
	-- Helios Jacket +8%
	-- Leyline Gloves +7%
	-- Weatherspoon Ring +5%
   -- Kishar Ring +4%
   -- Swith Cape +3%
   -- Witful Belt +3%
   -- Psycloth Lappas +7%
   -- Carmine Greaves +1 +8%   
   -- = 63% FC    
   
   -- 63% + 15% FC Trait (Erratic Flutter) = 78% (80% cap)
  
   sets.precast.FC = {ammo="Impatiens",
      head="Carmine Mask +1",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
      body="Helios Jacket",hands="Leyline Gloves",ring1="Weather. Ring",ring2="Kishar Ring",
      back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet="Carmine Greaves +1"}
        
   --sets.precast.FC['Blue Magic'] = set_combine(sets.precast.FC, {body="Hashishin Mintan +1"})
   sets.precast.FC['Blue Magic'] = sets.precast.FC
       
   -- Idle sets
    
   sets.idle = {ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Shamash Robe",hands="Aya. Manopolas +2",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back="Solemnity Cape",waist="Flume Belt",legs="Carmine Cuisses +1",feet="Malignance Boots"}
    
   sets.idle.DT = {ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Shamash Robe",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}

   sets.idle.DTMovement = {ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Shamash Robe",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back="Solemnity Cape",waist="Flume Belt",legs="Carmine Cuisses +1",feet="Malignance Boots"}
      
   sets.idle.Town = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Hetairoi Ring",
      back=RosemertasTP,waist="Windbuffet Belt +1",legs="Carmine Cuisses +1",feet=HercBootsAccTA}

   -- TP Sets
   
   sets.engaged = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Hetairoi Ring",
      back=RosemertasTP,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}

   sets.engaged.Standard = sets.engaged
      
   sets.engaged.AccuracyLite = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Chirich Ring +1",
      back=RosemertasTP,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}

   sets.engaged.AccuracyMedium = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
      back=RosemertasTP,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}
      
   sets.engaged.AccuracyFull = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
      back=RosemertasTP,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet=HercBootsAccTA}
     
   sets.engaged.AccuracyExtreme = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Digni. Earring",ear2="Telos Earring",
      body="Ayanmo Corazza +2",hands="Aya. Manopolas +2",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
      back=RosemertasTP,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet=HercBootsAccTA}
      
   -- ?
   sets.engaged.Refresh = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Hetairoi Ring",
      back=RosemertasTP,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}
      
   -- Melee/Defense sets
   -- PDT : Maximize PDT while still being melee viable
   -- MDT : Maximize MDT w/shell assumed, MEva, while being melee viable

   --- PDT / MDT / MEva (Cap : 50%, 50%)
   -- (Shell V) 0% / (24%)
   -- Malignance Chapeau 6% PDT / 6% MDT / 123 MEva / 5 MDB
   -- Loricate Torque +1 - 6% / 6%
   -- Ayanmo Corazza +2 - 6% / 6% / 64
   -- Herc Gloves - 2% / 0% / 43
   -- Left Dark Ring - 4% / 5%
   -- Right Dark Ring - 4% / 4%
   -- Solemnity Cape - 4% / 4%
   -- Flume Belt - 4% / 0%
   -- Aya. Cosciales +2 - 4% / 4% / 69
   -- Herc Boots - 2% / 0% / 75
   -- Totals 38% (38%) / 34% (58%) / 304

   sets.defense.PDT = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Telos Earring",ear2="Suppanomimi",
      body="Ayanmo Corazza +2",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet=HercBootsAccTA}

   --- PDT / MDT / MEva (Cap : 50%, 50%)
   -- (Shell V) 0% / 24%
   -- Dampening Tam - 0%/4%/43 (+1MDB)
   -- Loricate Torque +1 - 6% / 6%
   -- Etiolation Earring - 0% / 3%
   -- Adhemar Jacket +1 - 0%/0%/69
   -- Herc Gloves - 2%/0%/43 . (Leyline Gloves could give +19MEva - 0%/0%/62)
   -- Left Dark Ring - 4% / 5%
   -- Right Dark Ring - 4% / 4%
   -- Solemnity Cape - 4% / 4%
   -- Samnuha - 0%/0%/75 (+1 MDB) (Carmine+1 could give +5MEva - 0%/0%/80)
   -- Herc - 2%/0%/75
   
   -- Totals 22% (22%) / 26% (50%) / 305 
      
   sets.defense.MDT = {ammo="Ginsen",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Suppanomimi",
      body="Adhemar Jacket +1",hands="Malignance Gloves",ring1="Defending Ring",ring2=DarkRing,
      back="Solemnity Cape",waist="Kentarch Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {}
    sets.precast.WS.Acc = set_combine(sets.precast.WS)
    
    sets.precast.WS['Chant du Cygne'] = {ammo="Ginsen",
        head="Malignance Chapeau",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Begrudging Ring",
        back=RosemertasDEXWS,waist="Fotia Belt",legs="Zoar Subligar +1",feet="Thereoid Greaves"}
        
    sets.precast.WS['Chant du Cygne'].Acc = {ammo="Ginsen",
        head="Malignance Chapeau",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Epona's Ring",ring2="Begrudging Ring",
        back=RosemertasDEXWS,waist="Fotia Belt",legs="Zoar Subligar +1",feet="Thereoid Greaves"}
        
    sets.precast.WS['Requiescat'] = {ammo="Floestone",
        head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Epona's Ring",ring2="Rufescent Ring",
        back=RosemertasDEXWS,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Carmine Greaves +1"}
       
    sets.precast.WS['Requiescat'].Acc = {ammo="Hasty Pinion +1",
        head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Epona's Ring",ring2="Rufescent Ring",
        back=RosemertasDEXWS,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Carmine Greaves +1"}

    sets.precast.WS['Savage Blade'] = {ammo="Floestone",
        head="Jhakri Coronal +2",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
        body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
        back=RosemertasDEXWS,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
       
    sets.precast.WS['Savage Blade'].Acc = {ammo="Floestone",
        head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Ishvara Earring",ear2="Moonshade Earring",
        body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
        back=RosemertasDEXWS,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}        

    sets.precast.WS['Black Halo'] = {ammo="Floestone",
        head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Epona's Ring",ring2="Rufescent Ring",
        back=RosemertasDEXWS,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Carmine Greaves +1"}
       
    sets.precast.WS['Black Halo'].Acc = {ammo="Floestone",
        head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Epona's Ring",ring2="Rufescent Ring",
        back=RosemertasDEXWS,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Carmine Greaves +1"}        

-------------------------------------------------------------------------------------------------  
    
    -- Midcast Sets

    sets.midcast.FastRecast = {ammo="Impatiens",
      head="Carmine Mask +1",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
      body="Helios Jacket",hands="Leyline Gloves",ring1="Weather. Ring",ring2="Kishar Ring",
      back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet="Carmine Greaves +1"}
        
    sets.midcast['Blue Magic'] = {}
    
    -- Physical Spells --
    
    sets.midcast['Blue Magic'].Physical = {}
    sets.midcast['Blue Magic'].PhysicalAcc = {}
    -- 'Battle Dance','Bloodrake','Death Scissors','Dimensional Death','Empty Thrash','Quadrastrike','Sinker Drill','Spinal Cleave',
    -- 'Uppercut','Vertical Cleave'
    sets.midcast['Blue Magic'].PhysicalStr = {}
    sets.midcast['Blue Magic'].PhysicalDex = {}
    sets.midcast['Blue Magic'].PhysicalVit = {}
    sets.midcast['Blue Magic'].PhysicalAgi = {}
    sets.midcast['Blue Magic'].PhysicalInt = {}
    sets.midcast['Blue Magic'].PhysicalMnd = {}
    sets.midcast['Blue Magic'].PhysicalChr = {}
    sets.midcast['Blue Magic'].PhysicalHP = {}

    -- Magical Spells --
    
    -- 'Anvil Lightning','Blinding Fulgor','Entomb','Palling Salvo','Scouring Spate','Searing Tempest','Silent Storm',
    -- 'Diffusion Ray','Spectral Floe','Blastbomb','Blazing Bound','Bomb Toss','Cursed Sphere','Dark Orb','Death Ray',
    -- 'Diffusion Ray','Droning Whirlwind','Embalming Earth','Firespit','Foul Waters','Ice Break','Leafstorm','Maelstrom',
    -- 'Rail Cannon','Regurgitation','Rending Deluge','Retinal Glare','Subduction','Tem. Upheaval','Water Bomb','Swipe'
    sets.midcast['Blue Magic'].Magical = {ammo="Ghastly Tathlum +1",
        head="Jhakri Coronal +2",neck="Baetyl Pendant",ear1="Regal Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Shiva Ring +1",ring2="Shiva Ring +1",
        back=RosemertasINT,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}

    sets.midcast['Blue Magic'].Magical.Resistant = sets.midcast['Blue Magic'].Magical

    -- 'Acrid Stream','Evryone. Grudge','Magic Hammer','Mind Blast'
    sets.midcast['Blue Magic'].MagicalMnd = sets.midcast['Blue Magic'].Magical
    
    sets.midcast['Blue Magic'].MagicalChr = sets.midcast['Blue Magic'].Magical
    sets.midcast['Blue Magic'].MagicalVit = sets.midcast['Blue Magic'].Magical

    -- 'Charged Whisker','Gates of Hades'
    sets.midcast['Blue Magic'].MagicalDex = sets.midcast['Blue Magic'].Magical
    
    -- 'Tenebral Crush','Palling Salvo'
    sets.midcast['Blue Magic'].MagicalDark = {ammo="Ghastly Tathlum +1",
        head="Pixie Hairpin +1",neck="Baetyl Pendant",ear1="Regal Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Archon Ring",ring2="Shiva Ring +1",
        back=RosemertasINT,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}

    -- '1000 Needles','Absolute Terror','Actinic Burst','Auroral Drape','Awful Eye','Blank Gaze','Blistering Roar',
    -- 'Blood Drain','Blood Saber','Chaotic Eye','Cimicine Discharge','Cold Wave','Corrosive Ooze','Demoralizing Roar',
    -- 'Digest','Dream Flower','Enervation','Feather Tickle','Filamented Hold','Frightful Roar','Geist Wall',
    -- 'Hecatomb Wave','Infrasonics','Jettatura','Light of Penance','Lowing','Mind Blast','Mortal Ray','MP Drainkiss',
    -- 'Osmosis','Reaving Wind','Sandspin','Sandspray','Sheep Song','Soporific','Sound Blast','Stinking Gas',
    -- 'Sub-zero Smash','Venom Shell','Voracious Trunk','Yawn'
    sets.midcast['Blue Magic'].MagicAccuracy = {ammo="Pemphredo Tathlum",
        head="Carmine Mask +1",neck="Erra Pendant",ear1="Digni. Earring",ear2="Gwati Earring",
        body="Amalric Doublet +1",hands="Jhakri Cuffs +2",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Cornflower Cape",waist="Luminary Sash",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}

    sets.midcast['Blue Magic'].Breath = {}

    -- 'Blitzstrahl','Frypan','Head Butt','Sudden Lunge','Tail slap','Temporal Shift','Thunderbolt','Whirl of Rage'
    sets.midcast['Blue Magic'].Stun = sets.midcast['Blue Magic'].MagicAccuracy
        
    -- 'White Wind'
    sets.midcast['Blue Magic']['White Wind'] = {ammo="Impatiens",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Enchntr. Earring +1",ear2="Etiolation Earring",
        body="Carm. Scale Mail",hands="Hieros Mittens",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Twilight Cape",waist="Luminary Sash",legs="Carmine Cuisses +1",feet="Medium's Sabots"}

    -- 'Healing Breeze','Magic Fruit','Plenilune Embrace','Pollen','Restoral','Wild Carrot'
    sets.midcast['Blue Magic'].Healing = {ammo="Impatiens",
        head="Amalric Coif +1",neck="Sanctity Necklace",ear1="Enchntr. Earring +1",ear2="Etiolation Earring",
        body="Carm. Scale Mail",hands="Hieros Mittens",ring1="Stikini Ring +1",ring2="Rufescent Ring",
        back="Cornflower Cape",waist="Luminary Sash",legs="Carmine Cuisses +1",feet="Medium's Sabots"}

    -- 'Barrier Tusk','Diamondhide','Magic Barrier','Metallic Body','Occultation','Plasma Charge','Pyric Bulwark','Reactor Cool'
    sets.midcast['Blue Magic'].SkillBasedBuff = {ammo="Impatiens",
        head="Amalric Coif +1",neck="Incanter's Torque",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
        body="Helios Jacket",hands="Leyline Gloves",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
        back="Cornflower Cape",waist="Witful Belt",legs="Psycloth Lappas",feet="Luhlaza Charuqs"}

    -- 'Amplification','Animating Wail','Battery Charge','Carcharian Verve','Cocoon','Erratic Flutter','Exuviation','Fantod',
    -- 'Feather Barrier','Harden Shell','Memento Mori','Nat. Meditation','Orcish Counterstance','Refueling','Regeneration',
    -- 'Saline Coat','Triumphant Roar','Warm-Up','Winds of Promyvion','Zephyr Mantle'
    -- (Fast Recast only)
    sets.midcast['Blue Magic'].Buff = {}

    -- 'Battery Charge'
    sets.midcast['Blue Magic'].Refresh = {head="Amalric Coif +1"}

    --sets.midcast.Protect = {ring1="Sheltered Ring"}
    --sets.midcast.Protectra = {ring1="Sheltered Ring"}
    --sets.midcast.Shell = {ring1="Sheltered Ring"}
    --sets.midcast.Shellra = {ring1="Sheltered Ring"}
    
    -- Gear for learning spells: +skill and AF hands.
    sets.Learning = {hands="Assimilator's Bazubands +1"}
    sets.resting = {}
    sets.latent_refresh = {waist="Fucho-no-obi"}
    sets.Kiting = {}
    sets.self_healing = {}

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    if unbridled_spells:contains(spell.english) and not state.Buff['Unbridled Learning'] then
        eventArgs.cancel = true
        windower.send_command('@input /ja "Unbridled Learning" <me>; wait 1.5; input /ma "'..spell.name..'" '..spell.target.name)
    end
end

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    -- Add enhancement gear for Chain Affinity, etc.
    if spell.skill == 'Blue Magic' then
        for buff,active in pairs(state.Buff) do
            if active and sets.buff[buff] then
                equip(sets.buff[buff])
            end
        end
        if spellMap == 'Healing' and spell.target.type == 'SELF' and sets.self_healing then
            equip(sets.self_healing)
        end
        -- attempt to equip an Obi for Magic with weather (Dynamis, etc)
        if spellMap == 'MagicalDark' or spellMap == 'Magical' then
            if spell.element == world.day_element or spell.element == world.weather_element then
                equip(sets.obi[spell.element])
		      end
        end
    end
    
    -- If in learning mode, keep on gear intended to help with that, regardless of action.
    if state.OffenseMode.value == 'Learning' then
        equip(sets.Learning)
    end
end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if state.Buff[buff] ~= nil then
        state.Buff[buff] = gain
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
-- Return custom spellMap value that can override the default spell mapping.
-- Don't return anything to allow default spell mapping to be used.
function job_get_spell_map(spell, default_spell_map)
    if spell.skill == 'Blue Magic' then
        for category,spell_list in pairs(blue_magic_maps) do
            if spell_list:contains(spell.english) then
                --send_command('@input /echo <----- Matched to '..category..' ----->')
                return category
            end
        end
    end
end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if player.mpp < 51 then
        set_combine(idleSet, sets.latent_refresh)
    end
    return idleSet
end

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    if weapons then
        equip(weapons)
        weapons = nil
        eventArgs.handled = true
    end
end
     
function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Weapon Type' then
        if newValue == 'Sword' then
            weapons = sets.Weapon.Sword
        else
            weapons = sets.Weapon.Club
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

--function job_self_command(command)
--    if command == 'toggle Weap set' then
--        Weapon_ind = Weapon_ind +1
--        if Weapon_ind > #sets.Weapon.index then 
--            Weapon_ind = 1 
--        end
--        equip(sets.Weapon[sets.Weapon.index[Weapon_ind]])
--        send_command('@input /echo <----- Weapon Set changed to '..sets.Weapon.index[Weapon_ind]..' ----->')
--    end
--end

function update_combat_form()
    -- Check for H2H or single-wielding
    --if player.equipment.sub == "Genbu's Shield" or player.equipment.sub == 'empty' then
    --    state.CombatForm:reset()
    --else
    --    state.CombatForm:set('DW')
    --end
end


-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    --if player.sub_job == 'DNC' then
    --    set_macro_page(1, 14)
    --else
    --    set_macro_page(1, 14)
    --end
end

