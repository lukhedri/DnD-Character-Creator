-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 11:01 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i210_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `archetype`
--

CREATE TABLE `archetype` (
  `archetype` varchar(30) NOT NULL,
  `class` text NOT NULL,
  `description` text NOT NULL,
  `feature1` text NOT NULL,
  `feature2` text NOT NULL,
  `feature3` text NOT NULL,
  `feature4` text NOT NULL,
  `feature5` text NOT NULL,
  `feature6` text NOT NULL,
  `feature7` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archetype`
--

INSERT INTO `archetype` (`archetype`, `class`, `description`, `feature1`, `feature2`, `feature3`, `feature4`, `feature5`, `feature6`, `feature7`) VALUES
('Arcane Trickster', 'Rogue', 'You can learn a small amount of magic spells to help out with your main rogue abilities', 'Spellcasting', 'Mage Hand Legerdemain', 'Magical Ambush', 'Versatile Trickster', 'Spell Thief', '-', '-'),
('Assassin', 'Rogue', 'You focus on the ideas of the sneak attack, and become much better at sneaking in and taking people out', 'Bonus Proficiencies', 'Assassinate', 'Infiltration Expertise', 'Impostor', 'Death Strike', '-', '-'),
('Battle Master', 'Fighter', 'You learn utilize your superiority through specific combat maneuvers and tactical observation', 'Combat Superiority', 'Student of War', 'Know Your Enemy', 'Improved Combat Superiority', 'Relentless', '-', '-'),
('Beast Master', 'Ranger', 'You embrace nature, and summon to you an animal companion to fight alongside you in combat', 'Ranger\'s Companion', 'Exceptional Training', 'Bestial Fury', 'Share Spells', '-', '-', '-'),
('Champion', 'Fighter', 'You become a more violent fighter, gaining additional fighting skills, a higher chance to critically strike your foe, and to survive longer', 'Improved Critical', 'Remarkable Athlete', 'Additional Fighting Style', 'Superior Critical', 'Survivor', '-', '-'),
('Circle of the Land', 'Druid', 'You become accustomed to a specific type of terrain, and learn to utilize your surroundings, resist the allure of fey creatures, and seem peaceful to the wild', 'Bonus Cantrip', 'Natural Recovery', 'Circle Spells', 'Land\'s Stride', 'Nature\'s Ward', 'Nature\'s Sanctuary', '-'),
('Circle of the Moon', 'Druid', 'You gain a stronger ability to shape-shift, becoming able to transform into stronger beasts, and channel odd beasts comprised of the elements themselves', 'Combat Wild Shape', 'Circle Forms', 'Primal Strike', 'Elemental Wild Shape', 'Thousand Forms', '-', '-'),
('College of Lore', 'Bard', 'You become even more of a jack of all trades, becoming more skilled and learning a wider variety of spells', 'Bonus Proficiencies', 'Cutting Words', 'Additional Magic Secrets', 'Peerless Skill', '-', '-', '-'),
('College of Valor', 'Bard', 'You gain some decent melee abilities, allowing you to get in close if necessary and invigorate your allies', 'Bonus Proficiencies', 'Combat Inspiration', 'Extra Attack', 'Battle Magic', '-', '-', '-'),
('Draconic Bloodline', 'Sorcerer', 'You gradually gain more aspects of dragons, like resistance to damage, boosted damage, a terrifying presence, and wings', 'Dragon Ancestor', 'Draconic Resilience', 'Elemental Affinity', 'Dragon Wings', 'Draconic Presence', '-', '-'),
('Eldritch Knight', 'Fighter', 'You utilize scholarly studies to utilize a limited pool of magic to strengthen yourself and assault your enemies', 'Spellcasting', 'Weapon Bond', 'War Magic', 'Eldritch Magic', 'Arcane Charge', 'Improved War Magic', '-'),
('Hunter', 'Ranger', 'You embrace the hunt, becoming a more effective, agile, defensive, and offensive combatant', 'Hunter\'s Prey', 'Defensive Tactics', 'Multiattack', 'Superior Hunter\'s Defense', '-', '-', '-'),
('Knowledge Domain', 'Cleric', 'Your wise God gifts you with knowledge, the abilities to learn information, languages, skills, the thoughts of others, and previous occurrences', 'Knowledge Domain Spells', 'Blessings of Knowledge', 'Channel Divinity: Knowledge of the Ages', 'Channel Divinity: Read Thoughts', 'Potent Spellcasting', 'Visions of the Past', '-'),
('Life Domain', 'Cleric', 'Your blessed God gifts you the ability to bring back your foes from the brink, and to be a more survivable melee combatant', 'Life Domain Spells', 'Bonus Proficiency', 'Disciple of Life', 'Channel Divinity: Preserve Life', 'Blessed Healer', 'Divine Strike', 'Supreme Healing'),
('Light Domain', 'Cleric', 'Your God\'s brilliance shines through you as you blind and burn your enemies with a divine light', 'Light Domain Spells', 'Bonus Cantrip', 'Warding Flare', 'Channel Divinity: Radiance of the Dawn', 'Improved Flare', 'Potent Spellcasting', 'Corona of Light'),
('Nature Domain', 'Cleric', 'Your God gifts you with control of nature and the elements, allowing control of beasts, plants, and elemental magics, both for wielding and defending', 'Nature Domain Spells', 'Acolyte of Nature', 'Bonus Proficiency', 'Channel Divinity: Charm Animals and Plants', 'Dampen Elements', 'Divine Strike', 'Master of Nature'),
('Oath of Devotion', 'Paladin', 'You devote yourself to honest, just, and dutiful tenants, in exchange for radiant protection from forceful control and the unholy', 'Tenets of Devotion', 'Oath Spells', 'Channel Divinity', 'Aura of Devotion', 'Purity of Spirit', 'Holy Nimbus', '-'),
('Oath of the Ancients', 'Paladin', 'You devote yourself to the light of hope, in exchange for natural forces to strike down your enemies, keep you alive, and enhance your abilities', 'Tenets of the Ancients', 'Oath Spells', 'Channel Divinity', 'Aura of Warding', 'Undying Sentinel', 'Elder Chamion', '-'),
('Oath of Vengeance', 'Paladin', 'You devote yourself to the destruction of evil, in exchange for divine force to strike down evil as an angelic defender of good', 'Tenets of Vengeance', 'Oath SPells', 'Channel Divinity', 'Relentless Avenger', 'Soul of Vengeance', 'Avenging Angel', '-'),
('Path of the Berserker', 'Barbarian', 'You gain bonuses to your rage due to your love of blood and violence, gaining resistances, and extra attacks', 'Frenzy', 'Mindless Rage', 'Intimidating Presence', 'Retaliation', '-', '-', '-'),
('Path of the Totem Warrior', 'Barbarian', 'You accept a spirit animal as your guide, and use its abilities to augment your own, giving your different bonuses dependent on the animal you choose', 'Spirit Seeker', 'Totem Spirit', 'Aspect of the Beast', 'Spirit Walker', 'Totemic Attunement', '-', '-'),
('School of Abjuration', 'Wizard', 'You excel in learning Abjuration spells, and learn to create magical wards to further defend yourself', 'Abjuration Savant', 'Arcane Ward', 'Projected Ward', 'Improved Abjuration', 'Spell Resistance', '-', '-'),
('School of Conjuration', 'Wizard', 'You excel in learning Conjuration spells, and learn to teleport further and summon stronger objects and creatures', 'Conjuration Savant', 'Minor Conjuration', 'Benign Transposition', 'Focused Conjuration', 'Durable Summons', '-', '-'),
('School of Divination', 'Wizard', 'You excel in learning Divination spells, and learn to glimpse beyond the veil to predict future occurrences and see that which is hidden', 'Divination Savant', 'Portent', 'Expert Divination', 'The Third Eye', 'Greater Portent', '-', '-'),
('School of Enchantment', 'Wizard', 'You excel in learning Enchantment spells, and learn to immobilize foes, send them into a self deprecating frenzy, and alter their memories', 'Enchantment Savant', 'Hypnotic Gaze', 'Instinctive Charm', 'Split Enchantment', 'Alter Memories', '-', '-'),
('School of Evocation', 'Wizard', 'You excel in learning Evocation spells, and learn to target your blasts of power around your allies safely, and to maximize the damage of your spells', 'Evocation Savant', 'Sculpt Spells', 'Potent Cantrip', 'Empowered Evocation', 'Overchannel', '-', '-'),
('School of Illusion', 'Wizard', 'You excel in learning Illusion spells, and learn to fully utilize your illusions, creating duplicates to avoid attacks, and warping the perception of reality to appear as you wish', 'Illusion Savant', 'Improved Minor Illusion', 'Malleable Illusions', 'Illusory Self', 'Illusory Reality', '-', '-'),
('School of Necromancy', 'Wizard', 'You excel in learning Necromancy spells, and learn to take the energy of fallen enemies, and raise and control the undead', 'Necromancy Savant', 'Grim Harvest', 'Undead Thralls', 'Inured to Undeath', 'Command Undead', '-', '-'),
('School of Transmutation', 'Wizard', 'You excel in learning Transmutation spells, and learn to alter the matter of objects, and eventually create a Transmuter\'s Stone that can cheat death and reshape matter.', 'Transmutation Savant', 'Minor Alchemy', 'Transmuter\'s Stone', 'Shapechanger', 'Master Transmuter', '-', '-'),
('Tempest Domain', 'Cleric', 'Your God\'s thunder courses through you, giving you control over lightning, storms, and making you a more feared combatant as you ride the stormy winds', 'Tempest Domain Spells', 'Bonus Proficiencies', 'Wrath of the Storm', 'Channel Divinity: Destructive Wrath', 'Thunderbolt Strike', 'Divine Strike', 'Stormborn'),
('The Archfey', 'Warlock', 'Through your Patron, you gain powers to charm your enemies, teleport, and resist becoming controlled yourself', 'Expanded Spell List', 'Fey Presence', 'Misty Escape', 'Beguiling Defenses', 'Dark Delirium', '-', '-'),
('The Fiend', 'Warlock', 'Through your Patron, you become a more powerful combatant with more damaging spells and gaining resistance to certain damage types', 'Expanded Spell list', 'Dark One\'s Blessing', 'Dark One\'s Own Luck', 'Fiendish Resilience', 'Hurl Through Hell', '-', '-'),
('The Great Old One', 'Warlock', 'Through your Patron, you gain resistance to mental attacks, ability to become harder to hit, and the ability to speak telepathically', 'Expanded Spell List', 'Awakened Mind', 'Entropic Ward', 'Thought Shield', 'Create Thrall', '-', '-'),
('Thief', 'Rogue', 'You are quicker and sneakier than before, able to more easily work with your hands and feet for less than honest work', 'Fast Hands', 'Second-Story Work', 'Supreme Sneak', 'Use Magic Device', 'Thief\'s Reflexes', '-', '-'),
('Trickery Domain', 'Cleric', 'Your God\'s mischief flows through you, giving you the ability to make duplicates, become invisible, and poison your enemies', 'Trickery Domain Spells', 'Blessing of the Trickster', 'Channel Divinity: Invoke Duplicity', 'Channel Divinity: Cloak of Shadows', 'Divine Strike', 'Improved Duplicity', '-'),
('War Domain', 'Cleric', 'Your God fuels your need for combat, making you a skilled melee combatant, harnessing divine power to strike and defend', 'War Domain Spells', 'Bonus Proficiencies', 'War Priest', 'Channel Divinity: Guided Strike', 'Channel Divinity: War God\'s Blessing', 'Divine Strike', 'Avatar of Battle'),
('Way of Shadow', 'Monk', 'You harness Ki to utilize the dark, practicing ninjutzu to silently sneak across the battlefield and strike your enemies', 'Shadow Arts', 'Shadow Step', 'Cloak of Shadows', 'Opportunist', '-', '-', '-'),
('Way of the Four Elements', 'Monk', 'You harness the forces of the elements in your attacks, manifesting Ki into elemental fury', 'Disciple of the Elements', 'Elemental Disciplines', '-', '-', '-', '-', '-'),
('Way of the Open Hand', 'Monk', 'You focus your body and mind to heal yourself, safeguard your group, and enhance the power of your unarmed strikes so that they become lethal', 'Open Hand Technique', 'Wholeness of Body', 'Tranquility', 'Quivering Palm', '-', '-', '-'),
('Wild Magic', 'Sorcerer', 'You have a 5% chance to cause a random effect whenever you cast a spell and maximize on skills about the improbability of the dice', 'Wild Magic Surge', 'Tides of Chaos', 'Bend Luck', 'Controlled Chaos', 'Spell Bombardment', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `background` text,
  `description` text,
  `skill_proficiency` text,
  `language` int(1) DEFAULT NULL,
  `tool_proficiency` text,
  `feature` text,
  `usual_class` text,
  `custom` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`background`, `description`, `skill_proficiency`, `language`, `tool_proficiency`, `feature`, `usual_class`, `custom`) VALUES
('Acolyte', 'You used to be a pastor of some faith, performing worship and regular rituals to some deity', 'Insight, Religion', 2, 'none', 'Shelter of the Faithful', 'Cleric', 0),
('Charlatan', 'You used to scam the pants off of people to get cash, then leave town before they caught you', 'Deception, Sleight of Hand', 0, 'Disguise Kit, Forgery Kit', 'False Identity', 'Rogue, Warlock', 0),
('Criminal', 'You used to be a person of illegal reputation, performing illegal acts and becoming a felon', 'Deception, Stealth', 0, 'Gaming Set x1, Thieves\' Tools', 'Criminal Contact', 'Rogue', 0),
('Entertainer', 'You used to travel around, performing some entertaining show or ability to make people happy', 'Acrobatics, Performance', 0, 'Disguise Kit, Musical Instrument x1', 'By Popular Demand', 'Bard', 0),
('Folk Hero', 'You come from a humble upbringing, but your village hails you as their champion, and you have a great destiny ahead of you', 'Animal Handling, Survival', 0, 'Artisan\'s Tools x1, Land Vehicles', 'Rustic Hospitality', 'Ranger', 0),
('Gladiator', 'A variant of the Entertainer background, you instead go and fight for entertainment purposes', 'Acrobatics, Performance', 0, 'Disguise Kit, Unusual Weapon x1', 'By Popular Demand', 'Barbarian, Bard', 0),
('Guild Artisan', 'You come from a guild of artisans, skilled in a certain craft for profit that you work with in junction like a brand', 'Insight, Persuasion', 1, 'Artisan\'s Tools x1', 'Guild Membership', 'Sorcerer, Warlock', 0),
('Guild Merchant', 'A variant of the Guild Artisan background, you pawn and trade, rather than create and sell. You focus on reselling items you buy instead of the tools of a trade', 'Insight, Persuasion', 1, 'Navigator\'s Tools', 'Guild Membership', 'Sorcerer, Warlock', 0),
('Hermit', 'You were a secluded loner, who lived through a life of solitude', 'Medicine, Religion', 1, 'Herbalism Kit', 'Discovery', 'Druid, Monk, Sorcerer', 0),
('Knight', 'A variant of the Noble background, you carry a lower noble title, but in exchange have squires to assist you with regular duties', 'History, Persuasion', 1, 'Gaming Set x1', 'Retainer', 'Paladin, Fighter', 0),
('Noble', 'You were born with a silver spoon in your mouth, and you were raised in a luxurious, high class lifestyle', 'History, Persuasion', 1, 'Gaming Set x1', 'Position of Priviledge', 'Paladin', 0),
('Outlander', 'You grew up away from modern society in the wilds, and the wilds are a part of you now', 'Athletics, Survival', 1, 'Musical Instrument x1', 'Wanderer', 'Barbarian, Ranger', 0),
('Pirate', 'A variant of the Sailor background, you are a seafaring criminal of great renown', 'Athletics, Perception', 0, 'Navigator\'s Tools, Water Vehicles', 'Bad Reputation', 'Rogue, Fighter', 0),
('Sage', 'You used to be a scholar, reading and scribing out the lore of the multiverse', 'Arcana, History', 2, 'none', 'Researcher', 'Wizard', 0),
('Sailor', 'You spent a long time on the sea, sailing on a boat and braving the will of the water', 'Athletics, Perception', 0, 'Navigator\'s Tools, Water Vehicles', 'Ship\'s Passage', 'Fighter, Paladin', 0),
('Soldier', 'You served in the military for some time, and have the rank and experience to prove it', 'Athletics, Intimidation', 0, 'Gaming Set x1, Land Vehicle', 'Military Rank', 'Fighter, Barbarian', 0),
('Spy', 'A variant of the Criminal background, you focus less on acts of burglary and smuggling, and focus on espionage and secrets', 'Deception, Stealth', 0, 'Gaming Set x1, Thieves\' Tools', 'Criminal Contact', 'Rogue', 0),
('Urchin', 'You grew up poor on the streets of some larger city or town', 'Sleight of Hand, Stealth', 0, 'Disguise Kit, Thieves\' Tools', 'City Secrets', 'Rogue', 0);

-- --------------------------------------------------------

--
-- Table structure for table `barbarian`
--

CREATE TABLE `barbarian` (
  `class` text,
  `level` int(5) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(11) DEFAULT NULL,
  `rages` text,
  `rage_bonus` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barbarian`
--

INSERT INTO `barbarian` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `rages`, `rage_bonus`) VALUES
('Barbarian', 1, 'Rage, Unarmored Defense', 'You can go into a primal rage during combat. As a bonus action, you can begin raging. Your rage lasts 1 minute, but will end prematurely if you end it as a bonus action, are knocked out, die, or go a full turn without taking or attempting to deal damage. While raging, you have advantage on Strength checks and saving throws, resistance to bludgeoning, piercing, and slashing damage, and can add additional damage to damage rolls made with melee weapons using Strength. This damage starts as +2, and this amount increases as you level up. You can rage 2 times per long rest, but this amount also increases, as shown in the table. This feature is the bread and butter of the Barbarian class, since you can go into a rage during the big fights and give yourself a good competitive edge.', 'When you are charging into combat, you don\'t need to worry about stuff like armor. Whenever you are not wearing armor, your armor class is equal to 10 + your Dexterity modifier + your Constitution modifier. You can wield a shield and keep this effect. Since your Constitution should already be high, as a Barbarian, this ability is very useful, since you don\'t really have to worry about your armor for a while. ', 2, '2', 2),
('Barbarian', 2, 'Reckless Attack, Danger Sense', 'You can recklessly charge into combat for colossal damage, but in exchange for the risk of yourself. When you attack a creature on your turn, you can choose to give yourself advantage on your attack rolls for your turn. However, in exchange, all attacks against you have advantage until your next turn. If you have Extra Attack, or some other feature allowing you to make multiple attacks in a turn, you must declare this during the first attack. This can be useful if you are charging into battle and need to land one more big strike.', 'You have good senses, and can react quickly when needed. If you are not blind, deaf, or incapacitated, you have advantage against Dexterity saving throws against effects you can see. Examples of this include a blue dragon\'s lightning breath, a dark wizard\'s Fireball, or the maze of traps some group of bandits left to sway intruders to stay out of their hovel.', 2, '2', 2),
('Barbarian', 3, 'Primal Path', 'Each Barbarian tends to travel down a Primal Path, a figurative way of mindless combat that suits them best. You can find a list of Primal Paths on page  of the Player\'s Handbook.', '', 2, '3', 2),
('Barbarian', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, '3', 2),
('Barbarian', 5, 'Extra Attack, Fast Movement', 'You become more capable, and begin to swing your weapon more switfly in battle. Whenever you take the attack action, you can make two attacks instead of one.', 'Since you most likely will not wear armor, you are faster in combat than others. When you are not wearing heavy armor, your speed increases by 10 feet.', 3, '3', 2),
('Barbarian', 6, 'Path Feature', 'Check your specific Primal Path for your 6th level feature!', '', 3, '4', 2),
('Barbarian', 7, 'Feral Instinct', 'You have the feral instincts of a wild animal. You have advantage on initiative rolls. Additionally, if you are surprised by a sneaky assailant at the start of combat, and are not physically incapacitated, you can act normally on your turn, provided that you start your turn by gonig into a rage.', '', 3, '4', 2),
('Barbarian', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, '4', 2),
('Barbarian', 9, 'Brutal Critical', 'When most people land a critical hit, they roll 1 additional damage dice. You don\'t have time for that. When you land a critical hit, you get to roll 2 additional damage dice instead. This just means that you roll the dice for your weapon, or one of the dice if it has multiple, 2 more times and add together the result. You also get to roll more at later levels.', '', 4, '4', 3),
('Barbarian', 10, 'Path Feature', 'Check your specific Primal Path for your 10th level feature!', '', 4, '4', 3),
('Barbarian', 11, 'Relentless Rage', 'While you are raging, you are too focused on your lust for blood to notice that you are dying. When you drop to 0 hit points without dying outright, you can make a Constitution saving throw. If you roll higher than a 10, you stay standing with 1 hit point left. If you get knocked back down to 0 again, you can keep making Constitution saving throws like this to come back with 1 hit point. However, the DC, or what you have to roll higher than to succeed, increases by 5 for each success. So if you beat the DC of 10, next time you have to beat a DC of 15, then 20, and so on. At the end of a long rest, this feature resets the DC to 10. With a high costitution and a little luck, this feature can make you an unstoppable juggernaut in battle.', '', 4, '4', 3),
('Barbarian', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, '5', 3),
('Barbarian', 13, 'Brutal Critical (2)', 'Like the feature at level 9, you now get 3 additional damage dice to roll when you land a critical hit.', '', 5, '5', 3),
('Barbarian', 14, 'Path Feature', 'Check your specific Primal Path for your 14th level feature!', '', 5, '5', 3),
('Barbarian', 15, 'Persistent Rage', 'Now, your rages last a minute unless you are knocked unconscious or choose to stop it. Even if you dont attack anyone or take damage during a turn, you\'ll still continue on raging.', '', 5, '5', 3),
('Barbarian', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, '5', 4),
('Barbarian', 17, 'Brutal Critical (3)', 'Like the features at levels 9 and 13, you now get 4 additional damage dice to roll when you land a critical hit.', '', 6, '6', 4),
('Barbarian', 18, 'Indomitable Might', 'Whenever you need to make a Strength check, you can choose to use your strength score as the result of a roll, after bonuses. As an example, lets say you have a Strength modifier of +4, and you roll a 7. If you have a 19 Strength score, you can choose to use 19 as your final result, instead of 11. Basically, with a high enough Strength score, you can rarely fail any check involving Strength', '', 6, '6', 4),
('Barbarian', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, '6', 4),
('Barbarian', 20, 'Primal Champion', 'You have relied on your Strength and Constitution to reach this point, and all that time using it has trained it exponentially. Your Strength and Constitution score increase by 4 each. Your new maximum for those stats is also 24 instead of 20. This takes your already formidable health and power and cranks it up a few notches.', 'You gain an unlimited amount of rages at this level, allowing you to just go insane and tear through your enemies.', 6, 'Unlimited', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bard`
--

CREATE TABLE `bard` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `cantrips` int(1) DEFAULT NULL,
  `spells_known` int(2) DEFAULT NULL,
  `spell_slots_1` int(1) DEFAULT NULL,
  `spell_slots_2` int(1) DEFAULT NULL,
  `spell_slots_3` int(1) DEFAULT NULL,
  `spell_slots_4` int(1) DEFAULT NULL,
  `spell_slots_5` int(1) DEFAULT NULL,
  `spell_slots_6` int(1) DEFAULT NULL,
  `spell_slots_7` int(1) DEFAULT NULL,
  `spell_slots_8` int(1) DEFAULT NULL,
  `spell_slots_9` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bard`
--

INSERT INTO `bard` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `cantrips`, `spells_known`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`, `spell_slots_6`, `spell_slots_7`, `spell_slots_8`, `spell_slots_9`) VALUES
('Bard', 1, 'Spellcasting, Bardic Inspiration (d6)', 'You can cast magical spells through the power of song. You start off knowing two cantrips and four 1st level spells from the Bard spell list. You learn more spells, cantrips, and stornger spells at later levels, as the table describes. You also can learn a few spells from any spell list, but this is much later, and very limited. Whenever a spell you cast makes an attack roll, add your spellcasting modifier to the roll. Your spellcasting modifier is equal to your proficiency bonus + your Charisma modifier. If you cast a spell that requires a creature to make a saving throw, the DC, or what they have to roll higher than, is 8 + your proficiency bonus + your Charisma modifier. As someone who casts spells through the power of music, you can use a musical instrument to substitute any material component needed for a spell. You can cast spells that have the ritual tag on them without spending a spell slot, but you will have to spend 10 minutes casting it, regardless of the regular casting time.', 'Your ability to inspire your allies is one of the primary features of being a Bard. You have an anoumt of Inspiration dice equal to your Charisma modifier. Starting off, this dice will be a d6, but it becomes a larger dice at higher levels. As a bonus action, you can give an ally one of your inspiration dice. In the following 10 minutes, they can use that inspiration dice whenever they make an ability check, saving throw, or attack roll. To use the inspiraiton dice, they just roll a d6, or what the level of your dice is at higher levels, and add it to their roll for what they rolled for. If they do not use the dice in those 10 minutes, they lose the dice. They also lose the dice after they use it. This feature baically allows you to give a small bonus to rolls for allies when they need it. An ally can only have one inspiration dice at a time, and you can not personally use your own inspiration dice. You regain all of your used inspiration dice when you finish a long rest. ', 2, 2, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
('Bard', 2, 'Jack of All Trades, Song of Rest (d6)', 'You have a natural talent for basically everything. You can add half of your proficiency bonus to any skill check that would not already have your proficiency bonus added to it, such as through being proficient, or having expertise from the level 3 feature.', 'Whenever your party takes a short rest, you can play soothing music. Any creature, including yourself, who regains hit points by using up hit dice at the end of a short rest can heal an additional 1d6 hit points. This amount increases as you level up, but this can be useful for when your party is weak and needs to heal up, especially if they only have a few hit dice left. The only cost of this ability is that the creatures affected must use up at least 1 hit dice during the rest, but other than that, there is no limitation to how often you can use this feature.', 2, 2, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0),
('Bard', 3, 'Bard College, Expertise', 'Each Bard eventually selects a Bard College, to specialize what type of music they play. THey can make you a more menacing melee combatant, or make you a better caster, depending on your choice.', 'You gain expertise with two skill proficiencies of your choice. Whenever you are proficient in a skill, you can add on your proficiency bonus to any rolls you make for that skill. having expertise instead of proficiency means you can add your proficiency bonus twice. You can only gain expertise in a skill you are already proficienct in, but this feature can basically give you mastery over certain skills.', 2, 2, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0),
('Bard', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, 3, 7, 4, 3, 0, 0, 0, 0, 0, 0, 0),
('Bard', 5, 'Bardic Inspiration (d8), Font of Inspiration', 'Your Bardic inspiration dice get even stronger. Now, your inspiration dice are 1d8 each.', 'You regain inspiration at a faster rate than before. You regain all used inspiration dice during a short or long rest now.', 3, 3, 8, 4, 3, 2, 0, 0, 0, 0, 0, 0),
('Bard', 6, 'Countercharm, Bard College Feature', 'You can perform as magical performance as an action. This performance lasts until the end of your next turn. Any creature, including yourself, within 30 feet of you and that can hear you has advantage on saving throws against being charmed or frightened. This performance lasts until the end of your next turn, or ends shorter if you are incapacitated or knocked out. This feature has no cost other than an action, so this can be useful if you are facing a foe that can control you with their mind.', 'Check your college for your 6th level feature.', 3, 3, 9, 4, 3, 3, 0, 0, 0, 0, 0, 0),
('Bard', 7, 'No New Features', 'However, you still gain new spells!', 'Check that spell table! You now have access to 4th level spells!', 3, 3, 10, 4, 3, 3, 1, 0, 0, 0, 0, 0),
('Bard', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, 3, 11, 4, 3, 3, 2, 0, 0, 0, 0, 0),
('Bard', 9, 'Song of Rest (d8)', 'Whenever you use your Song of Rest during a short rest, they can roll an additional 1d8 instead of 1d6 for regaining health.', '', 4, 3, 12, 4, 3, 3, 3, 1, 0, 0, 0, 0),
('Bard', 10, 'Bardic Inspiration (d10), Expertise, Magical Secrets', 'Your Bardic inspiration dice get even stronger. Now, your inspiration dice are 1d10 each. Also, similar to the feature gained at level 3, you gain expertise in 2 more skills.', 'You may be a Bard, but your magic has range. You can learn any 2 spells of a level you can cast, and they can be from any spell list. These do count towards the number of spells you cast, however you gain space for 2 new spells at this level anyway, so it doesn\'t necessarily hurt you. These spells, when you learn them, count as Bard spells for you. This feature can give you a wide variety of perks. You can select spells other classes specifically get to widen your movepool. You gain more spells in this manner at later levels.', 4, 4, 14, 4, 3, 3, 3, 2, 0, 0, 0, 0),
('Bard', 11, 'No New Features', 'However, you still gain new spells!', 'Check that spell table! You now have access to 7th level spells!', 4, 4, 15, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Bard', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 4, 15, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Bard', 13, 'Song of Rest (d10)', 'Whenever you use your Song of Rest during a short rest, they can roll an additional 1d10 instead of 1d8 for regaining health.', '', 5, 4, 16, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Bard', 14, 'Magical Secrets, Bard College Feature', 'Similar to the feature at level 10, you can learn 2 spells of a level you can cast from any spell list you want, and count them as Bard spells.', 'Check your college for your 14th level feature.', 5, 4, 18, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Bard', 15, 'Bardic Inspiration (d12)', 'Your Bardic inspiration dice get even stronger. Now, your inspiration dice are 1d12 each.', '', 5, 4, 19, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Bard', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 4, 19, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Bard', 17, 'Song of Rest (d12)', 'Whenever you use your Song of Rest during a short rest, they can roll an additional 1d12 instead of 1d10 for regaining health.', '', 6, 4, 20, 4, 3, 3, 3, 2, 1, 1, 1, 1),
('Bard', 18, 'Magical Secrets', 'Similar to the features at level 10 and 14, you can learn 2 spells of a level you can cast from any spell list you want, and count them as Bard spells.', '', 6, 4, 22, 4, 3, 3, 3, 3, 1, 1, 1, 1),
('Bard', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 4, 22, 4, 3, 3, 3, 3, 2, 1, 1, 1),
('Bard', 20, 'Superior Inspiration', 'Whenever you roll initiative, you can regain an inspiration dice if you have none left.', '', 6, 4, 22, 4, 3, 3, 3, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `hit_die` text NOT NULL,
  `main_stats` text NOT NULL,
  `usual_races` text NOT NULL,
  `spellcasting` text NOT NULL,
  `specialty` text NOT NULL,
  `gear_proficiency` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class`, `description`, `hit_die`, `main_stats`, `usual_races`, `spellcasting`, `specialty`, `gear_proficiency`) VALUES
