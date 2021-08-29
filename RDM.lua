-- RDM TODO List (updated 4/30/2021)

-- Weapons : Thibron, Kraken Club, Sequence R15, Excalibur R15
-- TP : Aurgelmir Orb +1 (Phys Dmg Setups), Kentarch Belt +1 R15, Voluspa Tathlum (Acc) ?
-- WS : C Palug Crown (Non-Dark Magic WS), Augury +1 Legs R15 (Savage Uncap), Mache +1 Earrings (CDC), Blistering Sallet +1 R15 (CDC), Gleti's Knife (R20) (CDC Offhand), Agony Jerkin +1 R15 (Savage Uncap)
-- Enfeeb : Regal Cuffs, Aurist Cape +1 R15
-- Enhancing : +10 Enh Dur Telchine Head (w/ Duskdim, currently 9%)
-- Nuking : C Palug Crown, Ghastly Tathlum +1 R15, Bunzi's Rod (R20) (Ody Gaol)
-- Healing/Cursna:  Kaykaus Set +1 (All but hands), Menelaus's Ring, DI Meili Earring, (check Nuance FFXIAH node 349)
-- Tank / DT: Tuisto Earring, Odnowa Earring +1 R15, Excalibur R15, Unmoving Collar +1 R15, Emet Harness +1 R15, Ambu Cape (TANK), Staunch Tathlum +1, Kasiri Belt

-- TODO : Work on AEdge Set (see Nuance) - Need Thibs
-- TODO: Stymie/ES should be casting in max enfeeb duration
-- TODO: Dia can be cast in Lethargy pieces for duration+
-- TODO: Cleanup/remove frontline gear swapping code.  Should be ok w/o it

-- Update Cure Sets, Add Evisceration Set (Node 349 ffxiah.com for ideas)
-- DPS spreadsheets https://docs.google.com/spreadsheets/d/10Q0JH3U_iXs2V70m7HGQppQ4GJ5CNKI9L3GHjrLV0KY
--                  https://docs.google.com/spreadsheets/d/1a-Rh4s8DEcYnNKhu29hKzg_ABzoEVeuTH5sTD0YA3Sc\

-- SeqR15 / Savage (Uncapped Attack only NQ Frailty buff) 4758.830
-- AlmaceR15 / CDC EmpyAM3 (Uncapped Attack only NQ Frailty buff) 4436.662
-- CroceaC / Savage (Uncapped Attack only NQ Frailty buff) 4346.440
-- MurgR15 / Savage MythicAM3 (Uncapped Attack only NQ Frailty buff) 4186.681
-- CroceaC / Sanguine (No Magic Buff Fully Unresisted ~29k dps) : ~6401.551 w/ hacked spreadsheet
-- Naegling / Savage ???
-- Maxentius / Black Halo ???

-- Tanking Gear Set :
  -- Theoretical Enmity + for RDM Set TODO...
    --Main  Excalibur R15, 10% block rate + AM
    --Sub   Sacro Bulwark Def65 Shield112 SIRD7 Block15 DT10 (GOT)
    --Range/Ammo  Sapience Orb FC2, +2Emn
    --Head  Halitus Helm - Def109 HP88 +8Emn (GOT)
    --Neck  Unmoving Collar +1 R15 - Def31 HP200 VIT9 +10Emn (GOT +1, not R15)
    --Ear1  Cryptic Earring HP40 +4Emn (GOT)
    --Ear2  Trux Earring +5Emn (GOT)
    --Body  Emet Harness +1 R15 - Def131 HP61 PDT6 +10Emn (GOT +1, not R15)
    --Hands Merlinic Gloves +9Emn  (+5Emn, DM +4Emn) (GOT)
    --Ring1 Eihwaz Ring - HP70 +5Emn (GOT)
    --Ring2 Supershear Ring - +5Emn (GOT)
    --Back  Ambu Cape - [Thread 60HP, Dust Eva/Meva20, Sap +10Emn, Dye 20HP, Block Rate +5]
    --Waist Kasiri Belt - 30HP +3Emn
    --Legs  Zoar Subligar +1 R15 - Def111 HP47 +6Emn (GOT)
    --Feet  Rager Ledelsens +1 - HP12 +7Emn (GOT)
    -- Theoretically Possible: +84Emn
  -- Tanking Enmity+ Cure Set
  -- Tanking Engaged Set / Unengaged Sets
    -- Excalibur R15 + Sacro Bulwark + Staunch Tathlum+1
    -- Cape HP+80, Evasion/Magic Evasion, Enmity +10, Block Rate +5
    -- Unmoving Collar +1 R15 - Def31 HP200 VIT9 +10Emn
    -- Malignance all but Feet, use Atro +3 for block
    -- Tuisto Ear, Odnowa +1
    -- DRing, Shadow Ring?
    -- Carrier's Sash .. ???
    
-- Tanking /BLU Spell List:
  -- Important : Cocoon (Def), Geist Wall (Enm AoE 320ce 320ve), Sheep Song(Enm AoE 320ce 320ve), Blank Gaze(Enm 320ce 320ve), Jettatura (Enm 180ce 1020ve), Soporific (Enm AoE 320ce 320ve), Healing Breeze (CuragaII, works w/ Cure Potency/MND)
  -- Suggested options for remaining points:
  -- Trait Bonus Options : 
  --   Cursed Sphere 2 + Sound Blast 1 Magic Attack Bonus
  --   Wild Oats (HP+10) 3 + Sprout Smack	2 Beast Killer
  --   Foot Kick (AGI +1) 2 + Claw Cyclone (VIT +1) 2 Lizard Killer
  --   Power Attack 1 + Mandibular Bite 2 Plantoid Killer
  --   Bludgeon 2 + Smite of Rage (AGI +3) 3 Undead Killer
  -- Stat Boost Options : Screwdriver (VIT +1 HP +10) Feather Storm (HP +5) 3 Helldive (HP +5) 2 Magnetite Cloud (VIT +2) Sandspin (VIT +1) 2 3 Mysterious Light (AGI +3) 4 Chaotic Eye (AGI +1) 2 Stinking Gas (AGI +1) 2

-- Self SCs of Relevance
--  : CDC > CDC (Light Lv4)
--  : Savage > CDC (Distortion) [> Req (Darkness)]
--  : Sequence only [Req 300% aftermath] : Savage > CDC (Distortion) > Req (Darkness 3-step) > Req (Umbra 4-step)
--  : Rapier only : CDC > Swift (Darkness)
--  : Rapier only : Savage > CDC (Distortion) > Swift (Darkness 3-step)
--  : (w/Qultada) : CDC > Detonator (Fusion) > Savage (Light 3-step)
--  : (w/Qultada) : Savage > Burning Blade (Liquefaction) > Savage (Scission)
-- NOTE : Can update with Bow WS, or Excalibur to do Fusion and/or Light multistep

-- w/ GS (WAR, DRK, RUN)
-- : Resolution > CDC (Distortion) [> Scourge (Fusion) > Savage (Light)]
-- : Resolution > CDC (Distortion) [> Scourge (Fusion) > Savage (Light)]
-- : Savage > Torcleaver (Distortion) [> Scourge (Fusion) > Savage (Light)]
-- : Torcleaver or Dimidation > CDC (Light Lv4)
-- : CDC > Torcleaver or Dimidation (Light Lv4)
-- : Swift > Resolution (Fragmentation) [> Scourge (Light)]
-- : Swift > Torcleaver (Darkness)

-- w/ GA (WAR)
-- : Savage > Upheaval (Light) [> CDC (Light Lv4)]
-- : Upheaval > Savage (Light) [> CDC (Light Lv4)]
-- : CDC > Upheaval (Fusion) [> Savage (Light)]

-- w/ GK (SAM)
-- Savage > Tachi Fudo (Distortion)
-- Savage > Tachi Kasha (Light) > Tachi Fudo (Light Lv4)
-- CDC > Tachi Kasha (Fusion) > Savage (Light) > Tachi Fudo (Light Lv4)

-- w/ Dagger (THF)
-- : Savage > Rudra's (Distortion) [> Req (Darkness) or Evis (Darkness)]
-- : Swift > Rudra's (Darkness) > Rudra's (Darkness Lv4)

-- w/ Polearm (DRG)
-- : CDC > Camlann's (Light Lv4)
-- : CDC > Stardiver (Darkness)

-- Initialization function for this job file.
function get_sets()
   mote_include_version = 2
   include('Mote-Include.lua')
end
     
