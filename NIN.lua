-- NIN

-- Enmity Set
-- Other WS Sets
-- Tanking Engaged (Phys Evasion) (Magic Evasion/Defense) (Single Target)
-- Tanking /WAR swaps
-- Tanking /RUN swaps
-- Tanking /DRK swaps
-- DPS Engaged

-- Initialization function for this job file.
function get_sets()
   mote_include_version = 2
   include('Mote-Include.lua')
end
     
-- Setup vars that are user-independent.
function job_setup()
   state.Buff.Migawari = buffactive.migawari or false
   state.Buff.Sange = buffactive.sange or false
   state.Buff.Innin = buffactive.innin or false
   -- Assuming we are getting HasteII, this is always Hi.  If we for some reason get HasteI, switch to Normal manually (gs c toggle hastemode)
   -- Used for calculation of DW needed.
   state.HasteMode = M{['description']='Haste Mode', 'Hi', 'Normal'} 
   state.Runes = M{['description']='Runes', "Ignis", "Gelus", "Flabra", "Tellus", "Sulpor", "Unda", "Lux", "Tenebrae"}
   run_sj = player.sub_job == 'RUN' or false
   select_ammo()
   gear.RegularAmmo = 'Seki Shuriken' --'Date Shuriken'
   gear.SangeAmmo = 'Happo Shuriken'
   wsList = S{'Blade: Hi', 'Blade: Kamu', 'Blade: Ten'}
   nukeList = S{'Katon: San', 'Doton: San', 'Suiton: San', 'Raiton: San', 'Hyoton: San', 'Huton: San'}   
   update_combat_form()
   event_list = L{}
   event_list:append(windower.register_event('time change', time_change))