('Barbarian', 'A fierce warrior of primitive background who can enter a battle rage', 'd12', 'Strength and Constitution', 'Half-Orcs, Dwarves, and Dragonborn', 'NO', 'Highest health pool in the game, and capable of massive damage', 'Light and medium armor, shields, simple weapons, and martial weapons'),
('Bard', 'An inspiring magician whose power echoes the music of creation', 'd8', 'Charisma', 'Half-Elves, Tieflings, and Humans', 'YES', 'Jack of all trades, excels in support spells and non-combat scenarios', 'Light armor, simple weapons, hand crossbows, longswords, rapiers, and shortswords'),
('Cleric', 'A priestly champion who wields divine magic in service of a higher power', 'd8', 'Wisdom', 'Dwarves, Elves, and Humans', 'YES', 'Capable of high healing and damage output with spells and melee attacks', 'Light and medium armor, shields, and simple weapons'),
('Druid', 'A priest of the Old Faith, wielding the powers of nature - moonlight and plant growth, fire and lightning - and adopting animal forms', 'd8', 'Wisdom', 'Elves, Humans, and Dwarves', 'YES', 'Powerful support spells with access to shapeshift into useful animal forms', 'Nonmetal light and medium armor, nonmetal shields, clubs, daggers, darts, javelins, maces, quarterstaffs, scimitars, sickles, slings, and spears'),
('Fighter', 'A master of martial combat, skilled with a variety of weapons and armor', 'd10', 'Strength and Dexterity', 'Half-orcs, Dwarves, and Dragonborn', 'ARCHETYPE', 'Most consistent damage output, fantastic with any weapon', 'All armor, shields, simple and martial weapons'),
('Monk', 'A master of martial arts, harnessing the power of the body in pursuit of physical and spiritual perfection', 'd8', 'Dexterity and Wisdom', 'Elves, Humans, and Halflings', 'NO', 'Battlefield controllers capable of high damage output', 'Simple weapons and shortswords'),
('Paladin', 'A holy warrior bound to a sacred oath', 'd10', 'Strength and Charisma', 'Dragonborn, Half-orcs, and Dwarves', 'YES', 'Deals high amounts of damage and are capable of protecting the group from harm', 'All armor, shields, and simple and martial weapons'),
('Ranger', 'A warrior who uses martial prowess and nature magic to combat threats on the edges of civilization', 'd10', 'Dexterity and Wisdom', 'Elves, Halflings, and Humans', 'YES', 'Capable of solid ranged damage and enhanced with healing and utility spells', 'Light and medium armor, shields, and simple and martial weapons'),
('Rogue', 'A scoundrel who uses stealth and trickery to overcome obstacles and enemies', 'd8', 'Dexterity', 'Halflings, Elves, and Humans', 'ARCHETYPE', 'Evasive, able to get attacks in then run to safety, along with skills designed for stealth and surprise attacks', 'Light armor, simple weapons, hand crossbows, longswords, rapiers, and shortswords'),
('Sorcerer', 'A spellcaster who draws on inherent magic from a gift or bloodline', 'd6', 'Charisma and Constitution', 'Half-elves, Tieflings, and Humans', 'YES', 'High damage spellcaster with a decent variety of spells and ability to modify spells with unique effects', 'Daggers, darts, slings, quarterstaffs, and light crossbows'),
('Warlock', 'A wielder of magic that is derived from a bargain with an extraplanar entity', 'd8', 'Charisma', 'Tieflings, Half-elves, and Humans', 'PACT', 'A small pool of magic replenishes after you take a short break, instead of after a full night\'s sleep', 'Light armor and simple weapons'),
('Wizard', 'A scholarly magic-user capable of manipulating the structures of reality', 'd6', 'Intelligence', 'Gnomes, Elves, and Tieflings', 'YES', 'High variety spellcaster able to learn a vast array of spells for utility, damage, and battlefield control', 'Daggers, darts, slings, quarterstaffs, and light crossbows');