-- Setup vars that are user-independent.
function job_setup()
   state.Buff.Saboteur = buffactive.saboteur or false
   event_list = L{}
   event_list:append(windower.register_event('time change', time_change))
   include('Mote-TreasureHunter')
   state.TreasureMode:set('None')   
end
     
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
   state.CombatMode = M{['description'] = 'Combat Mode'}
   state.WeaponsSet = M{['description'] = 'Weapons Set'}
   state.CombatMode:options('Frontline', 'Backline')
   state.WeaponsSet:options('CroceaMDmg','NaeglingSavage','AlmaceCDC','BluntBlackHalo','PiercingEvis','NoTP')
   state.OffenseMode:options('MaxHasteCrocea', 'MaxHasteOther', 'Hybrid', 'MaxHasteMidAccCrocea', 'MaxHasteMidAccOther', 'MaxHasteCroceaSB', 'MaxHasteOtherSB', 'MaxHasteHiAcc', 'MaxHasteMaxAcc', 'Tank', 'TankAcc', 'LowHaste', 'NoTP')
   state.WeaponskillMode:options('Normal', 'Capped', 'Acc', 'TH')
   state.CastingMode:options('Normal', 'MB', 'HiAcc')
   state.IdleMode:options('Normal','DT')
   state.RestingMode:options('Normal')
   state.PhysicalDefenseMode:options('PDT')
   state.MagicalDefenseMode:options('MDT')

   state.CombatForm:reset()
   
   if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
      state.CombatForm:set('DW')
   else
      state.CombatForm:reset()
   end

   if S{'WAR', 'THF', 'PLD', 'DRK', 'BST', 'RNG', 'SAM', 'NIN', 'BLU', 'DNC', 'RUN'}:contains(player.sub_job) then
      state.CombatMode:set('Frontline')
      send_command('wait 0.1; gs disable main sub range ammo')
   else
      state.CombatMode:set('Backline')
   end

   state.WeaponsSet:set('CroceaMDmg')
           
   EnhancingDurationSpells = S{'Haste', 'Haste II', 'Flurry', 'Flurry II', 'Invisible', 'Sneak', 'Regen', 'Regen II', 'Sandstorm', 'Rainstorm', 'Windstorm', 'Firestorm', 'Hailstorm', 'Thunderstorm', 'Aurorastorm', 'Voidstorm', 'Klimaform'}
   EnhancingPotencySpells = S{'Temper II', 'Temper', 'Enstone', 'Enwater', 'Enaero', 'Enfire', 'Enblizzard', 'Enthunder', 'Enstone II', 'Enwater II', 'Enaero II', 'Enfire II', 'Enblizzard II', 'Enthunder II'}
   GainSpells = S{'Gain-STR', 'Gain-DEX', 'Gain-AGI', 'Gain-VIT', 'Gain-MND', 'Gain-INT', 'Gain-CHR'}
   PhalanxSpells = S{'Phalanx', 'Phalanx II'}
   EnfeebMNDPotencySpells = S{'Poison', 'Poisonga', 'Poison II', 'Distract', 'Distract II', 'Distract III', 'Frazzle', 'Frazzle III'}
   MNDPotencySpells = S{'Addle', 'Addle II', 'Paralyze', 'Paralyze II', 'Slow', 'Slow II'}
   MNDAccuracySpells = S{'Frazzle II', 'Silence'}
   INTAccuracySpells = S{'Blind', 'Blind II', 'Dispel'}
   INTAccuracyDurationSpells = S{'Sleep', 'Sleep II', 'Sleepga', 'Sleepga II', 'Break', 'Breakga', 'Bind'}
   INTPotencySpells = S{'Gravity', 'Gravity II'}
   -- Poison Enfeeb Skill only
   -- Distract and Frazzle Enfeeb Skill and lesser extent MND and Enfeebling Effect
   -- Silence Accuracy only and Duration+
   -- Addle/Slow/Paralyze MND only and Enfeebling Effect only
   -- Gravity Accuracy and affected by Enfeebling Effect only
   -- Sleep/Break/Bind Accuracy only and Duration+
   -- Dispelga requires special weapon Accuracy Only and Neckpiece
   EnmitySpells = S{'Jettatura', 'Blank Gaze', 'Sheep Song', 'Geist Wall', 'Soporific'}
   
   send_command('wait 0.1; unbind !f11; wait 0.1; bind !f11 gs c cycle CombatMode')
   send_command('wait 0.1; unbind !f9; wait 0.1; bind !f9 gs c cycleback OffenseMode')
   send_command('wait 0.1; unbind ^f10; wait 0.1; bind ^f10 gs c cycle WeaponsSet')
   send_command('wait 0.1; unbind !f10; wait 0.1; bind !f10 gs c cycleback WeaponsSet')
   send_command('bind ^= gs c cycle treasuremode')
    
   TaeonHeadTP = { name="Taeon Chapeau", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','STR+6 DEX+6',}}
   TaeonHeadWS = { name="Taeon Chapeau", augments={'Accuracy+20 Attack+20','Crit.hit rate+3','Crit. hit damage +3%',}}
   TaeonHeadPhalanx = { name="Taeon Chapeau", augments={'Phalanx +3',}}
   TaeonBodyTP = { name="Taeon Tabard", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','STR+6 DEX+6',}}
   TaeonBodyWS = { name="Taeon Tabard", augments={'Accuracy+18 Attack+18','Crit.hit rate+3','Crit. hit damage +3%',}}
   TaeonBodyPhalanx = { name="Taeon Tabard", augments={'Phalanx +3',}}
   TaeonHandsTP = { name="Taeon Gloves", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','STR+7 DEX+7',}}
   TaeonHandsWS = { name="Taeon Gloves", augments={'Accuracy+20 Attack+20','Crit.hit rate+3','Crit. hit damage +3%',}}
   TaeonHandsPhalanx = { name="Taeon Gloves", augments={'Phalanx +3',}}
   TaeonLegsTP = { name="Taeon Tights", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+10',}}
   TaeonLegsWS = { name="Taeon Tights", augments={'Accuracy+20 Attack+20','Crit.hit rate+3','Crit. hit damage +3%',}}
   MerlinicLegsPhalanx = { name="Merlinic Shalwar", augments={'Magic Damage +3','Attack+17','Phalanx +4',}}
   TaeonFeetTP = { name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','STR+7 DEX+7',}}
   MerlinicFeetPhalanx = { name="Merlinic Crackows", augments={'MND+6','AGI+8','Phalanx +5','Mag. Acc.+3 "Mag.Atk.Bns."+3',}}
   GrioNuke = { name="Grioavolr", augments={'Magic burst dmg.+5%','INT+10','Mag. Acc.+30','"Mag.Atk.Bns."+24','Magic Damage +9',}}
   DarkRing = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -5%','Spell interruption rate down -3%',}}
   ChironicTH = {name="Chironic Gloves", augments={'"Mag.Atk.Bns."+7','Accuracy+18 Attack+18','"Treasure Hunter"+2','Mag. Acc.+8 "Mag.Atk.Bns."+8',}}
   ChironicMAccHands = { name="Chironic Gloves", augments={'Mag. Acc.+30','"Fast Cast"+4','Magic Damage +6','Mag. Acc.+18 "Mag.Atk.Bns."+18',}}
   ChironicDTHands = { name="Chironic Gloves", augments={'MND+1','"Dbl.Atk."+3','Damage taken-4%','Mag. Acc.+1 "Mag.Atk.Bns."+1',}}
   ChironicDTFeet = { name="Chironic Slippers", augments={'"Dbl.Atk."+1','MND+5','Damage taken-4%','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
   ChironicWSDFeet = { name="Chironic Slippers", augments={'MND+6','Pet: Crit.hit rate +1','Weapon skill damage +7%','Accuracy+17 Attack+17',}}
   MerlinicBodyWSD = { name="Merlinic Jubbah", augments={'Potency of "Cure" effect received+2%','MND+14','Weapon skill damage +6%','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
   MerlinicHeadTH = { name="Merlinic Hood", augments={'"Fast Cast"+2','Crit.hit rate+1','"Treasure Hunter"+1','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
   MerlinicHeadNuke = { name="Merlinic Hood", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst dmg.+6%','Mag. Acc.+13','"Mag.Atk.Bns."+14',}}
   MerlinicHandsRefresh = { name="Merlinic Dastanas", augments={'AGI+2','MND+13','"Refresh"+2','Accuracy+5 Attack+5','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
   MerlinicFeetNuke = { name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+9%','MND+9','"Mag.Atk.Bns."+6',}}
   MerlinicRefreshFeet = { name="Merlinic Crackows", augments={'Attack+3','Pet: INT+4','"Refresh"+1','Accuracy+9 Attack+9',}}
   SucellosDW={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}}
   SucellosCrit={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}}
   SucellosINT={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}}
   SucellosMND={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Enmity-10',}}
   SucellosSTP={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}
   SucellosSTR={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
   SucellosSang={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%',}}
   SucellosHalo={ name="Sucellos's Cape", augments={'MND+20','Accuracy+20 Attack+20','MND+10','"Dbl.Atk."+10',}}
end
     
-- Called when this job file is unloaded (eg: job change)
function file_unload()
--   if binds_on_unload then
--      binds_on_unload()
--   end
--   event_list:map(unregister_event)
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

   -- Tresure Hunter Tag set (Motenten TreasureHunter lib)
   sets.TreasureHunter = {hands=ChironicTH,waist="Chaac Belt",feet="Volte Boots"}
		
   -- Precast Sets

   -- Precast sets to enhance JAs
   sets.precast.JA['Chainspell'] = {body="Viti. Tabard +3"}
   sets.precast.JA['Sublimation'] = {waist="Embla Sash"}

   -- Waltz set (chr and vit)
   --sets.precast.Waltz = {}
   
   -- Fast Cast 50% needed (+ RDM Trait 30% >= 80%)
   -- Atrophy Chapeau +3 +16%
   -- Etiolation Earring +1%
   -- Viti. Tabard +3 +15%
   -- Gende. Gages +1 +7%
   -- Witful Belt +3%
   -- Weatherspoon Ring +5%
   -- Psycloth Lappas +7%
   -- Carmine Greaves +1 +8%
   -- >50% Fast Cast
   -- Quick Cast 10% cap
   -- Impatiens +2%
   -- Witful Belt +3%
   -- Weatherspoon Ring +3%
   -- Opapepo Cape +2%
   -- 10% QC = 10% cap
   sets.precast.FC = {ammo="Impatiens",
                      head="Atrophy Chapeau +3",ear1="Etiolation Earring",
                      body="Viti. Tabard +3",hands="Gende. Gages +1",ring1="Weatherspoon Ring",
                      back="Ogapepo Cape",waist="Witful Belt",legs="Psycloth Lappas",feet="Carmine Greaves +1"}

   sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})
   
   -- TODO : Get this working frontline
   sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {main="Daybreak",sub="Ammurapi Shield"})

   -- Weaponskill sets
   -- Default set for any weaponskill that isn't any more specifically defined
   sets.precast.WS = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Atrophy Gloves +3",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
      back=SucellosCrit,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}

   sets.precast.WS.Acc = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Atrophy Gloves +3",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
      back=SucellosCrit,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
                   
   sets.precast.WS.TH = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Atrophy Gloves +3",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
      back=SucellosCrit,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
			
   sets.precast.WS['Requiescat'] = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Viti. Tabard +3",hands="Jhakri Cuffs +2",ring1="Stikini Ring +1",ring2="Rufescent Ring",
      back=SucellosHalo,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Carmine Greaves +1"}
                   
   sets.precast.WS['Requiescat'].Acc = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Stikini Ring +1",ring2="Rufescent Ring",
      back=SucellosHalo,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Carmine Greaves +1"}

   sets.precast.WS['Savage Blade'] = {range="Ullr",
      head="Viti. Chapeau +3",neck="Dls. Torque +2",ear1="Ishvara Earring",ear2="Moonshade Earring",
      body="Viti. Tabard +3",hands="Jhakri Cuffs +2",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
      back=SucellosSTR,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet=ChironicWSDFeet}
      
   sets.precast.WS['Savage Blade'].Capped = {range="Ullr",
      head="Viti. Chapeau +3",neck="Dls. Torque +2",ear1="Ishvara Earring",ear2="Moonshade Earring",
      body=MerlinicBodyWSD,hands="Atrophy Gloves +3",ring1="Metamor. Ring +1",ring2="Epaminondas's Ring",
      back=SucellosSTR,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet=ChironicWSDFeet}      
                   
   sets.precast.WS['Savage Blade'].Acc = {range="Ullr",
      head="Viti. Chapeau +3",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Atrophy Gloves +3",ring1="Epaminondas's Ring",ring2="Rufescent Ring",
      back=SucellosSTR,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}

   sets.precast.WS['Swift Blade'] = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Viti. Tabard +3",hands="Jhakri Cuffs +2",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
      back=SucellosSTR,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
                   
   sets.precast.WS['Swift Blade'].Acc = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Shukuyu Ring",ring2="Epaminondas's Ring",
      back=SucellosSTR,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
                    
   sets.precast.WS['Vorpal Blade'] = {range="Ullr",
      head="Viti. Chapeau +3",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Ayanmo Corazza +2",hands="Atrophy Gloves +3",ring1="Ilabrat Ring",ring2="Begrudging Ring",
      back=SucellosSTR,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Thereoid Greaves"}
                   
   sets.precast.WS['Vorpal Blade'].Acc = {range="Ullr",
      head="Viti. Chapeau +3",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",
      body="Ayanmo Corazza +2",hands="Atrophy Gloves +3",ring1="Ilabrat Ring",ring2="Begrudging Ring",
      back=SucellosSTR,waist="Fotia Belt",legs="Jhakri Slops +2",feet="Thereoid Greaves"}
                   
   --sets.precast.WS['Knights of Round'] = {}
   --sets.precast.WS['Knights of Round'].Acc = {}
                   
   sets.precast.WS['Death Blossom'] = {range="Ullr",
      head="Jhakri Coronal +2",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Atrophy Gloves +3",ring1="Shukuyu Ring",ring2="Rufescent Ring",
      back=SucellosSTR,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
					
   sets.precast.WS['Death Blossom'].Acc = {range="Ullr",
      head="Jhakri Coronal +2",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
      body="Jhakri Robe +2",hands="Atrophy Gloves +3",ring1="Shukuyu Ring",ring2="Rufescent Ring",
      back=SucellosSTR,waist="Sailfi Belt +1",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2"}
                    
   -- WSD bug patched, using original crit-based set.
   sets.precast.WS['Chant du Cygne'] = {range="Ullr",
      head="Viti. Chapeau +3",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Mache Earring",
      body="Ayanmo Corazza +2",hands="Malignance Gloves",ring1="Ilabrat Ring",ring2="Begrudging Ring",
      back=SucellosCrit,waist="Fotia Belt",legs="Zoar Subligar +1",feet="Thereoid Greaves"}
   sets.precast.WS['Evisceration'] = sets.precast.WS['Chant du Cygne']
   
   sets.precast.WS['Chant du Cygne'].Capped = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Mache Earring",
      body="Ayanmo Corazza +2",hands="Malignance Gloves",ring1="Ilabrat Ring",ring2="Begrudging Ring",
      back=SucellosCrit,waist="Fotia Belt",legs="Zoar Subligar +1",feet="Thereoid Greaves"}
   sets.precast.WS['Evisceration'].Capped = sets.precast.WS['Chant du Cygne'].Capped

   sets.precast.WS['Chant du Cygne'].Acc = {range="Ullr",
      head="Jhakri Coronal +2",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Mache Earring",
      body="Ayanmo Corazza +2",hands="Atrophy Gloves +3",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
      back=SucellosCrit,waist="Fotia Belt",legs="Zoar Subligar +1",feet="Malignance Boots"}
   sets.precast.WS['Evisceration'].Acc = sets.precast.WS['Chant du Cygne'].Acc
            
   sets.precast.WS['Aeolian Edge'] = {ammo="Ghastly Tathlum +1",
      head=MerlinicHeadNuke,neck="Baetyl Pendant",ear1="Regal Earring",ear2="Malignance Earring",
      body=MerlinicBodyWSD,hands="Amalric Gages +1",ring1="Freke Ring",ring2="Epaminondas's Ring",
      back=SucellosINT,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}
					
   sets.precast.WS['Aeolian Edge'].TH = {ammo="Ghastly Tathlum +1",
      head=MerlinicHeadNuke,neck="Baetyl Pendant",ear1="Regal Earring",ear2="Malignance Earring",
      body=MerlinicBodyWSD,hands=ChironicTH,ring1="Freke Ring",ring2="Epaminondas's Ring",
      back=SucellosINT,waist="Chaac Belt",legs="Amalric Slops +1",feet="Amalric Nails +1"}

   sets.precast.WS['Red Lotus Blade'] = {ammo="Pemphredo Tathlum",
      head=MerlinicHeadNuke,neck="Baetyl Pendant",ear1="Regal Earring",ear2="Malignance Earring",
      body=MerlinicBodyWSD,hands="Jhakri Cuffs +2",ring1="Freke Ring",ring2="Shiva Ring +1",
      back=SucellosINT,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}

   sets.precast.WS['Sanguine Blade'] = {ammo="Pemphredo Tathlum",
      head="Pixie Hairpin +1",neck="Baetyl Pendant",ear1="Regal Earring",ear2="Malignance Earring",
      body=MerlinicBodyWSD,hands="Jhakri Cuffs +2",ring1="Archon Ring",ring2="Epaminondas's Ring",
      back=SucellosSang,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}

   sets.precast.WS['Sanguine Blade'].Acc = {ammo="Pemphredo Tathlum",
      head="Pixie Hairpin +1",neck="Sanctity Necklace",ear1="Regal Earring",ear2="Malignance Earring",
      body="Amalric Doublet +1",hands="Jhakri Cuffs +2",ring1="Archon Ring",ring2="Epaminondas's Ring",
      back=SucellosSang,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Vitiation Boots +3"}
      
   sets.precast.WS['Black Halo'] = {ammo="Regal Gem",
      head="Viti. Chapeau +3",neck="Dls. Torque +2",ear1="Regal Earring",ear2="Moonshade Earring",
      body="Viti. Tabard +3",hands="Atrophy Gloves +3",ring1="Rufescent Ring",ring2="Epaminondas's Ring",
      back=SucellosHalo,waist="Luminary Sash",legs="Viti. Tights +3",feet=ChironicWSDFeet}

   sets.precast.WS['Seraph Blade'] = {ammo="Pemphredo Tathlum",
      head=MerlinicHeadNuke,neck="Baetyl Pendant",ear1="Malignance Earring",ear2="Moonshade Earring",
      body=MerlinicBodyWSD,hands="Jhakri Cuffs +2",ring1="Freke Ring",ring2="Weatherspoon Ring",
      back=SucellosSang,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Amalric Nails +1"}

   sets.precast.WS['Seraph Blade'].Acc = {ammo="Pemphredo Tathlum",
      head=MerlinicHeadNuke,neck="Sanctity Necklace",ear1="Malignance Earring",ear2="Moonshade Earring",
      body="Amalric Doublet +1",hands="Jhakri Cuffs +2",ring1="Freke Ring",ring2="Weatherspoon Ring",
      back=SucellosSang,waist="Orpheus's Sash",legs="Amalric Slops +1",feet="Vitiation Boots +3"}
      
   sets.precast.WS['Shining Blade'] = sets.precast.WS['Seraph Blade']
   sets.precast.WS['Shining Blade'].Acc = sets.precast.WS['Seraph Blade'].Acc
   
   -- Midcast Sets

   sets.midcast.FastRecast = {ammo="Impatiens",
      head="Atrophy Chapeau +3",
      body="Viti. Tabard +3",hands="Gende. Gages +1",ring1="Weatherspoon Ring",
      back="Swith Cape",waist="Sailfi Belt +1",legs="Psycloth Lappas",feet="Carmine Greaves +1"}
          
   -- TODO : Update healing sets
   -- Cure
   sets.midcast.FrontlineCure = {ammo="Regal Gem",
      head="Gende. Caubeen +1",neck="Incanter's Torque",ear1="Enervating Earring",ear2="Loquac. Earring",
      body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Sirona's Ring",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Sacro Cord",legs="Atrophy Tights +3",feet="Kaykaus Boots"}                   

   -- CP: 30+3+18+13+11+12+10 = >50 (50% cap)
   -- CP2: 0
   -- Healing: 10+10+8+17 = 45
   -- MND: 239
   -- Enmity-: 5+8+3+6+10+10 = -42  (-50 cap)
   sets.midcast.BacklineCure = {main="Daybreak",sub="Sors Shield",ammo="Regal Gem",
      head="Gende. Caubeen +1",neck="Incanter's Torque",ear1="Enervating Earring",ear2="Loquac. Earring",
      body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Sirona's Ring",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Sacro Cord",legs="Atrophy Tights +3",feet="Kaykaus Boots"}

   -- Enhancing Duration Math:
            
   -- Enhancing Duration Info (Self) : [Base + 20s (JP)] * (Gear 1) * (Gear 2) * (3.0x)
   -- Enhancing Duration Info (Others) : [Base + 20s (JP)] * (Enhance Composure) * (Gear 1) * (Gear 2)           
            
   -- Duration = Gear 1 Term Non-Aug : Sucellos 20%, Relic Body +3 15%, Empy Feet +1 30%, AF Hands +3 20%, Ammurapi Shield 10%
   --            Gear 2 Term Aug : Dls Torque +2 25%, Ghostfyre Cape 20%, Telchine Head/Legs (9%, 10%)
            
   -- Self uses: Gear 1: Relic Body +3 15%, Empy Feet +1 30%, AF Hands +3 20%, Ammurapi Shield 10%, Embla Sash 10%
   -- Self uses: Gear 2: Dls Torque +2 25%, Ghostfyre Cape 20%, Telchine Head/Legs 9%, 10%, Colada 4%
   -- Others uses: Enhance Composure: Empy Head +1, Empy Body +1, Empy Legs +1, Empy Feet +1 (4pieces = 35%)
   -- Others uses: Gear 1: Empy Feet +1 30%, AF Hands +3 20%, Ammurapi Shield 10%, Embla Sash 10%
   -- Others uses: Gear 2: Dls Torque +2 25%, Ghostfyre Cape 20%, Colada 4%
   -- Haste Self = (180 + 20) * (1 + 0.15 + 0.3 + 0.2 + 0.1 + 0.1) * (1 + 0.25 + 0.2 + 0.19 + 0.04) ~= 621.6 (10:21)  TESTED 10:22
   -- Haste Comp Self = (180 + 20) * (1 + 0.15 + 0.3 + 0.2 + 0.1 + 0.1) * (1 + 0.25 + 0.2 + 0.19 + 0.04) * (3.0) ~= 1864.8 (31:04)  TESTED 30m (cap)
   -- Haste Comp Others = (180 + 20) * (1 + 0.35) * (1 + 0.3 + 0.2 + 0.1 + 0.1) * (1 + 0.25 + 0.2 + 0.04) ~= 683.91s (11:24)  TESTED  11:24
   -- Theoretical w/ Enh Merits = (180 + 20 + 30) * (1 + 0.35) * (1 + 0.3 + 0.2 + 0.1 + 0.1) * (1 + 0.25 + 0.2 + 0.04) ~= 786.49  13:06
            
   -- Enhancing Duration set for casting on self, which also hits 500 Skill - used for every spell except Temper and Enspell, 
   --                    Gain-X uses this set but added Relic Hands +3 for +30 effect.
   sets.midcast.EnhancingDuration = {main="Colada",sub="Ammurapi Shield",ammo="Impatiens",
      head="Telchine Cap",neck="Dls. Torque +2",ear1="Mimir Earring",ear2="Loquac. Earring",
      body="Viti. Tabard +3",hands="Atrophy Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back="Ghostfyre Cape",waist="Embla Sash",legs="Telchine Braconi",feet="Leth. Houseaux +1"}
            
   sets.midcast['Enhancing Magic'] = sets.midcast.EnhancingDuration

   -- For Casting Gain-spells (w/ Relic Hands), which caps at 500 skill
   sets.buff.Gain = set_combine(sets.midcast.EnhancingDuration, {hands="Viti. Gloves +3"})

   -- Max enhancing potency set for casting on self (Temper and Enspell), 642 Skill - Special Code to unlock weapons
   -- Enspell: ((400/3098)(642+3.65)) = 83
   -- Temper II: ((642-300)/10) = 34%
   sets.buff.EnhancingPotency = {main="Pukulatmuj",sub="Pukulatmuj +1",ammo="Impatiens",
      head="Befouled Crown",neck="Incanter's Torque",ear1="Mimir Earring",ear2="Andoaa Earring",
      body="Viti. Tabard +3",hands="Viti. Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back="Ghostfyre Cape",waist="Olympus Sash",legs="Atrophy Tights +3",feet="Leth. Houseaux +1"}

   -- Enhancing Duration set for casting on others (Composure up), which also hits 500 Skill
   sets.buff.ComposureOther = {main="Colada",sub="Ammurapi Shield",ammo="Impatiens",
      head="Leth. Chappel +1",neck="Dls. Torque +2",ear1="Mimir Earring",ear2="Loquac. Earring",
      body="Lethargy Sayon +1",hands="Atrophy Gloves +3",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back="Ghostfyre Cape",waist="Embla Sash",legs="Leth. Fuseau +1",feet="Leth. Houseaux +1"}
                    
   sets.midcast.Refresh = set_combine(sets.midcast.EnhancingDuration, {head="Amalric Coif +1",body="Atrophy Tabard +3",legs="Leth. Fuseau +1"})

   -- Hits 502 skill and Phalanx +24, Special Code to unlock weapons0
   sets.midcast.Phalanx = set_combine(sets.midcast.EnhancingDuration, {main="Sakpata's Sword",sub="Egeking",head=TaeonHeadPhalanx,ear2="Andoaa Earring",body=TaeonBodyPhalanx,hands=TaeonHandsPhalanx,waist="Olympus Sash",legs=MerlinicLegsPhalanx,feet=MerlinicFeetPhalanx})
         
   sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {hands="Stone Mufflers",neck="Nodens Gorget",ear2="Earthcry Earring",waist="Siegel Sash",legs="Shedir Seraweels"})
           
   sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {head="Amalric Coif +1",legs="Shedir Seraweels"})

   -- /BLU stuff
   sets.midcast.Cocoon = sets.midcast.FastRecast
   -- TODO : Build an enmity+ set for /BLU tanking
   sets.midcast.EnmityGen = sets.midcast.FastRecast
         
   sets.midcast['Healing Breeze'] = {ammo="Regal Gem",
      head="Gende. Caubeen +1",neck="Incanter's Torque",ear1="Enervating Earring",ear2="Loquac. Earring",
      body="Chironic Doublet",hands="Kaykaus Cuffs +1",ring1="Sirona's Ring",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Luminary Sash",legs="Atrophy Tights +3",feet="Kaykaus Boots"}

   sets.midcast.Cursna = {main="Tefnut Wand",sub="Sors Shield",ammo="Hasty Pinion +1",
      head="Atrophy Chapeau +3",neck="Malison Medallion",ear1="Beatific Earring",ear2="Loquac. Earring",
      body="Viti. Tabard +3",hands="Hieros Mittens",ring1="Haoma's Ring",ring2="Haoma's Ring",
      back=SucellosMND,waist="Luminary Sash",legs="Carmine Cuisses +1",feet="Gende. Galosh. +1"}
           
   sets.midcast['Enfeebling Magic'] = {main="Murgleis",sub="Ammurapi Shield",ammo="Regal Gem",
      head="Atrophy Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Regal Earring",
      body="Atrophy Tabard +3",hands=ChironicMAccHands,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Acuity Belt +1",legs="Chironic Hose",feet="Vitiation Boots +3"}

   -- Poison, Distract, Frazzle
   sets.midcast.EnfeebMNDPotency = {main="Contemplator +1",sub="Mephitis Grip",ammo="Regal Gem",
      head="Viti. Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Vor Earring",
      body="Lethargy Sayon +1",hands="Kaykaus Cuffs +1",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Rumination Sash",legs="Chironic Hose",feet="Vitiation Boots +3"}

   -- Addle, Slow, Paralyze
   sets.midcast.MNDPotency = {main="Daybreak",sub="Ammurapi Shield",ammo="Regal Gem",
      head="Viti. Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Regal Earring",
      body="Lethargy Sayon +1",hands="Kaykaus Cuffs +1",ring1="Metamorph Ring +1",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Luminary Sash",legs="Chironic Hose",feet="Vitiation Boots +3"}

   -- Dia - Fix w/ Duration Lethargy Set
   sets.midcast['Dia III'] = set_combine(sets.midcast.MNDPotency, {head="Viti. Chapeau +3",ring2="Kishar Ring"})
   --sets.midcast['Dia III'] = set_combine(sets.midcast.MNDPotency, {hands=ChironicTH,waist="Chaac Belt",feet="Volte Boots"})
  
   -- Diaga TH set (prefer Dispelga to avoid DOTs when tagging)
   -- Dia - Fix w/ Duration Lethargy Set
   --sets.midcast['Diaga'] = sets.midcast.EnfeebMNDPotency
   sets.midcast['Diaga'] = set_combine(sets.midcast.MNDPotency, {hands=ChironicTH,waist="Chaac Belt",feet="Volte Boots"})
                    
   -- Silence, Frazzle II
   sets.midcast.MNDAccuracy = {main="Murgleis",sub="Ammurapi Shield",range="Ullr",
      head="Atrophy Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Regal Earring",
      body="Atrophy Tabard +3",hands=ChironicMAccHands,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Acuity Belt +1",legs="Chironic Hose",feet="Vitiation Boots +3"}

   sets.midcast['Enfeebling Magic'].HiAcc = sets.midcast.MNDAccuracy
   sets.midcast.EnfeebMNDPotency.HiAcc = sets.midcast.MNDAccuracy
   sets.midcast.MNDPotency.HiAcc = sets.midcast.MNDAccuracy
                    
   -- Gravity
   sets.midcast.INTPotency = {main="Murgleis",sub="Ammurapi Shield",ammo="Regal Gem",
      head="Atrophy Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Regal Earring",
      body="Lethargy Sayon +1",hands=ChironicMAccHands,ring1="Kishar Ring",ring2="Stikini Ring +1",
      back=SucellosINT,waist="Acuity Belt +1",legs="Chironic Hose",feet="Vitiation Boots +3"}

   -- Dispel, Blind, Impact/EleEnfeeb
   sets.midcast.INTAccuracy = {main="Murgleis",sub="Ammurapi Shield",range="Ullr",
      head="Atrophy Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Regal Earring",
      body="Atrophy Tabard +3",hands=ChironicMAccHands,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosINT,waist="Acuity Belt +1",legs="Chironic Hose",feet="Vitiation Boots +3"}

   -- Sleep, Break, Bind (needs Regal Cuffs)
   sets.midcast.INTAccuracyDuration = {main="Murgleis",sub="Ammurapi Shield",range="Ullr",
      head="Atrophy Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Regal Earring",
      body="Atrophy Tabard +3",hands=ChironicMAccHands,ring1="Kishar Ring",ring2="Stikini Ring +1",
      back=SucellosINT,waist="Acuity Belt +1",legs="Chironic Hose",feet="Vitiation Boots +3"}

   sets.midcast.INTPotency.HiAcc = sets.midcast.INTAccuracy

   -- TH Set for Dispelga - also uses Dls Torque +2 for extra buff removal
   --sets.midcast['Dispelga'] = set_combine(sets.midcast.INTAccuracy, {main="Daybreak",sub="Ammurapi Shield"})
   -- TODO : Get this working frontline
   sets.midcast['Dispelga'] = set_combine(sets.midcast.INTAccuracy, {main="Daybreak",sub="Ammurapi Shield",hands=ChironicTH,waist="Chaac Belt",feet="Volte Boots"})
            
   sets.midcast['ElementalEnfeeble'] = sets.midcast.INTAccuracy

   sets.midcast.Impact = set_combine(sets.midcast['ElementalEnfeeble'], {head=empty,body="Twilight Cloak",ear2="Malignance Earring"})

   sets.midcast['Elemental Magic'] = {main="Marin Staff +1",sub="Enki Strap",ammo="Pemphredo Tathlum",
      head="Ea Hat +1",neck="Baetyl Pendant",ear1="Regal Earring",ear2="Malignance Earring",
      body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Freke Ring",ring2="Shiva Ring +1",
      back=SucellosINT,waist="Sacro Cord",legs="Amalric Slops +1",feet="Amalric Nails +1"}
                    
   -- Current RDM Elemental Magic MBD%/MBD2% :
   -- Ea Hat +1 : 7%/7% (INT43 MAcc50, MAtt38)
   -- Mizu Kubikazari : 10%/0%
   -- Static Earring 5%/0%
   -- Ea Houppelande +1 : 9%/9% (INT48 MAcc52 MAtt44)
   -- Amalric Gages +1 (D) : 0%/6% (INT36 EleSk14 MAcc20 MAtt53)
   -- Mujin Band : 0%/5%
   -- Ea Slops +1 : 8%/8% (INT48 MAcc51 MAtt41)
   -- Viti +3 0%/0% (INT30 MAcc42 MAtt55)
   -- Total : 39%/35%, Cap 40%/?%
   -- RDM INT/MAtt/MBD general guideline CLHigh : 1INT = 3.75MDmg = 0.85MAB = 0.35MBD

   sets.midcast['Elemental Magic'].MB = {main="Marin Staff +1",sub="Enki Strap",ammo="Pemphredo Tathlum",
      head="Ea Hat +1",neck="Mizu. Kubikazari",ear1="Static Earring",ear2="Malignance Earring",
      body="Ea Houppe. +1",hands="Amalric Gages +1",ring1="Mujin Band",ring2="Freke Ring",
      back=SucellosINT,waist="Sacro Cord",legs="Ea Slops +1",feet="Vitiation Boots +3"}

   sets.NukingWeaponsDW = {main="Bunzi's Rod",sub="Daybreak"}

   sets.midcast['Dark Magic'] = {main="Rubicundity",sub="Ammurapi Shield",range="Ullr",
      head="Atrophy Chapeau +3",neck="Erra Pendant",ear1="Malignance Earring",ear2="Regal Earring",
      body="Atrophy Tabard +3",hands=ChironicMAccHands,ring1="Stikini Ring +1",ring2="Evanescence Ring",
      back=SucellosINT,waist="Luminary Sash",legs="Chironic Hose",feet="Vitiation Boots +3"}

   -- TODO : Add duration pieces
   sets.midcast['Bio III'] = set_combine(sets.midcast['Dark Magic'], {legs="Viti. Tights +3"})
                    
   sets.midcast.Drain = {main="Rubicundity",sub="Ammurapi Shield",range="Ullr",
      head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Malignance Earring",ear2="Digni. Earring",
      body="Chironic Doublet",hands=ChironicMAccHands,ring1="Archon Ring",ring2="Evanescence Ring",
      back=SucellosINT,waist="Fucho-no-Obi",legs="Chironic Hose",feet=MerlinicFeetNuke}

   sets.midcast.Aspir = sets.midcast.Drain                    
     
   -- Lower Recast, for normal use
   --sets.midcast.Stun = {main="Marin Staff +1",sub="Enki Strap",ammo="Impatiens",
      --head="Atrophy Chapeau +3",neck="Incanter's Torque",ear1="Malignance Earring",ear2="Regal Earring",
      --body="Viti. Tabard +3",hands="Gende. Gages +1",ring1="Weather. Ring",ring2="Stikini Ring +1",
      --back="Swith Cape",waist="Witful Belt",legs="Psycloth Lappas",feet=MerlinicFeetNuke}
   -- For High tier, CS/Stun HiAcc
   sets.midcast.Stun = {main="Murgleis",sub="Ammurapi Shield",range="Ullr",
      head="Atrophy Chapeau +3",neck="Dls. Torque +2",ear1="Malignance Earring",ear2="Regal Earring",
      body="Atrophy Tabard +3",hands=ChironicMAccHands,ring1="Metamor. Ring +1",ring2="Stikini Ring +1",
      back=SucellosINT,waist="Luminary Sash",legs="Chironic Hose",feet="Vitiation Boots +3"}
                    
   sets.buff.Saboteur = {hands="Leth. Gantherots +1"}

   -- Resting sets
   sets.resting = {main="Daybreak",sub="Sacro Bulwark",ammo="Homiliary",
      head="Viti. Chapeau +3",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquac. Earring",
      body="Jhakri Robe +2",hands=MerlinicHandsRefresh,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosSTP,waist="Flume Belt",legs="Carmine Cuisses +1",feet=MerlinicRefreshFeet}

   -- Idle sets
   sets.idle.Town = {main="Contemplator +1",sub="Mephitis Grip",ammo="Regal Gem",
      head="Viti. Chapeau +3",neck="Dls. Torque +2",ear1="Snotra Earring",ear2="Vor Earring",
      body="Lethargy Sayon +1",hands="Kaykaus Cuffs +1",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosMND,waist="Rumination Sash",legs="Chironic Hose",feet="Vitiation Boots +3"}
   
   -- Normal Idle : Refresh + Movement
   sets.idle.Normal = {main="Daybreak",sub="Sacro Bulwark",ammo="Homiliary",
      head="Viti. Chapeau +3",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquac. Earring",
      body="Shamash Robe",hands=MerlinicHandsRefresh,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosSTP,waist="Flume Belt",legs="Carmine Cuisses +1",feet=MerlinicRefreshFeet}
                         
   -- "idle.DT"  A set for aggroing/tanking unengaged (Assuming ShellV 24%) 
   -- Main ??                                          [Mafic Cudgel? (10% PDT)]
   -- Sacro Bulwark 10% PDT / 10% MDT, 15% Block Rate
   -- Staunch Tathlum - 2% PDT, 2% MDT, Status -10%
   -- Malignance Chapeau - 6% PDT / 6% MDT / 123 MEva / 5 MDB
   -- Loricate Torque +1 - 6% PDT, 6% MDT
   -- Etiolation Earring - 0% / 3% MDT
   -- Static Earring - 2 MDB
   -- Malignance Tabard 9% PDT / 9% MDT / 139 MEva / 8 MDB   
   -- Volte Bracers - 102 MEva / 7 MDB / Status -10%
   -- Defending Ring - 10% PDT, 10% MDT
   -- Gelatinous Ring +1 - 7% PDT, -1% MDT  Needs R15
   -- Ambu Cape w/Resin - 10% PDT
   -- Flume Belt - 4% PDT / 0% MDT, 2% DT to MP
   -- Carmine Cuisses +1  80 MEva / 4 MDB                    [Malignance Tights 7% PDT / 7% MDT / 150 MEva / 7 MDB]
   -- Volte Boots - 102 MEva / 7 MDB / Status -10%           [Malignance Boots 4% PDT / 4% MDT / 150 MEva / 5 MDB]
   -- Totals : 54% PDT / 59% MDT / 546 MEva / 33 MDB / Status -30%
   sets.idle.DT = {main="Daybreak",sub="Sacro Bulwark",ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Volte Bracers",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back=SucellosSTP,waist="Flume Belt",legs="Carmine Cuisses +1",feet="Volte Boots"}
                    
   sets.idle.Weak = {main="Daybreak",sub="Sacro Bulwark",ammo="Homiliary",
      head="Viti. Chapeau +3",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Loquac. Earring",
      body="Shamash Robe",hands=MerlinicHandsRefresh,ring1="Stikini Ring +1",ring2="Stikini Ring +1",
      back=SucellosSTP,waist="Flume Belt",legs="Carmine Cuisses +1",feet=MerlinicRefreshFeet}
           
   -- Melee/Defense sets
            
   -- "PDT" A hybrid set for DW melee that caps both PDT and MDT (Assuming ShellV 24%) and maintains as much dmg as possible
   -- Main Some sword                                        [Mafic Cudgel? (10% PDT)]
   -- Sacro Bulwark 10% PDT / 10% MDT, 15% Block Rate
   -- Staunch Tathlum - 2% PDT, 2% MDT, Status -10%
   -- Malignance Chapeau - 6% PDT / 6% MDT / 123 MEva / 5 MDB
   -- Anu Torque
   -- Sherida Earring
   -- Suppanomimi                                            [Telos Earring]
   -- Malignance Tabard - 9% PDT / 9% MDT / 139 MEva / 8 MDB   [Shamash Robe (10% PDT)]
   -- Malignance Gloves - 5% PDT / 5% MDT / 112 MEva / 4 MDB
   -- Defending Ring - 10% PDT, 10% MDT
   -- Gelatinous Ring +1 - 7% PDT, -1% MDT
   -- Ambu Cape w/Resin - 10% PDT
   -- Windbuffet Belt +1/Orpheus's Sash
   -- Carmine Cuisses +1  80 MEva / 4 MDB                    [Malignance 7DT MEVA 150 MDB 7]
   -- Malignance Boots - 4% PDT / 4% MDT / 150 MEva / 5 MDB
   -- Totals : 53% PDT / 55% MDT / 604 MEva / 26 MDB / Status -10%
   sets.defense.PDT = {main="Crocea Mors",sub="Sacro Bulwark",ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Suppanomimi",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Carmine Cuisses +1",feet="Malignance Boots"}
                    
   -- "MDT" : A set for that caps both PDT and MDT (Assuming ShellV 24%) and gives MDB / MEva / -Status
   -- Daybreak MND30
   -- Sacro Bulwark 10% PDT / 10% MDT, 15% Block Rate
   -- Staunch Tathlum - 2% PDT, 2% MDT, Status -10%               
   -- Malignance Chapeau - 6% PDT / 6% MDT / 123 MEva / 5 MDB
   -- Loricate Torque +1 - 6% PDT / 6% MDT                        
   -- Etiolation Earring - 0% / 3% MDT                            
   -- Static Earring - 2 MDB
   -- Malignance Tabard - 9% PDT / 9% MDT / 139 MEva / 8 MDB
   -- Volte Bracers -102 MEva / 7 MDB / Status -10%               [Malignance 5DT MEVA 112 MDB 4]
   -- Defending Ring - 10% PDT / 10% MDT
   -- Lunette Ring +1 - 3% PDT / 3% MDT / 7 MDB  (-2MP tick)
   -- Ambu Cape w/Resin - 10% PDT
   -- Windbuffet Belt +1/Orpheus's Sash
   -- Malignance Tights - 7% PDT / 7% MDT / 150 MEva / 7 MDB
   -- Volte Boots - 102 MEva / 7 MDB / Status -10%                [Malignance 4DT MEVA 150 MDB 5]
   -- Totals : 53% PDT / 70% MDT / 616 MEva (588 w/o grip) / 43 MDB / Status -30% /  -2MP Tick
   sets.defense.MDT = {main="Daybreak",sub="Sacro Bulwark",ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Static Earring",
      body="Malignance Tabard",hands="Volte Bracers",ring1="Lunette Ring +1",ring2="Defending Ring",
      back=SucellosDW,waist="Orpheus's Sash",legs="Malignance Tights",feet="Volte Boots"}
     
   -- TP Sets
            
   -- Base TP set (unused)
   sets.engaged = {main="Crocea Mors",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Aya. Manopolas +2",ring1="Hetairoi Ring",ring2="Ilabrat Ring",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Carmine Greaves +1"}
   sets.engaged.DW = set_combine(sets.engaged, {main="Crocea Mors",sub="Daybreak",back=SucellosDW})   

   -- Default TP Set --
   -- MaxHasteCrocea : A Max DPS TP set (Single and Dual Wield) for the Crocea Mors
   sets.engaged.MaxHasteCrocea = {main="Crocea Mors",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Aya. Manopolas +2",ring1="Hetairoi Ring",ring2="Ilabrat Ring",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Carmine Greaves +1"}
   sets.engaged.DW.MaxHasteCrocea = set_combine(sets.engaged.MaxHasteCrocea, {main="Crocea Mors",sub="Daybreak",back=SucellosDW})

   -- MaxHasteOther : A Max DPS TP set (Single and Dual Wield) for the Naegling, Sequence, Almace, and Murgleis
   sets.engaged.MaxHasteOther = {main="Naegling",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Hetairoi Ring",ring2="Ilabrat Ring",
      back=SucellosSTP,waist="Windbuffet Belt +1",legs="Malignance Tights",feet="Carmine Greaves +1"}
   sets.engaged.DW.MaxHasteOther = set_combine(sets.engaged.MaxHasteOther, {main="Naegling",sub="Ternion Dagger +1",back=SucellosDW})

   -- Hybrid : A DD set with hybrid capped -DT
   sets.engaged.Hybrid = {main="Naegling",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Ilabrat Ring",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.Hybrid = set_combine(sets.engaged.Hybrid, {main="Naegling",sub="Tauret",back=SucellosDW})   
            
    -- MaxHasteMidAccCrocea : A more accurate TP set (Single and Dual Wield) for the Crocea Mors
   sets.engaged.MaxHasteMidAccCrocea = {main="Crocea Mors",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Aya. Manopolas +2",ring1="Hetairoi Ring",ring2="Chirich Ring +1",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.MaxHasteMidAccCrocea = set_combine(sets.engaged.MaxHasteMidAccCrocea, {main="Crocea Mors",sub="Daybreak",back=SucellosDW})

   -- MaxHasteMidAccOther : A more accurate TP set (Single and Dual Wield)
   sets.engaged.MaxHasteMidAccOther = {main="Naegling",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Hetairoi Ring",ring2="Chirich Ring +1",
      back=SucellosSTP,waist="Kentarch Belt +1",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.MaxHasteMidAccOther = set_combine(sets.engaged.MaxHasteMidAccOther, {main="Naegling",sub="Ternion Dagger +1",back=SucellosDW})

   -- MaxHasteCroceaSB : A subtle blow TP set (Single and Dual Wield) for the Crocea Mors(C)
   sets.engaged.MaxHasteCroceaSB = {main="Crocea Mors",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Digni. Earring",
      body="Volte Harness",hands="Aya. Manopolas +2",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Volte Tights",feet="Carmine Greaves +1"}
   sets.engaged.DW.MaxHasteCroceaSB = set_combine(sets.engaged.MaxHasteCroceaSB, {main="Crocea Mors",sub="Daybreak",back=SucellosDW})

   -- MaxHasteOtherSB : A subtle blow TP set (Single and Dual Wield) for the Naegling, Sequence, Almace, and Murgleis
   sets.engaged.MaxHasteOtherSB = {main="Naegling",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Digni. Earring",
      body="Volte Harness",hands="Malignance Gloves",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
      back=SucellosSTP,waist="Windbuffet Belt +1",legs="Volte Tights",feet="Carmine Greaves +1"}
   sets.engaged.DW.MaxHasteOtherSB = set_combine(sets.engaged.MaxHasteOtherSB, {main="Naegling",sub="Ternion Dagger +1",back=SucellosDW})
            
   -- MaxHasteHiAcc : A TP set with all reasonable Acc gear (Single and Dual Wield)
   sets.engaged.MaxHasteHiAcc = {main="Naegling",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Combatant's Torque",ear1="Telos Earring",ear2="Digni. Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
      back=SucellosSTP,waist="Kentarch Belt +1",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.MaxHasteHiAcc = set_combine(sets.engaged.MaxHasteHiAcc, {main="Crocea Mors",sub="Tauret",back=SucellosDW})
            
   -- MaxHasteMaxAcc : A TP set with every Acc gear, no matter how bad (Single and Dual Wield)
   sets.engaged.MaxHasteMaxAcc = {main="Crocea Mors",sub="Sacro Bulwark",range="Ullr",
      head="Carmine Mask +1",neck="Combatant's Torque",ear1="Telos Earring",ear2="Digni. Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
      back=SucellosSTP,waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet="Malignance Boots"}
   sets.engaged.DW.MaxHasteMaxAcc = set_combine(sets.engaged.MaxHasteMaxAcc, {main="Crocea Mors",sub="Tauret"})

   -- Tank : An engaged set for tanking /BLU (TODO - not completed)
   sets.engaged.Tank = {main="Crocea Mors",sub="Sacro Bulwark",ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back=SucellosSTP,waist="Windbuffet Belt +1",legs="Malignance Tights",feet="Atro. Boots +3"}
   sets.engaged.DW.Tank = sets.engaged.Tank
   sets.engaged.TankAcc = {main="Crocea Mors",sub="Sacro Bulwark",ammo="Staunch Tathlum",
      head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Gelatinous Ring +1",
      back=SucellosSTP,waist="Kentarch Belt +1",legs="Malignance Tights",feet="Atro. Boots +3"}
   sets.engaged.DW.TankAcc = sets.engaged.TankAcc

   -- LowHaste : A TP set for when not haste capped, adding DW+ gears (Single and Dual Wield)
   sets.engaged.LowHaste = {main="Crocea Mors",sub="Sacro Bulwark",range="Ullr",
      head="Malignance Chapeau",neck="Anu Torque",ear1="Sherida Earring",ear2="Telos Earring",
      body="Malignance Tabard",hands="Aya. Manopolas +2",ring1="Hetairoi Ring",ring2="Ilabrat Ring",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Carmine Greaves +1"}
   sets.engaged.DW.LowHaste = set_combine(sets.engaged.LowHaste, {main="Crocea Mors",sub="Daybreak",ear1="Sherida Earring",ear2="Suppanomimi",back=SucellosDW,waist="Reiki Yotai",feet=TaeonFeetTP})

   -- Working setup for Odin HTBF
   sets.engaged.NoTP = {main="Ceremonial Dagger",sub="Sacro Bulwark",ammo="Hasty Pinion +1",
      head="Malignance Chapeau",neck="Dls. Torque +2",ear1="Brutal Earring",ear2="Suppanomimi",
      body="Malignance Tabard",hands="Aya. Manopolas +2",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
      back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Malignance Boots"}
   sets.engaged.DW.NoTP = set_combine(sets.engaged.NoTP, {sub="Ceremonial Dagger",ear2="Suppanomimi",back=SucellosDW})
   -- Testing setup for Ambu Aug2019 Frog D
   --sets.engaged.NoTP = {main="Ceremonial Dagger",sub="Sacro Bulwark",ammo="Staunch Tathlum",
   --   head="Malignance Chapeau",neck="Combatant's Torque",ear1="Sherida Earring",ear2="Suppanomimi",
   --   body="Volte Harness",hands="Aya. Manopolas +2",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
   --   back=SucellosSTP,waist="Orpheus's Sash",legs="Malignance Tights",feet="Carmine Greaves +1"}
   --sets.engaged.DW.NoTP = set_combine(sets.engaged.NoTP, {sub="Ceremonial Dagger",ear2="Suppanomimi",back=SucellosDW})
   
   sets.TempGear = {}
   sets.BacklineWeapons = {main="Daybreak",sub="Sacro Bulwark",ammo="Homiliary"}
   sets.FrontlineWeapons = {
      CroceaMDmg = {main="Crocea Mors",sub="Daybreak",range="Ullr"},
      NaeglingSavage = {main="Naegling",sub="Ternion Dagger +1",range="Ullr"},
      AlmaceCDC = {main="Almace",sub="Ternion Dagger +1",range="Ullr"},
      BluntBlackHalo = {main="Maxentius",sub="Ternion Dagger +1",range="Ullr"},
      PiercingEvis = {main="Tauret",sub="Ternion Dagger +1",range="Ullr"},
      NoTP = {main="Ceremonial Dagger",sub="Ceremonial Dagger",range="Ullr"}
   }

end
     
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------
     
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_precast(spell, action, spellMap, eventArgs)
   -- Handle storing gear if needed
   if spell.skill == 'Enhancing Magic' then
      if spell.target.type == 'SELF' then
         if EnhancingPotencySpells:contains(spell.english) or PhalanxSpells:contains(spell.english) then
            if state.CombatMode.value == 'Frontline' then
               --add_to_chat(122,'job_precast store gear')
               sets.TempGear = {main=player.equipment.main,sub=player.equipment.sub,range=player.equipment.range,ammo=player.equipment.ammo,
                                head=player.equipment.head,neck=player.equipment.neck,ear1=player.equipment.ear1,ear2=player.equipment.ear2,
                                body=player.equipment.body,hands=player.equipment.hands,ring1=player.equipment.ring1,ring2=player.equipment.ring2,
                                back=player.equipment.back,waist=player.equipment.waist,legs=player.equipment.legs,feet=player.equipment.feet}
            end
         end
      end
   elseif spell.english == 'Dispelga' then
      if state.CombatMode.value == 'Frontline' then
         --add_to_chat(122,'job_precast store gear')
         sets.TempGear = {main=player.equipment.main,sub=player.equipment.sub,range=player.equipment.range,ammo=player.equipment.ammo,
                          head=player.equipment.head,neck=player.equipment.neck,ear1=player.equipment.ear1,ear2=player.equipment.ear2,
                          body=player.equipment.body,hands=player.equipment.hands,ring1=player.equipment.ring1,ring2=player.equipment.ring2,
                          back=player.equipment.back,waist=player.equipment.waist,legs=player.equipment.legs,feet=player.equipment.feet}
         -- Re-enabling precast/midcast weapons
         --enable('main','sub','range','ammo')
         equip(sets.precast.FC.Dispelga)
         eventArgs.handled = true
      end
   -- WS that use sash or obi
   -- obi only better than sash when 2x weather or weather+day
   elseif spell.english == 'Sanguine Blade' then
      if (spell.element == world.weather_element and world.weather_intensity == 2) or 
         (spell.element == world.day_element and spell.element == world.weather_element) then
         equip(sets.obi[spell.element])
      end
   end
end
     
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
   if spell.action_type == 'Magic' then
      -- Default base equipment layer of fast recast.
      equip(sets.midcast.FastRecast)
   end
end
     
-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
   if spell.skill == 'Enfeebling Magic' then
      if state.Buff.Saboteur then
         equip(sets.buff.Saboteur)
      end
   elseif spell.skill == 'Enhancing Magic' then
      if spell.target.type == 'SELF' then
         -- Re-enabling midcast weapons
         if EnhancingPotencySpells:contains(spell.english) then
            if state.CombatMode.value == 'Frontline' then
               --add_to_chat(122,'job_post_midcast enable weapons')
               --enable('main','sub','range','ammo')
            end
            equip(sets.buff.EnhancingPotency)
         elseif PhalanxSpells:contains(spell.english) then
            if state.CombatMode.value == 'Frontline' then
               --add_to_chat(122,'job_post_midcast enable weapons')
               --enable('main','sub','range','ammo')
            end
            equip(sets.midcast.Phalanx)
         elseif GainSpells:contains(spell.english) then
            equip(sets.buff.Gain)
         end
      else
         if buffactive.composure then        
            equip(sets.buff.ComposureOther)
         end
      end
   elseif spell.skill == 'Elemental Magic' then
      if state.CombatForm.value == 'DW' then
         equip(sets.NukingWeaponsDW)
      end
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
     
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
   if not spell.interrupted then
      if state.Buff[spell.english] ~= nil then
         state.Buff[spell.english] = true
      end
   end
   -- Handle re-locking weapons and restoring original gear
   if spell.skill == 'Enhancing Magic' then
      if spell.target.type == 'SELF' then
         if EnhancingPotencySpells:contains(spell.english) or PhalanxSpells:contains(spell.english) then
            if state.CombatMode.value == 'Frontline' then
               --add_to_chat(122,'job_aftercast restore gear enable weapons')
               equip(sets.TempGear)
               --disable('main','sub','range','ammo')
               eventArgs.handled = true                
            end
         end
      end
   elseif spell.english == 'Dispelga' then
      if state.CombatMode.value == 'Frontline' then
         --add_to_chat(122,'job_aftercast restore gear enable weapons')
         equip(sets.TempGear)
         --disable('main','sub','range','ammo')
         eventArgs.handled = true
      end   
   end
end
     
-------------------------------------------------------------------------------------------------------------------
-- Customization hooks for idle and melee sets, after they've been automatically constructed.
-------------------------------------------------------------------------------------------------------------------
     
-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
   if spell.action_type == 'Magic' then
      if (default_spell_map == 'Cure' or default_spell_map == 'Curaga') then
         if state.CombatMode.value == 'Frontline' then
            return "FrontlineCure"
         else
            return "BacklineCure"
         end
      elseif EnfeebMNDPotencySpells:contains(spell.english) then
         return 'EnfeebMNDPotency'
      elseif MNDPotencySpells:contains(spell.english) then
         return 'MNDPotency'
      elseif MNDAccuracySpells:contains(spell.english) then
         return 'MNDAccuracy'
      elseif INTAccuracySpells:contains(spell.english) then
         return 'INTAccuracy'
      elseif INTAccuracyDurationSpells:contains(spell.english) then
         return 'INTAccuracyDuration'
      elseif INTPotencySpells:contains(spell.english) then
         return 'INTPotency'
      elseif EnhancingDurationSpells:contains(spell.english) then
         return 'EnhancingDuration'
      elseif EnmitySpells:contains(spell.english) then
         return 'EnmityGen'
      end
   end
end
     
-------------------------------------------------------------------------------------------------------------------
-- General hooks for other events.
-------------------------------------------------------------------------------------------------------------------
     
-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
   if state.Buff[buff] ~= nil then
      state.Buff[buff] = gain
   end
end
     
function get_custom_wsmode(spell, action, spellMap, default_wsmode)
   --if default_wsmode == 'Acc' and classes.Daytime then
   --   return 'DaytimeAcc'
   --end
end
     
function job_time_change(new_time, old_time)
   --classes.CustomMeleeGroups:clear()
   --if classes.Daytime then
   --   classes.CustomMeleeGroups:append('Daytime')
   --end
end
     
-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------
     
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
   if stateField == 'Combat Mode' then
      if newValue == 'Frontline' then
         weapons = sets.FrontlineWeapons[state.WeaponsSet.value]
         send_command('wait 0.1; gs disable main sub range ammo')
      else
         weapons = sets.BacklineWeapons
         send_command('wait 0.1; gs enable main sub range ammo')
      end
   end
   if stateField == 'Weapons Set' then
      if state.CombatMode.value == 'Frontline' then
         send_command('wait 0.1; gs enable main sub range ammo')
         weapons = sets.FrontlineWeapons[state.WeaponsSet.value]
         send_command('wait 0.3; gs disable main sub range ammo')
      else
         weapons = sets.FrontlineWeapons[state.WeaponsSet.value]
         send_command('wait 0.1; gs enable main sub range ammo')
      end
   end
end
     
-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
end
     
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
     
-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
   -- Default macro set/book
   --set_macro_page(1, 5)
   -- Default macro set/book
   --if player.sub_job == 'BLM' then
      --set_macro_page(2, 5)
   --elseif player.sub_job == 'NIN' then
      --set_macro_page(8, 5)
   --elseif player.sub_job == 'DNC' then
      --set_macro_page(6, 5)
   --end
end