end
     
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
   state.OffenseMode:options('MaxHaste', 'Tank')   
   state.WeaponskillMode:options('Normal', 'Mid', 'Acc')
   state.CastingMode:options('Normal', 'MB', 'HiAcc')
   state.IdleMode:options('Normal','DT')
   state.RestingMode:options('Normal')
   state.PhysicalDefenseMode:options('PDT')
   state.MagicalDefenseMode:options('MDT')

   select_default_macro_book()
   
   send_command('wait 0.1; unbind !f9; wait 0.1; bind !f9 gs c cycleback OffenseMode')
   --TPCape= { name="Mecisto. Mantle", augments={'Cap. Point+47%','Mag. Acc.+4','DEF+10',}}
   TPCape="Sacro Mantle"
   --WSCape= { name="Mecisto. Mantle", augments={'Cap. Point+47%','Mag. Acc.+4','DEF+10',}}
   WSCape="Sacro Mantle"
   --FCCape= { name="Mecisto. Mantle", augments={'Cap. Point+47%','Mag. Acc.+4','DEF+10',}}
   FCCape="Sacro Mantle"
   --MBCape= { name="Mecisto. Mantle", augments={'Cap. Point+47%','Mag. Acc.+4','DEF+10',}}
   MBCape="Sacro Mantle"
   --DTCape= { name="Mecisto. Mantle", augments={'Cap. Point+47%','Mag. Acc.+4','DEF+10',}}
   DTCape="Sacro Mantle"
   HercBootsAccTA = {name="Herculean Boots", augments={'Accuracy+17 Attack+17','"Triple Atk."+4','Accuracy+2','Attack+2',}}
   HercFeetMAB= { name="Herculean Boots", augments={'Pet: Haste+4','"Mag.Atk.Bns."+15','Weapon skill damage +3%','Accuracy+15 Attack+15','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
   HercFeetWSD= { name="Herculean Boots", augments={'CHR+3','"Fast Cast"+1','Weapon skill damage +7%','Accuracy+13 Attack+13','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
   HercLegsFC= { name="Herculean Trousers", augments={'"Mag.Atk.Bns."+24','"Fast Cast"+3','AGI+11','Mag. Acc.+1',}}
end
     
-- Called when this job file is unloaded (eg: job change)
function file_unload()
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
		
   -- Precast Sets

   -- Precast sets to enhance JAs
   -- Enmity+ set TODO
   sets.precast.JA['Provoke'] = {}
   sets.precast.JA.Sange = {}
   --sets.precast.Waltz = {}
   sets.precast.Step = {}
   sets.RegularAmmo    = { ammo=gear.RegularAmmo }
   sets.SangeAmmo      = { ammo=gear.SangeAmmo }
   
   -- Fast Cast 80% needed
   --   Fudo Masamune R15 Path C FC25     [GOT base]
   --   Sapience Orb FC2
   --   Herc Helm w/ 6% aug FC13 total    [NEEDS AUG]
   --   Orunmila's Torque (Meebles) FC5
   --   Loq Ear FC2                       [GOT]
   --   Enchtr Ear +1 FC2                 [GOT]
   --   Taeon Tabard w/ 5% aug FC9 total  [NEEDS AUG]
   --   Leyline Gloves (FC5 +up to 3% aug) [GOT only 2%]
   --   Weatherspoon Ring +1 FC6          [GOT NQ 5%]
   --   Kishar Ring FC4                   [GOT]
   --   Ambu Cape 10% +1 shadow          
   --   Waist no option (use tanking piece HP etc)
   --   Herc Trousers w/ 6% aug FC6 total [NEEDS AUG]
   --   Empy Feet +1 +1 shadow and Herc Boots w/ 6% aug  [NEEDS AUG]
   --  Total 67 +2 shadow +25% wpn.  Got: 6+2+2+5+7+5+4 = 31
   sets.precast.FC = {ammo="Impatiens",
		head="Herculean Helm",neck="Caro Necklace",ear1="Enchntr. Earring +1",ear2="Loquacious Earring",
		body="Taeon Tabard",hands="Leyline Gloves",ring1="Kishar Ring",ring2="Weather. Ring",
		back=FCCape,waist="Sailfi Belt +1",legs=HercLegsFC,feet="Malignance Boots"}
	-- No beads in final set.
   sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})
   
   -- Weaponskill sets
   -- Default set for any weaponskill that isn't any more specifically defined
   sets.precast.WS = {ammo="Floestone",
		head="Lilitu Headpiece",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Regal Ring",ring2="Epaminondas's Ring",
		back=WSCape,waist="Sailfi Belt +1",legs="Zoar Subligar +1",feet=HercFeetWSD}

   -- Blade: Ten: Str   
   sets.precast.WS['Blade: Ten'] = {ammo="Floestone",
		head="Lilitu Headpiece",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Regal Ring",ring2="Epaminondas's Ring",
		back=WSCape,waist="Sailfi Belt +1",legs="Zoar Subligar +1",feet=HercFeetWSD}

   -- Blade: Kamu: Str and Int
   sets.precast.WS['Blade: Kamu'] = {ammo="Floestone",
		head="Lilitu Headpiece",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Regal Ring",ring2="Epaminondas's Ring",
		back=WSCape,waist="Sailfi Belt +1",legs="Zoar Subligar +1",feet=HercFeetWSD}

   -- Blade: Shun: Dex and Multi-attack
   -- Wpn: Heishi / Tauret
   -- Ammo: Uncap Aurgelmir Orb +1 / Voluspa Tathlum / Cap C Palug
   -- Head: Uncap Adhemar +1 / Cap Ken +1
   -- Neck: Uncap Fotia / Cap Nodowa +2
   -- Ear: Lugra / Odr
   -- Body: Uncap Adhemar +1 / Cap Ken +1
   -- Hands: Uncap Adhemar +1 / Cap Ken +1 
   -- Rings: Regal / Gere
   -- Back: DEX/DA Ambu Cape
   -- Legs: Uncap Relic +3 / Cap Jokushu Haidate
   -- Feet: Adhemar +1 / Cap Ken +1
   sets.precast.WS['Blade: Shun'] = {ammo="C. Palug Stone",
		head="Lilitu Headpiece",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Regal Ring",ring2="Gere Ring",
		back=WSCape,waist="Fotia Belt",legs="Samnuha Tights",feet=HercFeetWSD}
      
   -- Blade: Ku: Dex and Multi-attack
   sets.precast.WS['Blade: Ku'] = {ammo="C. Palug Stone",
		head="Lilitu Headpiece",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Regal Ring",ring2="Ilabrat Ring",
		back=WSCape,waist="Fotia Belt",legs="Samnuha Tights",feet=HercFeetWSD}      

   -- Blade: Hi: AGI and Crit
      -- Wpn: Kannagi / Perfect Kanaria (Taka, Tauret, Fudo Masamune)
      -- Ammo: Yetshila +1
      -- Head: Hachiya +3 Artifact
      -- Neck: Nodowa +2
      -- Ear: Odr + Ishvara
      -- Body: Ken +1
      -- Back: WSD/AGI or Crit/AGI Ambu Cape
      -- Legs: Mochizuki +3 Relic
   sets.precast.WS['Blade: Hi'] = {ammo="C. Palug Stone",
		head="Mummu Bonnet +2",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Ishvara Earring",
		body="Mummu Jacket +2",hands="Mummu Wrists +2",ring1="Regal Ring",ring2="Begrudging Ring",
		back=WSCape,waist="Sailfi Belt +1",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"}
   
   -- Midcast Sets
   sets.midcast.Utsusemi = {}
   sets.midcast.FastRecast = {}
   -- Skill / MAcc
   sets.midcast.Ninjutsu = {}
   
   -- MAB / Burst
   sets.midcast.ElementalNinjutsu = {ammo="Ghastly Tathlum +1",
      head="Herculean Helm",neck="Baetyl Pendant",ear1="Friomisi Earring",ear2="Static Earring",
		body="Samnuha Coat",hands="Leyline Gloves",ring1="Mujin Band",ring2="Locus Ring",
		back=MBCape,waist="Orpheus's Sash",legs=HercLegsFC,feet=HercFeetMAB}
         
   sets.idle = {ammo="Staunch Tathlum",
		head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Brutal Earring",ear2="Telos Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Dark Ring",
		back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}
   
   -- Defense sets
   sets.defense.PDT = {ammo="Staunch Tathlum",
		head="Malignance Chapeau",neck="Loricate Torque +1",ear1="Brutal Earring",ear2="Telos Earring",
		body="Malignance Tabard",hands="Malignance Gloves",ring1="Defending Ring",ring2="Dark Ring",
		back="Solemnity Cape",waist="Flume Belt",legs="Malignance Tights",feet="Malignance Boots"}
   sets.defense.MDT = sets.defense.PDT

   -- TP Sets    
   sets.engaged = {}
   
  -- MaxHaste (DW0) Upgrades
      -- Head: Ken +1
      -- Neck: Nodowa +2
      -- Body: Ken +1
      -- Back: Double Attack TP Ambu Cape or Store TP
   sets.engaged.MaxHaste = {ammo="Seki Shuriken",
		head="Malignance Chapeau",neck="Ninja Nodowa",ear1="Brutal Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Gere Ring",ring2="Epona's Ring",
		back=TPCape,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}
   
  -- Basic Tank TP set Upgrades
      -- Ammo: Date Shuriken
      -- Head: Ken +1
      -- Neck: Nodowa +2
      -- Ear: Trux + Brutal
      -- Body: Ken +1
      -- Hands: Ken +1
      -- Legs: Ken +1
      -- Feet: Ken +1
   sets.engaged.Tank = {ammo="Seki Shuriken",
		head="Malignance Chapeau",neck="Ninja Nodowa",ear1="Brutal Earring",ear2="Telos Earring",
		body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Gere Ring",ring2="Epona's Ring",
		back=TPCape,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=HercBootsAccTA}
   
end
     
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------

function select_ammo()
    if state.Buff.Sange then
        return sets.SangeAmmo
    else
        return sets.RegularAmmo
    end
end

function update_combat_form()
    if state.Buff.Innin then
        state.CombatForm:set('Innin')
    else
        state.CombatForm:reset()
    end
end
     
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_precast(spell, action, spellMap, eventArgs)
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
end
     
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
end
     
-------------------------------------------------------------------------------------------------------------------
-- Customization hooks for idle and melee sets, after they've been automatically constructed.
-------------------------------------------------------------------------------------------------------------------
     
-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
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
end
     
function job_time_change(new_time, old_time)
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
end
     
-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
end
     
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
     
-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
end