-- --------------------------------------------------------

--
-- Table structure for table `cleric`
--

CREATE TABLE `cleric` (
  `class` text NOT NULL,
  `level` int(11) NOT NULL,
  `feature` text NOT NULL,
  `feat_desc_1` text NOT NULL,
  `feat_desc_2` text NOT NULL,
  `proficiency` int(11) NOT NULL,
  `cantrips` int(11) NOT NULL,
  `spell_slots_1` int(11) NOT NULL,
  `spell_slots_2` int(11) NOT NULL,
  `spell_slots_3` int(11) NOT NULL,
  `spell_slots_4` int(11) NOT NULL,
  `spell_slots_5` int(11) NOT NULL,
  `spell_slots_6` int(11) NOT NULL,
  `spell_slots_7` int(11) NOT NULL,
  `spell_slots_8` int(11) NOT NULL,
  `spell_slots_9` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleric`
--

INSERT INTO `cleric` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `cantrips`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`, `spell_slots_6`, `spell_slots_7`, `spell_slots_8`, `spell_slots_9`) VALUES
('Cleric', 1, 'Spellcasting, Divine Domain', 'Spellcasting works a bit differently for clerics than it does any other class. To begin with, clerics learn 3 cantrips of their choosing from the Cleric Spell list, and can also prepare  an amount of other non-cantrip cleric spells up to your Wisdom Modifier + your level (so, you don\'t \'know\' spells like other classes do). You can prepare new spells up to that amount after a long rest, switching your old ones out for new ones (but, you don\'t have to, of course). Wisdom is your most important modifier for your spellcasting stuff. For example, your Spell Save DC (What enemies need to beat with a roll to dodge the attack) is calculated  using this formula: 8 + your proficiency bonus + Wisdom Modifier. Also, your spell attack bonus (what you add to all ranged spell attacks like Firebolt) is proficiency bonus + Wisdom Modifier. Clerics can also ritual cast spells with the ritual tag, and can use a Spellcasting Focus in place of all non-priced Material Components in a spell. You gain new spells lots every level, and can view how many spell slots you have per level using this handy-dandy chart:', 'Each cleric has a divine domain related to their specific deity. Take a look at the Divine Domains on page 58 of the player\'s handbook, and choose one, reaping its particular benefits, most notably with domain spells. These domain spells are gained at the level noted beside them, and stay with you, which means they are basically free spells that don\'t count against your daily preparation limit. Neat!', 2, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0),
('Cleric', 2, 'Channel Divinity (Once per rest), Domain Feature', 'Channel Divinity allows you to channel divine energy from your deity into powerful effects. You start out with two special effects: Turn Undead and some other feature determined by your domain. Once you use your CD, you can\'t use it again until you have rested. Turn Undead, by the way, allows you to present your holy symbol to any undead within 30ft., and, if they fail a wisdom saving thow against your spell save DC, they are frightened, and stay away from you for 1 minute (10 rounds of combat).', 'Check your specific domain for your 2nd level feature!', 2, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0),
('Cleric', 3, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get two new 2nd level spell slots!', 2, 3, 4, 2, 0, 0, 0, 0, 0, 0, 0),
('Cleric', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'Make sure you check the spell slot table for your new slots!', 2, 4, 4, 3, 0, 0, 0, 0, 0, 0, 0),
('Cleric', 5, 'Destroy Undead(1/2)', 'From this point forward, when you use your Turn Undead Channel Divinity Feature, if the undead fails and is under a certain challenge rating, it is destroyed! To know what CR (challenge rating) you can do this to, the number next to the feature in the \"Features Gained At This level\" column will tell you. Make sure your DM is aware of this ahead of time, as your DM knows the challenge rating of monsters, while you do not.', 'Make sure you check the spell slot table for your new slots!', 3, 4, 4, 3, 2, 0, 0, 0, 0, 0, 0),
('Cleric', 6, 'Channel Divinity (Twice per rest), Domain Feature', 'You can now use any channel divinity feature twice before resting!', 'Check your specific domain for your 6th level feature!', 3, 4, 4, 3, 3, 0, 0, 0, 0, 0, 0),
('Cleric', 7, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 4th level spell slot!', 3, 4, 4, 3, 3, 1, 0, 0, 0, 0, 0),
('Cleric', 8, 'Ability Score Improvement, Destroy Undead (1), Domain Feature', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'Destroy Undead now works on CR 1 monsters! Also, check your domain features list for your new 8th level feature!', 3, 4, 4, 3, 3, 2, 0, 0, 0, 0, 0),
('Cleric', 9, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 5th level spell slot!', 4, 4, 4, 3, 3, 3, 1, 0, 0, 0, 0),
('Cleric', 10, 'Divine Intervention', 'In dire straits, you can call upon your deity for assistance. Roll percentile dice (your d10 and d100), and, if their value is equal to or lower than your cleric level, they will intervene, and assist your with your needs.', 'Make sure you check the spell slot table for your new slots!', 4, 5, 4, 3, 3, 3, 2, 0, 0, 0, 0),
('Cleric', 11, 'Destroy Undead(2)', 'Your Destroy Undead feature now works on CR 2 monsters!', 'Make sure you check the spell slot table for your new slots!', 4, 5, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Cleric', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'Make sure you check the spell slot table for your new slots!', 4, 5, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Cleric', 13, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 7th level spell slot!', 5, 5, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Cleric', 14, 'Destroy Undead(3)', 'Your Destroy Undead feature now works on CR 3 monsters!', 'Make sure you check the spell slot table for your new slots!', 5, 5, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Cleric', 15, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 8th level spell slot!', 5, 5, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Cleric', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'Make sure you check the spell slot table for your new slots!', 5, 5, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Cleric', 17, 'Destroy Undead(4), Domain Feature', 'Your Destroy Undead feature now works on CR 4 monsters!', 'Check your specific domain for your 17th level feature!', 6, 5, 4, 3, 3, 3, 2, 1, 1, 1, 1),
('Cleric', 18, 'Channel Divinity(Thrice per rest)', 'You can now use any channel divinity feature three times before resting!', 'Make sure you check the spell slot table for your new slots!', 6, 5, 4, 3, 3, 3, 3, 1, 1, 1, 1),
('Cleric', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'Make sure you check the spell slot table for your new slots!', 6, 5, 4, 3, 3, 3, 3, 2, 1, 1, 1),
('Cleric', 20, 'Divine Intervention Improvement', 'You are now one with your god, and do not need to roll to have it intervene on your behalf.', 'Make sure you check the spell slot table for your new slots!', 6, 5, 4, 3, 3, 3, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `druid`
--

CREATE TABLE `druid` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `cantrips` int(1) DEFAULT NULL,
  `spell_slots_1` int(1) DEFAULT NULL,
  `spell_slots_2` int(1) DEFAULT NULL,
  `spell_slots_3` int(1) DEFAULT NULL,
  `spell_slots_4` int(1) DEFAULT NULL,
  `spell_slots_5` int(1) DEFAULT NULL,
  `spell_slots_6` int(1) DEFAULT NULL,
  `spell_slots_7` int(1) DEFAULT NULL,
  `spell_slots_8` int(1) DEFAULT NULL,
  `spell_slots_9` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `druid`
--

INSERT INTO `druid` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `cantrips`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`, `spell_slots_6`, `spell_slots_7`, `spell_slots_8`, `spell_slots_9`) VALUES
('Druid', 1, 'Druidic, Spellcasting', 'Druidic is a special language known only to Druids. You can leave secret messages for other Druids. It\'s farily situational, but in the right circumstances could be very useful, like sending coded messages to allies who are in leagues with a fellow Druid.', 'Spellcasting works a bit differently for Druids than it does any other class. To begin with, druids learn 3 cantrips of their choosing from the Druid Spell list, and can also prepare  an amount of other non-cantrip druid spells up to your Wisdom Modifier + your level (so, you don\'t \'know\' spells like other classes do). You can prepare new spells up to that amount after a long rest, switching your old ones out for new ones (but, you don\'t have to, of course). Wisdom is your most important modifier for your spellcasting stuff. For example, your Spell Save DC (What enemies need to beat with a roll to dodge the attack) is calculated  using this formula: 8 + your proficiency bonus + Wisdom Modifier. Also, your spell attack bonus (what you add to all ranged spell attacks like Firebolt) is proficiency bonus + Wisdom Modifier. Druids can also ritual cast spells with the ritual tag, and can use a Druidic Focus in place of all non-priced Material Components in a spell. You gain new spell slots every level, and can view how many spell slots you have per level using this handy-dandy chart:', 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0),
('Druid', 2, 'Wild Shape, Druid Circle', 'You can turn yourself into beasts of the wild. There are a few limitations to what you can transform into, however. Just starting out, you can\'t turn into anything too powerful(you\'re only allowed to turn into creatures with a challenge rating of 1/4 or less), but as you level up you will be able to turn into more powerful animals. Additionally, they cannot be able to swim or fly naturally, however you will overcome this limitation as you level up as well. You can maintain this new animal form for a number of hours equal to half of your druid level, but will revert to your normal form at the heath you started with if you are defeated in your wild shape. You retain all your intelligence, wisdom, and charisma while you are an animal, but you cannot cast spells. You can turn into animals twice a day, provided a good night\'s sleep. Nice!', 'Each Druid eventually joins a Druid Circle to integrate with nature. Take a look at the Druid Circles on page 68 of the Player\'s Handbook for the possible Circles to join for their benefits. The Circle of the Land makes you a stronger spellcaster with added spells that are always prepared, while the Circle of the Moon enhances your Wild Shape feature so you can turn into more powerful beasts. Neat!', 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0),
('Druid', 3, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get two new 2nd level spell slots!', 2, 2, 4, 2, 0, 0, 0, 0, 0, 0, 0),
('Druid', 4, 'Wild Shape Improvement(1/2), Ability Score Improvement', 'Your wild shape becomes more powerful, being able to turn into stronger creatures (with a challenge rating of 1/2), and creatures that can swim naturally.', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 2, 3, 4, 3, 0, 0, 0, 0, 0, 0, 0),
('Druid', 5, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get two new 3rd level spell slots!', 3, 3, 4, 3, 2, 0, 0, 0, 0, 0, 0),
('Druid', 6, 'Druid Circle Feature', 'Check your specific circle for your 9th level feature!', '', 3, 3, 4, 3, 3, 0, 0, 0, 0, 0, 0),
('Druid', 7, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 4th level spell slots!', 3, 3, 4, 3, 3, 1, 0, 0, 0, 0, 0),
('Druid', 8, 'Wild Shape Improvement, Ability Score Improvement', 'Your wild shape becomes more powerful, being able to turn into stronger creatures, and creatures that can fly on the winds.', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 3, 3, 4, 3, 3, 2, 0, 0, 0, 0, 0),
('Druid', 9, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 5th level spell slot!', 4, 3, 4, 3, 3, 3, 1, 0, 0, 0, 0),
('Druid', 10, 'Druid Circle Feature', 'Check your specific circle for your 11th level feature!', '', 4, 4, 4, 3, 3, 3, 2, 0, 0, 0, 0),
('Druid', 11, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 6th level spell slot!', 4, 4, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Druid', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 4, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Druid', 13, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 7th level spell slot!', 5, 4, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Druid', 14, 'Druid Circle Feature', 'Check your specific circle for your 17th level feature!', '', 5, 4, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Druid', 15, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 8th level spell slot!', 5, 4, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Druid', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 4, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Druid', 17, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You get one new 9th level spell slot!', 6, 4, 4, 3, 3, 3, 2, 1, 1, 1, 1),
('Druid', 18, 'Timeless Body, Beast Spells', 'Timeless body is a utility feature that extends your life tenfold. For every decade you are alive, your body ages 1 year.', 'If you remember from earlier how we said that you cannot cast spells while in your animal form, you have overcome that fact. You now can cast spells while in your beast shape, however you cannot cast any spell that requires a material component. ', 6, 4, 4, 3, 3, 3, 3, 1, 1, 1, 1),
('Druid', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 4, 4, 3, 3, 3, 3, 2, 1, 1, 1),
('Druid', 20, 'Archdruid', 'Instead of only twice a day, you can now use your abiltiy to take on a wild shape as many times as you want.', '', 6, 4, 4, 3, 3, 3, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fighter`
--

CREATE TABLE `fighter` (
  `class` text,
  `level` int(5) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fighter`
--

INSERT INTO `fighter` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`) VALUES
('Fighter', 1, 'Fighting Style, Second Wind', 'You can select a fighting style to benefit you, depending on what kind of equipment you plan to use in combat. You can not reselect this option later, so it is important to know what kind of weaponry you want to be using. There are 6 options for your fighting style as a Fighter. Defense gives you +1 to your Armor Class while wearing armor. Dueling gives you a +2 bonus to damage rolls when you wield a one handed weapon, but with on other weapon. Great Weapon Fighting allows you to reroll attack rolls when you roll a 1 or 2. You must keep the new roll, but you can only use Great Weapon Fighting if you are wielding a weapon that can be swung with 2 hands, like two handed or versatile weapons. Protection allows you to use a shield you are wielding to impose disadvantage on an attack against an ally of yours within 5 feet as a reaction. Archery allows you to have a +2 bonus to attack rolls made with ranged weapons. Two Weapon Fighting allows you to add your ability modifier to your damage rolls on the off handed attack.', 'You have a finite amount of stamina that you can tap into mid fight. As a bonus action, you can heal yourself an amount equal to 10 + your fighter level. You can only do this once per short or long rest, but this can be useful if you are facing an enemy that has you scarce on health.', 2),
('Fighter', 2, 'Action Surge', 'You can feel a surge of energy occasionally. Once per short or long rest, you can take a second action on your turn, instead of only one. You gain a second use of this feature at level 17.', '', 2),
('Fighter', 3, 'Martial Archetype', 'Each Fighter eventually develops a Martial Archetype, to develop their fighting methods. You can find the Martial Archetpye options on page 72 of the Player\'s Handbook.', '', 2),
('Fighter', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2),
('Fighter', 5, 'Extra Attack', 'Now, whenever you attack someone, you get to hit them twice, instead of once. You will get to make more attacks like this as you level up.', '', 3),
('Fighter', 6, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3),
('Fighter', 7, 'Martial Archetype Feature', 'Check your specific Archetype for your 7th level feature!', '', 3),
('Fighter', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3),
('Fighter', 9, 'Indomitable Might', 'You can reroll a failed saving throw. You have to use the new roll, but this feature can save you from being paralyzed during the crucial moments of a boss fight. You can only use this feature once per long rest, but you gain additional uses as you level up.', '', 4),
('Fighter', 10, 'Martial Archetype Feature', 'Check your specific Archetype for your 10th level feature!', '', 4),
('Fighter', 11, 'Extra Attack (2)', 'Like the 5th level feature, you gain an additional attack. You can now make 3 attacks in one turn as one action.', '', 4),
('Fighter', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4),
('Fighter', 13, 'Indomitable Might (2)', 'You can now use the Indomitable Might feature, from the 9th level, two times per long rest.', '', 5),
('Fighter', 14, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5),
('Fighter', 15, 'Martial Archetype Feature', 'Check your specific Archetype for your 15th level feature!', '', 5),
('Fighter', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5),
('Fighter', 17, 'Action Surge (2), Indomitable Might (3)', 'You gain a second use of your Action Surge feature from your 2nd level. You cannot use more than one use of this feature in one turn.', 'You can now use the Indomitable Might feature, from the 9th level, three times per long rest.', 6),
('Fighter', 18, 'Martial Archetype Feature', 'Check your specific Archetype for your 18th level feature!', '', 6),
('Fighter', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6),
('Fighter', 20, 'Extra Attack (3)', 'Like the 5th and 11th level features, you gain an additional attack. You can now make 4 attacks in one turn as one action.', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `monk`
--

CREATE TABLE `monk` (
  `class` text,
  `level` int(5) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(11) DEFAULT NULL,
  `ki_points` int(9) DEFAULT NULL,
  `martial_arts` text,
  `unarmored_movement` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monk`
--

INSERT INTO `monk` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `ki_points`, `martial_arts`, `unarmored_movement`) VALUES
('Monk', 1, 'Unarmored Defense, Martial Arts', 'You don\'t need armor to be safe. You have trained well enough and hard enough to know how to avoid blows, block, and strike. When you are not wearing armor or using a shield, your armor class is equal to 10 + your Dexterity modifier + your Wisdom modifier.', 'Your training in a particular partial art or fighting form has made it so that your fists and feet are mighty weapons. At level 1, your unarmed strikes deal 1d4 bludeoning damage. This damage increases as shown on the table. Additionally, you can classify some weapons as \'Monk Weapons\'. A \'Monk Weapon\' is either a shortsword, or a simple weapon that is not heavy or two handed. You can choose to use your Strength or Dexterity modifier for your attack and damage rolls whenever you make an attack using an unarmed strike or a Monk Weapon. Last, but not least, Whenever you make an attack with an unarmed strike or a Monk Weapon, you may use your bonus action to make an additional unarmed strike.', 2, 0, '1d4', 0),
('Monk', 2, 'Ki, Unarmored Movement', 'You have an internal resevoir of life force known as Ki, and you have learned to harness it in a variety of ways. Whenever you use a point of Ki, it is lost until your next short or long rest, where you must meditate for at least 30 minutes to restore it. At level 2, you have 3 techniques you can use your Ki with, and you learn more as you level up. You can use any one of the 3, however, keep in mind, you\'re limited to your 3 points of ki. While you will gain more Ki points as you level up, as shown on the table, you still need to be careful not to use up your Ki points early and need them later. You can use the technique Flurry of Blows to make 2 unarmed strikes as a bonus action after attacking an opponent. You can use the technique Step of the Wind to disengage from an enemy or Dash as a bonus action, along with doubling your jump height. You can use the technique Patient Defense to, as a bonus action, become more difficult to hit by getting ready to dodge. These 3 features take 1 Ki Point to use each, and they all use up your bonus action. You will learn more as you level up, and even more depending on your Monastic Tradition. If a Ki technique forces someone to make a saving throw, the DC, or what number they have to roll higher than, is equal to 8 + your proficiency bonus + your Wisdom Modifier.', 'You are lighter on your feet, due to how you aren\'t weighed down by armor.', 2, 2, '1d4', 10),
('Monk', 3, 'Monastic Tradition, Deflect Missiles', 'You select a Monastic Tradition to follow, as all monks do. This choice gives you a variety of different Ki Techniques, depending on which Tradition you choose, so be cautious with your decision.', 'You have amazing reflexes that can snatch flying arrows out of the air. Whenever you are hit with a ranged weapon attack, you can use your reaction to decrease the amount of damage you would take by an amount equal to 1d10 + your Dexterity modifier + your Monk Level. If you taeke no damage from the attack using this, then you catch the projectile out of the air, provided it is small and can be held with one hand. You can use 1 Ki Point to instantly throw the projectile as a weapon. It can fly as far as 60 ft, but is accurate as far as 20 ft. You are proficienct with this attack, meaning you can add your proficieny to the attack roll. Additionally, any ammunition thrown like this counts as a Monk Weapon for you.', 2, 3, '1d4', 10),
('Monk', 4, 'Ability Score Improvement, Slow Fall', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'Whenever you are falling a long distance, you can use your reaction upon impact to reduce the damage by an amount equal to 5 x your Monk level.', 2, 4, '1d4', 10),
('Monk', 5, 'Extra Attack, Stunning Strike', 'You have become able to attack faster. Whenever you attack on your turn, you can make 2 attacks instead of 1 during your attack action.', 'When you strike an opponent, you can use a Ki Point to attempt to stun your enemy. They must make a constitution saving throw against your Ki DC, as described in the Ki feautre, or be stunned until the end of your next turn.', 3, 5, '1d6', 10),
('Monk', 6, 'Ki-Empowered Strikes, Monastic Tradition Feature', 'Your strikes are innately powered with your Ki. For the sake of overcoming any resistances, your unarmed strikes count as magical', 'Check your specific tradition for your 6th level feature!', 3, 6, '1d6', 15),
('Monk', 7, 'Evasion, Stillness of Mind', 'You are very nimble. If something that affects an area and forces you to make a Dexterity saving throw, like the fireball spell or a blue dragon\'s lightning breath, you usually would attempt, and take half damage if you succeed. Now, you take no damage if you succeed, and half damage if you fail.', 'You have control over your mind, and you can use an action to end an effect on yourself causing you to be charmed or frightened.', 3, 7, '1d6', 15),
('Monk', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, 8, '1d6', 15),
('Monk', 9, 'Unarmored Movement Improvement', 'Along with the normal effects of Unarmored Movement, you can now run along the tops of fluids and along vertical surfaces. You can only move like this while moving. If you stopp while over water or whil on a wall, you will fall.', '', 4, 9, '1d6', 15),
('Monk', 10, 'Purity of Body', 'Your Ki keeps you safe and empowered, as you become immune to disease and posion.', '', 4, 10, '1d6', 20),
('Monk', 11, 'Monastic Tradition Feature', 'Check your specific tradition for your 11th level feature!', '', 4, 11, '1d8', 20),
('Monk', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 12, '1d8', 20),
('Monk', 13, 'Tongue of the Sun and Moon', 'You are now a master translator. You comprehend all spoken languages, and all creatures can understand you.', '', 5, 13, '1d8', 20),
('Monk', 14, 'Diamond Soul', 'Your mastery over Ki makes you proficient in all saving throws. Additionally, you can spend a Ki Point whenever you fail a saving throw to attempt to roll a second time. You must use the second roll, however.', '', 5, 14, '1d8', 25),
('Monk', 15, 'Timeless Body', 'You are the master of your body, and no one else. You can not be aged magically, and old age does not hider your combat prowess.You can still die of old age, however you do not need to eat or drink.', '', 5, 15, '1d8', 25),
('Monk', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 16, '1d8', 25),
('Monk', 17, 'Monastic Tradition Feature', 'Check your specific tradition for your 17th level feature!', '', 6, 17, '1d8', 25),
('Monk', 18, 'Empty Body', 'You can spend 4 Ki Points to turn invisible for one minute. While invisible, you have resistance to all damage but force damage. Additionally, you can cast Astral Projection on yourself (and only yourself).', '', 6, 18, '1d10', 30),
('Monk', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 19, '1d10', 30),
('Monk', 20, 'Perfect Self', 'Whenever you roll initiative to start a fight, you regain 4 Ki Points if you had 0 Ki Points before', '', 6, 20, '1d10', 30);

-- --------------------------------------------------------

--
-- Table structure for table `paladin`
--

CREATE TABLE `paladin` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `spell_slots_1` int(1) DEFAULT NULL,
  `spell_slots_2` int(1) DEFAULT NULL,
  `spell_slots_3` int(1) DEFAULT NULL,
  `spell_slots_4` int(1) DEFAULT NULL,
  `spell_slots_5` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paladin`
--

INSERT INTO `paladin` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`) VALUES
('Paladin', 1, 'Divine Sense, Lay on Hands', 'You can open up your senses and sniff out the evil in the world. As an action, you can discover the location of any undead, fiend, or celestial within 60 ft of you. You know which type of creature, however you do not know it\'s exact location or it\'s identity. You can also detect if any ground within 60 ft of you has been consecrated or desecrated.', 'You can use divine magic to heal your allies. You have a number of healing points equal to 5 times your Paladin level. As an action, you can use up any amount of those healing points and heal an ally that you can touch. You can alternatively use 5 of these healing points to neutralize a poison or disease afflicting an ally. If multiple diseases or poisons are afflicting an ally, you can heal them all in one turn, given that you have enough healing points.', 2, 0, 0, 0, 0, 0),
('Paladin', 2, 'Fighting Style, Spellcasting, Divine Smite', 'You can select a fighting style to benefit you, depending on what kind of equipment you plan to use in combat. You can not reselect this option later, so it is important to know what kind of weaponry you want to be using. There are 4 options for your fighting style as a Paladin. Defense gives you +1 to your Armor Class while wearing armor. Dueling gives you a +2 bonus to damage rolls when you wield a one handed weapon, but with on other weapon. Great Weapon Fighting allows you to reroll attack rolls when you roll a 1 or 2. You must keep the new roll, but you can only use Great Weapon Fighting if you are wielding a weapon that can be swung with 2 hands, like two handed or versatile weapons. Protection allows you to use a shield you are wielding to impose disadvantage on an attack against an ally of yours within 5 feet as a reaction.', 'You have the ability to harness divine magic, much like a Cleric. However, your magical ablities are considerably weaker than many classes that fully cast spells. You can choose a number of spells equal to your Charisma modifier and half of your paladin level. for example, if your Charisma is 12, and you are a level 4 Paladin, you could prepare 3 spells. Round your level down while making this calculation. (You don\'t technically know these spells, you just have them prepared for the day). You can change out these spells during a long rest, but you can only choose spells that you have spell slots for. Charisma is the stat you use for spellcasting. You can use a holy symbo in exchange for any material requirements for spells. Your spells have a bonus to their attack rolls equal to your proficiency bonus and Charisma modifier. If a spell you cast requires someone to make a saving throw, they have to roll higher than your spell save DC to succeed. You spell save DC is 8 + your proficiency bonus + your Charisma modifier. Additionally, you can use up a spell slot whenever you hit a creature with a melee weapon, and deal extra radiant damage to them. The damage is 1d8, with an additional 1d8 for each level of the spell slot. As an example, if you use a 4th level spell slot, you can add 4d8 radiant damage to the strike. Using this feature instantly adds an additional 1d8 if you are hitting a fiend or undead creature.', 2, 2, 0, 0, 0, 0),
('Paladin', 3, 'Divine Health, Sacred Oath', 'You become immune to disease, eat all the raw cookie dough you want.', 'Each Paladin takes on a Sacred Oath to swear to their gods. Each Oath gives you special features, along with spells that you always have prepared. Thses Oath Spells do not count against the amount of spells you know, so you can learn more spells. You additionally learn to Channel Divinity. When you use Channel Divinity, you gain an effect specific to your Oath. The effects can be anything from binding an enemy in vines to repelling unholy demons. You can use it once per short or long rest. However, you also must take on tenets of your Oath, rules and philosophies to live by, so that you can show your god that you are worthy of his gifts. You can find a list of Oaths starting on page 85 of the Player\'s Handbook.', 2, 3, 0, 0, 0, 0),
('Paladin', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, 3, 0, 0, 0, 0),
('Paladin', 5, 'Extra Attack', 'Now, whenever you attack someone, you get to hit them twice, instead of once.', 'Make sure you check the spell slot table for your new slots! You now have access to 2nd level spells!', 3, 4, 2, 0, 0, 0),
('Paladin', 6, 'Aura of Protection', 'You exude a protective aura to assist your allies. Whenever you or an ally within 10 feet of you has to make a saving throw, your presence gives them a bonus on the saving throw equal to your charisma modifier, with a minimum of +1. At level 18, the range of this ability increases to 30 ft. This only works if you are conscious.', '', 3, 4, 2, 0, 0, 0),
('Paladin', 7, 'Sacred Oath Feature', 'Check your specific oath for your 7th level feature!', '', 3, 4, 3, 0, 0, 0),
('Paladin', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, 4, 3, 0, 0, 0),
('Paladin', 9, 'No New Features', 'However, you still gain new spell slots!', 'Make sure you check the spell slot table for your new slots! You now have access to 3rd level spells!', 4, 4, 3, 2, 0, 0),
('Paladin', 10, 'Aura of Courage', 'You exude a powerful aura to invigorate you allies. You and allies within 10 feet of you can\'t be frightened while you are conscious. At level 18, the range of this effect extends to 30 ft.', '', 4, 4, 3, 2, 0, 0),
('Paladin', 11, 'Improved Divine Smite', 'You have become so good at using your divine smite that it just becomes a routine for your strikes. Whenever you hit an opponent with a melee attack, you deal an additional 1d8 radiant damage. This effect does not count as a use of Divine Smite, so you can use Divine Smite in conjunction with this effect to deal even more radiant damage.', '', 4, 4, 3, 3, 0, 0),
('Paladin', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 4, 3, 3, 0, 0),
('Paladin', 13, 'No New Features', 'However, you still gain new spell slots!', 'Make sure you check the spell slot table for your new slots! You now have access to 4th level spells!', 5, 4, 3, 3, 1, 0),
('Paladin', 14, 'Cleansing Touch', 'You can cleanse the effects of spells from people with your hand. As an action, you can dispel the effect of a spell on yourself or a willing creature.', '', 5, 4, 3, 3, 1, 0),
('Paladin', 15, 'Sacred Oath Feature', 'Check your specific oath for your 15th level feature!', '', 5, 4, 3, 3, 2, 0),
('Paladin', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 4, 3, 3, 2, 0),
('Paladin', 17, 'No New Features', 'However, you still gain new spell slots!', 'Make sure you check the spell slot table for your new slots! You now have access to 5th level spells!', 6, 4, 3, 3, 3, 1),
('Paladin', 18, 'Aura Improvements', 'The range of your Aura of Protection and your Aura of Courage increase to 30 ft.', '', 6, 4, 3, 3, 3, 1),
('Paladin', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 4, 3, 3, 3, 2),
('Paladin', 20, 'Sacred Oath Feature', 'Check your specific oath for your 20th level feature!', '', 6, 4, 3, 3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `species` text,
  `variant` text,
  `str` int(1) DEFAULT NULL,
  `dex` int(1) DEFAULT NULL,
  `con` int(1) DEFAULT NULL,
  `inte` int(1) DEFAULT NULL,
  `wis` int(1) DEFAULT NULL,
  `cha` int(1) DEFAULT NULL,
  `choose` int(1) DEFAULT NULL,
  `features` text,
  `darkvision` int(1) DEFAULT NULL,
  `size` text,
  `custom` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`species`, `variant`, `str`, `dex`, `con`, `inte`, `wis`, `cha`, `choose`, `features`, `darkvision`, `size`, `custom`) VALUES
('Wood Elf', 'Elf', 0, 2, 0, 0, 1, 0, 0, 'Keen Senses, Fey Ancestry, Trance, Elf Weapon Training, Fleet of Foot, Mask of the Wild', 1, 'medium', 0),
('High Elf', 'Elf', 0, 2, 0, 1, 0, 0, 0, 'Keen Senses, Fey Ancestry, Trance, Elf Weapon Training, Cantrip, Extra Language', 1, 'medium', 0),
('Drow Elf', 'Elf', 0, 2, 0, 0, 0, 1, 0, 'Keen Senses, Fey Ancestry, Trance, Drow Weapon Training, Superior Darkvision, Sunlight Sensitivity, Drow Magic', 1, 'medium', 0),
('Hill Dwarf', 'Dwarf', 0, 0, 2, 0, 1, 0, 0, 'Dwarven Resilience, Dwarven Combat Training, Tool Proficiency, Stonecunning, Dwarven Toughness', 1, 'medium', 0),
('Mountain Dwarf', 'Dwarf', 2, 0, 2, 0, 0, 0, 0, 'Dwarven Resilience, Dwarven Combat Training, Tool Proficiency, Stonecunning, Dwarven Armor Training', 1, 'medium', 0),
('Lightfoot Halfling', 'Halfling', 0, 2, 0, 0, 0, 1, 0, 'Lucky, Brave, Halfling Nimbleness, Naturally Stealthy', 0, 'medium', 0),
('Stout Halfling', 'Halfling', 0, 2, 1, 0, 0, 0, 0, 'Lucky, Brave, Halfling Nimbleness, Stout Resilience', 0, 'medium', 0),
('Human', '-', 1, 1, 1, 1, 1, 1, 0, '-', 0, 'medium', 0),
('Variant Human', 'Human', 0, 0, 0, 0, 0, 0, 2, 'Skills, Feat', 0, 'medium', 0),
('Rock Gnome', 'Gnome', 0, 0, 1, 2, 0, 0, 0, 'Gnome Cunning, Artificer\'s Lore, Tinker', 1, 'small', 0),
('Forest Gnome', 'Gnome', 0, 1, 0, 2, 0, 0, 0, 'Gnome Cunning, Natural Illusionist, Speak With Small Beasts', 1, 'small', 0),
('Half-orc', '-', 2, 0, 1, 0, 0, 0, 0, 'Menacing, Relentless Endurance, Savage Attacks', 1, 'medium', 0),
('Half-elf', '-', 0, 0, 0, 0, 0, 2, 2, 'Fey Ancestry, Skill Versatlity', 1, 'medium', 0),
('Dragonborn', '-', 2, 0, 0, 0, 0, 1, 0, 'Draconic Ancestry, Breath Weapon, Damage Resistance', 0, 'medium', 0),
('Tiefling', '-', 0, 0, 0, 1, 0, 2, 0, 'Hellish Resistance, Infernal Legacy', 1, 'medium', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ranger`
--

CREATE TABLE `ranger` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `spells_known` int(2) DEFAULT NULL,
  `spell_slots_1` int(1) DEFAULT NULL,
  `spell_slots_2` int(1) DEFAULT NULL,
  `spell_slots_3` int(1) DEFAULT NULL,
  `spell_slots_4` int(1) DEFAULT NULL,
  `spell_slots_5` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ranger`
--

INSERT INTO `ranger` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `spells_known`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`) VALUES
('Ranger', 1, 'Favored Enemy, Natural Explorer', 'You can select a favored type of enemy to have advantage on tracking them down and recalling useful info, like weaknesses, about them. You select a type of creature from the following list : aberrations, beasts, celestials, constructs, dragons, elementals, fey, fiends, giants, monstrosities, oozes, plants, or undead. Alternatively, you can select 2 humanoid races, such as gnolls, orcs, dragonborn, humans, et cetera. You can choose to learn any 1 language that is associated with the type of enemy you\'ve selected, if there is one. You can select more favored enemy types such as this at later levels for the same benefits as this feature.', 'You are much more accustomed to a certain type of environment, and gain several benefits from the associated terrain. Select a favored terrain from the following list : arctic, coast, desert, forest, grassland, mountain, swamp, or Underdark. You can add your proficiency bonus an additional time to all Intelligence and Wisdom checks involving your chosen terrain. When you are travelling through an area made up of your chosen terrain, you gain several benefits. You cannot get lost, save for magical intervention. Difficult terrain, like waist deep swamp water or steep mountainsides, does not slow you or your group down. You can remain alert to danger even when going throguh survival tactics, like foraging for food and shelter, and you know much more about enemies you track through the terrain, like their number, size, and how recently they travelled through an area. When alone, you can move at a fast pace yet remain stealthy. You can add on additional favored terrains at higher levels for the same effect.', 2, 0, 0, 0, 0, 0, 0),
('Ranger', 2, 'Fighting Style, Spellcasting', 'You can select a fighting style to benefit you, depending on what kind of equipment you plan to use in combat. You can not reselect this option later, so it is important to know what kind of weaponry you want to be using. There are 6 options for your fighting style as a Ranger. Defense gives you +1 to your Armor Class while wearing armor. Dueling gives you a +2 bonus to damage rolls when you wield a one handed weapon, but with on other weapon. Archery allows you to have a +2 bonus to attack rolls made with ranged weapons. Two Weapon Fighting allows you to add your ability modifier to your damage rolls on the off handed attack.', 'You have the ability to harness woodland magic, much like a Druid. However, your magical ablities are considerably weaker than many classes that fully cast spells. You know two 1st spells from the Ranger spell list starting off, as shown in the table. You will learn stronger and more variable spells as you level up. Wisdom is the stat you use for spellcasting. Your spells have a bonus to their attack rolls equal to your proficiency bonus and Wisdom modifier. If a spell you cast requires someone to make a saving throw, they have to roll higher than your spell save DC to succeed. You spell save DC is 8 + your proficiency bonus + your Wisdom modifier. ', 2, 2, 2, 0, 0, 0, 0),
('Ranger', 3, 'Ranger Archetype, Primeval Awareness', 'Each Ranger eventually develops a Ranger Archetype, to develop their skill set. You can find the Ranger Archetype options on page 92 of the Player\'s Handbook.', 'If you spend a spell slot and focus for a minute, you can detect if strange creatures are nearby. You will know if there are any aberrations, celestials, dragons, elementals, fey, fiends, or undead  within a mile radius of you. If you are on terrain that you favor, from your Favored Terrain feature, this feature extends out to a 6 mile radius. You will not know how many, or where they are exactly, but this can help you greatly if you are walking along a linear path and suspect an attack, so you can be ready.', 2, 3, 3, 0, 0, 0, 0),
('Ranger', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, 3, 3, 0, 0, 0, 0),
('Ranger', 5, 'Extra Attack', 'Now, whenever you attack someone, you get to hit them twice, instead of once. ', '', 3, 4, 4, 2, 0, 0, 0),
('Ranger', 6, 'Favored Enemy Improvement, Natural Explorer Improvement', 'Similar to the 1st level feature, you can select an additional favored tpye of enemy, or two humanoid races, to have the benefits of the Favored Enemy feature for. You can learn a language associated with this new enemy type as well.', 'Similar to the 1st level feature, you can select an additional favored terrain to benefit from.', 3, 4, 4, 2, 0, 0, 0),
('Ranger', 7, 'Ranger Archetype Feature', 'Check your specific archetype for your 7th level feature!', '', 3, 5, 4, 3, 0, 0, 0),
('Ranger', 8, 'Ability Score Improvement, Land\'s Stride', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', 'You can now move through difficult terrain and harmful plants without being slowed or harmed, provided that the plants or terrain are not magical. Also, you have advantage against saving throw to escape or avoid being bound and incapacitated by plants.', 3, 5, 4, 3, 0, 0, 0),
('Ranger', 9, 'No New Features', 'However, you still gain new spell slots!', 'Make sure you check the spell slot table for your new slots! You now have access to 3rd level spells!', 4, 6, 4, 3, 2, 0, 0),
('Ranger', 10, 'Natural Explorer Improvement, Hide in Plain Sight', 'Similar to the 1st and 6th level features, you can select an additional favored terrain to benefit from.', 'if you spend 1 minute with a bunch of mud, losoe grass and leaves, and other natural materials, you can make yourself a disguise that gives you a +10 bonus to Stealth checks whle you are pressed up against a wall and don\'t do anything. If you do anything after using this feature for the Stealth bonus, you have to reapply the disguise.', 4, 6, 4, 3, 2, 0, 0),
('Ranger', 11, 'Ranger Archetype Feature', 'Check your specific archetype for your 11th level feature!', '', 4, 7, 4, 3, 3, 0, 0),
('Ranger', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 7, 4, 3, 3, 0, 0),
('Ranger', 13, 'No New Features', 'However, you still gain new spell slots!', 'Make sure you check the spell slot table for your new slots! You now have access to 4th level spells!', 5, 8, 4, 3, 3, 1, 0),
('Ranger', 14, 'Favored Enemy Improvement, Vanish', 'Similar to the 1st and 6th level features, you can select an additional favored tpye of enemy, or two humanoid races, to have the benefits of the Favored Enemy feature for. You can learn a language associated with this new enemy type as well.', 'You can no longer be tracked by non-magical means, unless you willing ly leave a trail. Also, you can hide as a bonus action.', 5, 8, 4, 3, 3, 1, 0),
('Ranger', 15, 'Ranger Archetype Feature', 'Check your specific archetype for your 15th level feature!', '', 5, 9, 4, 3, 3, 2, 0),
('Ranger', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 9, 4, 3, 3, 2, 0),
('Ranger', 17, 'No New Features', 'However, you still gain new spell slots!', 'Make sure you check the spell slot table for your new slots! You now have access to 5th level spells!', 6, 10, 4, 3, 3, 3, 1),
('Ranger', 18, 'Feral Senses', 'You have vrey honed senses that help you in combat. A lack of sight does not impose disadvantage on your attack rolls. Additionally, you know the location of invisible creatures within 30 feet of you, provided you can see, hear, and the creature is also not hidden. ', '', 6, 10, 4, 3, 3, 3, 1),
('Ranger', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 11, 4, 3, 3, 3, 2),
('Ranger', 20, 'Foe Slayer', 'Once per turn, you can add your Wisdom modifier to damage rolls when you are dealing damage to a creature that is a favored enemy from the Favored Enemy feature.', '', 6, 11, 4, 3, 3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rogue`
--

CREATE TABLE `rogue` (
  `class` text,
  `level` int(5) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(11) DEFAULT NULL,
  `sneak_attack` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rogue`
--

INSERT INTO `rogue` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `sneak_attack`) VALUES
('Rogue', 1, 'Expertise, Sneak Attack, Thieves\' Cant', 'You gain expertise with two skill proficiencies of your choice. Whenever you are proficient in a skill, you can add on your proficiency bonus to any rolls you make for that skill. having expertise instead of proficiency means you can add your proficiency bonus twice. You can only gain expertise in a skill you are already proficienct in, but this feature can basically give you mastery over certain skills.', 'As a Rogue, you are used to looking for weak spots, gaining the advantage in combat as best as you can. Whenever you make an attack using a weapon that is a finesse weapon, such as a dagger or shortsword, or  a ranged weapon, like a bow or crossbow, you can add additional damage. To add this damage, you must have advantage on the attack roll, such as from a surprise attack or attacking a prone opponent, or you must have an ally wthin 5 feet of your target and not have disadvantage. Starting out, the damage from your sneak attack is only 1d6, however it progresses as shown in the table. Additionally, as a Rogue, you know the Thieves\' Cant. It is a language of code, where you weave hidden messages into normal text. It allows you to commune with fellow rogues, and decipher small symbols they may leave around in areas to mark guard rotation or rich people with low security.', 2, '1d6'),
('Rogue', 2, 'Cunning Action', 'While most classes can take the dash, disengage, and hide actions, you can take them as bonus actions. You can use your bonus action to hide, double your movement speed, or disengage from an enemy without giving them a chance to stab you as you run. This ability is especially useful, as you can rush into a fight, attack, then as a bonus action diengage and get out of reach. ', '', 2, '1d6'),
('Rogue', 3, 'Roguish Archetype', 'Each Rogue eventually develops a type of mischief they get into. Select an archetype from page 97 of the Player\'s Handbook. ', '', 2, '2d6'),
('Rogue', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, '2d6'),
('Rogue', 5, 'Uncanny Dodge', 'Whenever someone attacks you, you can react quickly to soften their blow. If an enemy you can see hits you with an attack, you can use your reaction to divide the dealt damage by 2.', '', 3, '3d6'),
('Rogue', 6, 'Expertise', 'Similar to the feature gained at level 2, gain expertise in 2 more skills.', '', 3, '3d6'),
('Rogue', 7, 'Evasion', 'You are very nimble. If something that affects an area and forces you to make a Dexterity saving throw, like the fireball spell or a blue dragon\'s lightning breath, you usually would attempt, and take half damage if you succeed. Now, you take no damage if you succeed, and half damage if you fail.', '', 3, '4d6'),
('Rogue', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, '4d6'),
('Rogue', 9, 'Roguish Archetype Feature', 'Check your specific archetype for your 9th level feature!', '', 4, '5d6'),
('Rogue', 10, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, '5d6'),
('Rogue', 11, 'Reliable Talent', 'When you have proficiency, you just are always good at using those skills. Whenever you roll a 9 or lower when rolling for a skill you are proficienct in or have expertise for, treat the roll as if it were a 10. This only applies if you are rolling a d20 for a skill you have proficiency or expertise in.', '', 4, '6d6'),
('Rogue', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, '6d6'),
('Rogue', 13, 'Roguish Archetype Feature', 'Check your specific archetype for your 13th level feature!', '', 5, '7d6'),
('Rogue', 14, 'Blindsense', 'You have very good hearing, and know the location of any hidden or invisible creatures within 10 feet of you.', '', 5, '7d6'),
('Rogue', 15, 'Slippery Mind', 'You have gained a very keen wit through your adventures, and gain proficiency in Wisdom saving throws.', '', 5, '8d6'),
('Rogue', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, '8d6'),
('Rogue', 17, 'Roguish Archetype Feature', 'Check your specific archetype for your 17th level feature!', '', 6, '9d6'),
('Rogue', 18, 'Elusive', 'You are quite the slippery adversary, as now no attack roll can have advantage against you unless you are incapacitated.', '', 6, '9d6'),
('Rogue', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, '10d6'),
('Rogue', 20, 'Stroke of Luck', 'Stuff tends to work out in your favor. If you miss an attack, you can turn that miss into a hit. Alternatively, if you fail a skill check, you can change the outcome of your roll to what the result would be if you rolled a 20. You can only do this once per short or long rest, but this can be the difference between victory and defeat if used wisely.', '', 6, '10d6');

-- --------------------------------------------------------

--
-- Table structure for table `sorcerer`
--

CREATE TABLE `sorcerer` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `sorcery_points` int(2) DEFAULT NULL,
  `cantrips` int(1) DEFAULT NULL,
  `spells_known` varchar(2) DEFAULT NULL,
  `spell_slots_1` int(1) DEFAULT NULL,
  `spell_slots_2` int(1) DEFAULT NULL,
  `spell_slots_3` int(1) DEFAULT NULL,
  `spell_slots_4` int(1) DEFAULT NULL,
  `spell_slots_5` int(1) DEFAULT NULL,
  `spell_slots_6` int(1) DEFAULT NULL,
  `spell_slots_7` int(1) DEFAULT NULL,
  `spell_slots_8` int(1) DEFAULT NULL,
  `spell_slots_9` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sorcerer`
--

INSERT INTO `sorcerer` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `sorcery_points`, `cantrips`, `spells_known`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`, `spell_slots_6`, `spell_slots_7`, `spell_slots_8`, `spell_slots_9`) VALUES
('Sorcerer', 1, 'Spellcasting, Sorcerous Origin', 'Your innate spellcasting gives you access to a variety of spells. At level 1, you get to choose 4 cantrips and two 1st level spells from the Sorcerer spell list. You will learn more spells as you level up, and you will be able to learn stronger spells as well. If your spell requires you to roll for it to hit an opponent, you add your spell attack modifier, which is your proficiency bonus + your Charisma modifier. If a spell you cast forces a target to make a saving throw, the DC, or number they have to outroll, is 8 + your proficiency bonus + your Charisma modifier. If you have an arcane focus, you can use it to replace the material cost of spells. Your spells are your choice, but cannot be switched out easily. Whenever you level up, other than learning a new spell, you can switch out a spell you know for a spell fro mthe Sorcerer spell list that you want to learn. You can only do this once per level gained, so choose your spells wisely. The amount of spells, cantrips, and spell slots you have at each level is detailed in the table.', 'Each Sorcerer has a Sorcerous Origin. Where does your magic come from? Is it a gift from a wizard who enchanted your bloodline? Does your family have the blood of dragons coursing through it\'s veins? Either way, you pick an origin from page 102 of the Player\'s Handbook.', 2, 0, 4, '2', 2, 0, 0, 0, 0, 0, 0, 0, 0),
('Sorcerer', 2, 'Font of Magic', 'You have an internal resevoir of magic, that you can draw from as needed. At level 2, you have 2 sorcery points. You gain more as you level up, as detailed in the table, and gain ways to use them as you progress. Right now, you can turn spell slots into sorcery points and vice versa. Be wary, as it costs more to turn a sorcery point into a spell slot than the other way around, so if you switch back and forth, you will eventually run out of sorcery points and spell slots, both of which are very important parts of your class. Please consult the conversion chart on page 101 of the Player\'s Handbook for the conversion rate for sorcery points to spell slots. If you want to turn a spell slot into sorcery points, you will get back a number of sorcery points equal to the spell slot\'s level. ', '', 2, 2, 4, '3', 3, 0, 0, 0, 0, 0, 0, 0, 0),
('Sorcerer', 3, 'Metamagic', 'At the third level, the Sorcerer puts himself away from the rest of the spellcasters with his unique way to mold spells with his unique potential. Using your sorcery points, you can modify your spells with specific Metamagic traits, to enhance their power, make them last longer, make them harder to detect, or other additional effects. Please read through page 102 of the Player\'s Handbook for the list of Metamagic options. When you reach level 3, you can select 2 Metamagic options. Once you select them, you can not change them out, so choose wisely. You can learn more later on, however you still can not change which ones you have chosen. ', 'Check that spell slot table! You now can learn 2nd level spells!', 2, 3, 4, '4', 4, 2, 0, 0, 0, 0, 0, 0, 0),
('Sorcerer', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, 4, 5, '5', 4, 3, 0, 0, 0, 0, 0, 0, 0),
('Sorcerer', 5, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You now can learn 3rd level spells!', 3, 5, 5, '6', 4, 3, 2, 0, 0, 0, 0, 0, 0),
('Sorcerer', 6, 'Sorcerous Origin Feature', 'Check your specific origin for your 6th level feature!', '', 3, 6, 5, '7', 4, 3, 3, 0, 0, 0, 0, 0, 0),
('Sorcerer', 7, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You now can learn 4th level spells!', 3, 7, 5, '8', 4, 3, 3, 1, 0, 0, 0, 0, 0),
('Sorcerer', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, 8, 5, '9', 4, 3, 3, 2, 0, 0, 0, 0, 0),
('Sorcerer', 9, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You now can learn 5th level spells!', 4, 9, 5, '10', 4, 3, 3, 3, 1, 0, 0, 0, 0),
('Sorcerer', 10, 'Metamagic', 'You learn one more Metamagic ability, similar to the two you learned from the level 3 feature.', '', 4, 10, 6, '11', 4, 3, 3, 3, 2, 0, 0, 0, 0),
('Sorcerer', 11, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You now can learn 6th level spells!', 4, 11, 6, '12', 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Sorcerer', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 12, 6, '12', 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Sorcerer', 13, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You now can learn 7th level spells!', 5, 13, 6, '13', 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Sorcerer', 14, 'Sorcerous Origin Feature', 'Check your specific origin for your 14th level feature!', '', 5, 14, 6, '13', 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Sorcerer', 15, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You now can learn 8th level spells!', 5, 15, 6, '14', 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Sorcerer', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 16, 6, '14', 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Sorcerer', 17, 'Metamagic', 'You learn one more Metamagic ability, similar to the two you learned from the level 3 feature, and the one you learned from the level 10 feature.', '', 6, 17, 6, '15', 4, 3, 3, 3, 2, 1, 1, 1, 1),
('Sorcerer', 18, 'Sorcerous Origin Feature', 'Check your specific origin for your 18th level feature!', '', 6, 18, 6, '15', 4, 3, 3, 3, 3, 1, 1, 1, 1),
('Sorcerer', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 19, 6, '15', 4, 3, 3, 3, 3, 2, 1, 1, 1),
('Sorcerer', 20, 'Sorcerous Restoration', 'You learn to focus on the resevoir of magic within you. Whenever you take a short rest, you gain 4 sorcery points.', '', 6, 20, 6, '15', 4, 3, 3, 3, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
('1', 'Luke', 'Hedrick', 'admin', 'admin'),
('0', 'Luke', 'Hedrick', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `warlock`
--

CREATE TABLE `warlock` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `cantrips` int(1) DEFAULT NULL,
  `spells_known` int(2) DEFAULT NULL,
  `spell_slot_level` text,
  `spell_slots` int(1) DEFAULT NULL,
  `eldritch_invocations` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warlock`
--

INSERT INTO `warlock` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `cantrips`, `spells_known`, `spell_slot_level`, `spell_slots`, `eldritch_invocations`) VALUES
('Warlock', 1, 'Otherworldly Patron, Pact Magic', 'Each warlock gets their power from some Otherworldly Patron. Take a look at page 108 for the Otherworldy Patrons, and choose one to reap the benefits of your pact. You will gain access to new spells, along with added features, so choose wisely.', 'When it comes to casting magic spells, warlocks are the strangest class. You have a limited amount of spell slots (the energy you use to cast spells), in comparison to the other spellcasting classes. However, you regain your magical spells during a short rest, like a nap or quick break, whereas the other spellcasters regain their used magic after a long night\'s rest. As if your spellcasting was not already confusing, your spell slots are all of the same level. All this means is that you have to cast all spells at the highest level of power that you can. Charisma is your most important modifier for your spellcasting stuff. For example, your Spell Save DC (What enemies need to beat with a roll to dodge the attack) is calculated  using this formula: 8 + your proficiency bonus + Charisma Modifier. Also, your spell attack bonus (what you add to all ranged spell attacks like Firebolt) is proficiency bonus + Charisma Modifier. You can additionally use a Spellcasting focus in exchange for any material components a spell may require. Starting off, you can learn two cantrips and two 1st level spells, and you can learn more, higher level spells, at later levels, as the table shows.', 2, 2, 2, '1st', 1, 0),
('Warlock', 2, 'Eldritch Invocations', 'Eldritch Invocations are special features that give you access to a wide variety of effects. At first, you pick 2 invocations from the list on page 110 of the Player\'s Handbook. As you level up, you will gain more Invocations, and you can switch out which Invocations you are using when you level up. Many invocations have requirements, so it may be nice to plan in advnace which invocations you plan to pick and when.', '', 2, 2, 3, '1st', 2, 2),
('Warlock', 3, 'Pact Boon', 'You can choose between 3 Pacts to make with your Patron. You can only choose once, and having one Pact may unlock certain Eldritch Invocations that other Pacts cannot, so choose wisely. The Pact of the Chain allows you to learn the Find Familiar spell, and be able to summon a magical familiar to assist you with your spellcasting, combat, and having the satisfaction of being a pet owner. The Pact of the Blade allows you to create a melee weapon out of midair, gaining knowledge on how to use it, and dealing magical damage to your enemies. You can instead choose to bond with a specific weapon, and you have the ability to dismiss it out of reality and summon it back to you as you desire. The Pact of the Tome gives you a mystical Grimoire of Shadows, allowing you to learn any 3 cantrips you want.', '', 2, 2, 4, '2nd', 2, 2),
('Warlock', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, 3, 5, '2nd', 2, 2),
('Warlock', 5, 'No New Features', 'However, you gain a new level of spell slot, and a new Invocation!', 'Make sure to keep your Invocations and spells selected the way you want them to be.', 3, 3, 6, '3rd', 2, 3),
('Warlock', 6, 'Otherworldly Patron Feature', 'Check your specific Patron for your 6th level feature!', '', 3, 3, 7, '3rd', 2, 3),
('Warlock', 7, 'No New Features', 'However, you gain a new level of spell slot, and a new Invocation!', 'Make sure to keep your Invocations and spells selected the way you want them to be.', 3, 3, 8, '4th', 2, 4),
('Warlock', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, 3, 9, '4th', 2, 4),
('Warlock', 9, 'No New Features', 'However, you gain a new level of spell slot, and a new Invocation!', 'Make sure to keep your Invocations and spells selected the way you want them to be.', 4, 3, 10, '5th', 2, 5),
('Warlock', 10, 'Otherworldly Patron Feature', 'Check your specific Patron for your 10th level feature!', '', 4, 4, 10, '5th', 2, 5),
('Warlock', 11, 'Mystic Arcanum (6th)', 'Your magical capabilities cap out at level 5 from your Pact Magic alone. To allow you to grow further, your Patron gifts you with Arcanums. Starting at the 11th level, you may choose one 6th level spell from the Warlock spell list. Once per long rest, you can cast this 6th level spell as if it were one of your warlock spells. It requires no spell slot to cast, but you have to wait until after your next long rest to cast it again. As you level up, you will gain more Arcanums. You can cast each Arcanum once per long rest once you acquire them.', '', 4, 4, 11, '5th', 3, 5),
('Warlock', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 4, 11, '5th', 3, 6),
('Warlock', 13, 'Mystic Arcanum (7th)', 'You gain another Arcanum. You may select one 7th level spell from the Warlock spell sheet, and cast it once per long rest, like the other Arcanum you have learned.', '', 5, 4, 12, '5th', 3, 6),
('Warlock', 14, 'Otherworldly Patron Feature', 'Check your specific Patron for your 17th level feature!', '', 5, 4, 12, '5th', 3, 6),
('Warlock', 15, 'Mystic Arcanum (8th)', 'You gain another Arcanum. You may select one 8th level spell from the Warlock spell sheet, and cast it once per long rest, like the other Arcanum you have learned.', '', 5, 4, 13, '5th', 3, 7),
('Warlock', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 4, 13, '5th', 3, 7),
('Warlock', 17, 'Mystic Arcanum (9th)', 'You gain another Arcanum. You may select one 9th level spell from the Warlock spell sheet, and cast it once per long rest, like the other Arcanum you have learned.', '', 6, 4, 14, '5th', 4, 7),
('Warlock', 18, 'No New Features', 'However, you gain a new Invocation!', 'Make sure to keep your Invocations and spells selected the way you want them to be.', 6, 4, 14, '5th', 4, 8),
('Warlock', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 4, 15, '5th', 4, 8),
('Warlock', 20, 'Eldritch Master', 'Instead of waiting through a quick, short rest, you can speed up the process further. After a minute of asking your Patron for help, you can regain all of your spell slots, as if you had taken a short rest. You can only do this once per long rest, but it can be useful if you kow you are soon to encounter trouble, and are feeling low on spell slots.', '', 6, 4, 15, '5th', 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wizard`
--

CREATE TABLE `wizard` (
  `class` text,
  `level` int(2) NOT NULL,
  `feature` text,
  `feat_desc_1` text,
  `feat_desc_2` text,
  `proficiency` int(1) DEFAULT NULL,
  `cantrips` int(1) DEFAULT NULL,
  `spell_slots_1` int(1) DEFAULT NULL,
  `spell_slots_2` int(1) DEFAULT NULL,
  `spell_slots_3` int(1) DEFAULT NULL,
  `spell_slots_4` int(1) DEFAULT NULL,
  `spell_slots_5` int(1) DEFAULT NULL,
  `spell_slots_6` int(1) DEFAULT NULL,
  `spell_slots_7` int(1) DEFAULT NULL,
  `spell_slots_8` int(1) DEFAULT NULL,
  `spell_slots_9` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wizard`
--

INSERT INTO `wizard` (`class`, `level`, `feature`, `feat_desc_1`, `feat_desc_2`, `proficiency`, `cantrips`, `spell_slots_1`, `spell_slots_2`, `spell_slots_3`, `spell_slots_4`, `spell_slots_5`, `spell_slots_6`, `spell_slots_7`, `spell_slots_8`, `spell_slots_9`) VALUES
('Wizard', 1, 'Spellcasting, Arcane Recovery', 'You have learned a lot of arcane abilities in your time, and you shall learn many more. At level 1, you can choose 3 cantrips from the Wizard spell list. You additionally start knowing six 1st level spells, also from the Wizard spell list. Your spells are all jotted down in your spellbook, a large tome that is ready for you to fill with arcane secrets. This spellbok is the most important item you will likely own, as it stores everything you\'ve learned. Whenever you level up, you will be able to learn any 2 spells fro m the Wizard spell list that you can cast with the spell slots you have. You start with level 1 spell slots, but will gain more as you level up. However, 2 new spells per level is slow. You\'re a scholar, you aren\'t meant for the regular pace of every other Wizard, you want to learn more. Which is why you may come across the notes and details for spells on your adventures. If you do, you can use up a large quantity of ink and paper to copy down the notes into your spellbook, and henceforth learning it. It costs 2 hours and 50 gold pieces per level of a spell you want to learn, but who said education was cheap? You can also copy down your spells you\'ve already learned into another spellbook. This can be decently expensive, costing 1 hour and 10 gold pieces per the level of the spell, multiplied by all the spells you would copy over, however this can be a lifesaver if you ever lose your original spellbook. At the beginning of the day, you prepare a list of spells that you memorize, so you know the incantations, maneuvers, and components needed to cast it. You can prepare a list of spells equal to your Intelligence modifier + your Wizard level, with a minimum of 1. All spells you learn or prepare must have a spell level equal to or lower than the level of your highest level spell slot. Casting a spell you have prepared does not make it unprepared. If your spell causes a creature to make a saving throw, the DC, or what number they have to roll higher than, is equal to 8 + your Intelligence modifier + your proficiency bonus. If a spell you cast requires you to make an attack roll, you add your proficiency bonus and your Intelligence modifier to the roll.', '', 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0),
('Wizard', 2, 'Arcane Tradition', 'Every student has some area they specialize in, some part of their education they select as their major. For wizards, they can select a school of magic, each one based around a type of spell, and gain a variety of bonuses as a result. Each class learns the spells associated with their school twice as fast as a normal spell, so if you plan on learning a lot of spells that all fall under one school, it might be nice to select that school.', '', 2, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0),
('Wizard', 3, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 2nd level spells!', 2, 2, 4, 2, 0, 0, 0, 0, 0, 0, 0),
('Wizard', 4, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 2, 2, 4, 3, 0, 0, 0, 0, 0, 0, 0),
('Wizard', 5, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 3rd level spells!', 3, 3, 4, 3, 2, 0, 0, 0, 0, 0, 0),
('Wizard', 6, 'Arcane Tradition Feature', 'Check your specific tradition for your 6th level feature!', '', 3, 3, 4, 3, 3, 0, 0, 0, 0, 0, 0),
('Wizard', 7, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 4th level spells!', 3, 4, 4, 3, 3, 1, 0, 0, 0, 0, 0),
('Wizard', 8, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 3, 4, 4, 3, 3, 2, 0, 0, 0, 0, 0),
('Wizard', 9, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 5th level spells!', 4, 5, 4, 3, 3, 3, 1, 0, 0, 0, 0),
('Wizard', 10, 'Arcane Tradition Feature', 'Check your specific tradition for your 10th level feature!', '', 4, 5, 4, 3, 3, 3, 2, 0, 0, 0, 0),
('Wizard', 11, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 6th level spells!', 4, 6, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Wizard', 12, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 4, 6, 4, 3, 3, 3, 2, 1, 0, 0, 0),
('Wizard', 13, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 7th level spells!', 5, 7, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Wizard', 14, 'Arcane Tradition Feature', 'Check your specific tradition for your 14th level feature!', '', 5, 7, 4, 3, 3, 3, 2, 1, 1, 0, 0),
('Wizard', 15, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 8th level spells!', 5, 8, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Wizard', 16, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 5, 8, 4, 3, 3, 3, 2, 1, 1, 1, 0),
('Wizard', 17, 'No New Features', 'However, you still gain new spell slots!', 'Check that spell slot table! You are now able to learn 9th level spells!', 6, 9, 4, 3, 3, 3, 2, 1, 1, 1, 1),
('Wizard', 18, 'Spell Mastery', 'After such a long amount of time using them, you have mastered some of your more basic spells. You can choose a 1st level and a 2nd level spell. You can cast those spells without using spell slots, similar to cantrips. It takes 8 hours of intense studey to change these spells out, so choose wisely. Casting these spells at higher levels will cost spell slots. You have to have these spells prepared for this effect to work, but with the right spells, this can become a very useful part of your spellcasting.', '', 6, 9, 4, 3, 3, 3, 3, 1, 1, 1, 1),
('Wizard', 19, 'Ability Score Improvement', 'Using an Ability Score Improvement allows you to add two points into one skill, one point into two skills or take a feat for free. Spend those points wisely!', '', 6, 9, 4, 3, 3, 3, 3, 2, 1, 1, 1),
('Wizard', 20, 'Signature Spells', 'You have used some stronger spells more often than others, and have made them signature parts of your arsenal. You can choose two 3rd level spells, and you may cast them without spell slots as 3rd level spells. You can only do this once per short or long rest, and casting it at a higher level will cost a spell slot. However, having these spells prepared does not count against the number of spells you can have prepared, so the right spells in here can flesh out your list of prepared spells very well. You can not change this decision, so be wise with what you choose. ', '', 6, 9, 4, 3, 3, 3, 3, 2, 2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archetype`
--
ALTER TABLE `archetype`
  ADD PRIMARY KEY (`archetype`);

--
-- Indexes for table `barbarian`
--
ALTER TABLE `barbarian`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `bard`
--
ALTER TABLE `bard`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class`);

--
-- Indexes for table `cleric`
--
ALTER TABLE `cleric`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `druid`
--
ALTER TABLE `druid`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `fighter`
--
ALTER TABLE `fighter`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `monk`
--
ALTER TABLE `monk`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `paladin`
--
ALTER TABLE `paladin`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `ranger`
--
ALTER TABLE `ranger`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `rogue`
--
ALTER TABLE `rogue`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `sorcerer`
--
ALTER TABLE `sorcerer`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `warlock`
--
ALTER TABLE `warlock`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `wizard`
--
ALTER TABLE `wizard`
  ADD PRIMARY KEY (`level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barbarian`
--
ALTER TABLE `barbarian`
  MODIFY `level` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bard`
--
ALTER TABLE `bard`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cleric`
--
ALTER TABLE `cleric`
  MODIFY `level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `druid`
--
ALTER TABLE `druid`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fighter`
--
ALTER TABLE `fighter`
  MODIFY `level` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `monk`
--
ALTER TABLE `monk`
  MODIFY `level` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `paladin`
--
ALTER TABLE `paladin`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ranger`
--
ALTER TABLE `ranger`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rogue`
--
ALTER TABLE `rogue`
  MODIFY `level` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sorcerer`
--
ALTER TABLE `sorcerer`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `warlock`
--
ALTER TABLE `warlock`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wizard`
--
ALTER TABLE `wizard`
  MODIFY `level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
