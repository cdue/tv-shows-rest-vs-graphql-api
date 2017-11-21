-- TV Shows
INSERT INTO tv_show (id, title, description, poster_path) VALUES (1, 'Mr. Robot', 'A contemporary and culturally resonant drama about a young programmer, Elliot, who suffers from a debilitating anti-social disorder and decides that he can only connect to people by hacking them. He wields his skills as a weapon to protect the people that he cares about. Elliot will find himself in the intersection between a cybersecurity firm he works for and the underworld organizations that are recruiting him to bring down corporate America.', '/resources/posters/1/m_robot.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (2, 'Breaking Bad', 'Breaking Bad is an American crime drama television series created and produced by Vince Gilligan. Set and produced in Albuquerque, New Mexico, Breaking Bad is the story of Walter White, a struggling high school chemistry teacher who is diagnosed with inoperable lung cancer at the beginning of the series. He turns to a life of crime, producing and selling methamphetamine, in order to secure his family''s financial future before he dies, teaming with his former student, Jesse Pinkman. Heavily serialized, the series is known for positioning its characters in seemingly inextricable corners and has been labeled a contemporary western by its creator.', '/resources/posters/2/breaking_bad.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (3, 'The Blacklist', 'Raymond "Red" Reddington, one of the FBI''s most wanted fugitives, surrenders in person at FBI Headquarters in Washington, D.C. He claims that he and the FBI have the same interests: bringing down dangerous criminals and terrorists. In the last two decades, he''s made a list of criminals and terrorists that matter the most but the FBI cannot find because it does not know they exist. Reddington calls this "The Blacklist". Reddington will co-operate, but insists that he will speak only to Elizabeth Keen, a rookie FBI profiler.', '/resources/posters/3/the_blacklist.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (4, 'Better Call Saul', 'Six years before Saul Goodman meets Walter White. We meet him when the man who will become Saul Goodman is known as Jimmy McGill, a small-time lawyer searching for his destiny, and, more immediately, hustling to make ends meet. Working alongside, and, often, against Jimmy, is “fixer” Mike Erhmantraut. The series will track Jimmy''s transformation into Saul Goodman, the man who puts “criminal” in “criminal lawyer".', '/resources/posters/11/better_call_saul.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (5, 'How to Get Away with Murder', 'A sexy, suspense-driven legal thriller about a group of ambitious law students and their brilliant, mysterious criminal defense professor. They become entangled in a murder plot and will shake the entire university and change the course of their lives.', '/resources/posters/4/how_to_get_away_with_murder.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (6, 'Blindspot', 'A vast international plot explodes when a beautiful Jane Doe is discovered naked in Times Square, completely covered in mysterious, intricate tattoos with no memory of who she is or how she got there. But there''s one tattoo that is impossible to miss: the name of FBI agent Kurt Weller, emblazoned across her back. "Jane," Agent Weller and the rest of the FBI quickly realize that each mark on her body is a crime to solve, leading them closer to the truth about her identity and the mysteries to be revealed.', '/resources/posters/5/blindspot.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (7, 'Hawaii Five-0', 'Steve McGarrett returns home to Oahu, in order to find his father''s killer. The governor offers him the chance to run his own task force (Five-0). Steve''s team is joined by Chin Ho Kelly, Danny "Danno" Williams, and Kono Kalakaua.', '/resources/posters/6/hawaii_5_0.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (8, 'True Detective', 'An American anthology police detective series utilizing multiple timelines in which investigations seem to unearth personal and professional secrets of those involved, both within or outside the law.', '/resources/posters/7/true_detective.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (9, 'Person of Interest', 'Person of Interest follows former CIA paramilitary operative, John Reese, who is presumed dead and teams up with reclusive billionaire Finch to prevent violent crimes in New York City by initiating their own type of justice. With the special training that Reese has had in Covert Operations and Finch''s genius software inventing mind, the two are a perfect match for the job that they have to complete. With the help of surveillance equipment, they work "outside the law" and get the right criminal behind bars.', '/resources/posters/8/person_of_interest.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (10, 'Dexter', 'Dexter is an American television drama series. The series centers on Dexter Morgan, a blood spatter pattern analyst for ''Miami Metro Police Department'' who also leads a secret life as a serial killer, hunting down criminals who have slipped through the cracks of justice.', '/resources/posters/9/dexter.jpg');
INSERT INTO tv_show (id, title, description, poster_path) VALUES (11, 'Elementary', 'A modern-day drama about a crime-solving duo that cracks the NYPD''s most impossible cases. Following his fall from grace in London and a stint in rehab, eccentric Sherlock escapes to Manhattan where his wealthy father forces him to live with his worst nightmare - a sober companion, Dr. Watson.', '/resources/posters/10/elementary.jpg');

-- Mr Robot seasons
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (1, 1, 'Season 1', 2015, 'Elliot finds himself at a crossroad when the mysterious leader of an underground hacker group recruits him to destroy the firm he is paid to protect. Compelled by his personal beliefs, Elliot struggles to resist the chance to take down the multinational CEOs he believes are running (and ruining) the world.', '/resources/posters/1/season/1/m_robot_s1.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (2, 1, 'Season 2', 2016, 'Following the events of fsociety’s 5/9 hack on multi-national company Evil Corp, season two explores the consequences of that attack as well as the illusion of control.', '/resources/posters/1/season/2/m_robot_s2.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (3, 1, 'Season 3', 2017, 'Elliot gets woke. realizes his mission. needs help from angela. darlene freaks about them coming out clean. and who tf is this irving guy?', '/resources/posters/1/season/3/m_robot_s3.jpg');

-- Breaking Bad seasons
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (4, 2, 'Season 1', 2008, 'High school chemistry teacher Walter White''s life is suddenly transformed by a dire medical diagnosis. Street-savvy former student Jesse Pinkman "teaches" Walter a new trade.', '/resources/posters/2/season/1/breaking_bad_s1.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (5, 2, 'Season 2', 2009, 'In the second season, Walt must deal with the chain reaction of his choice, as he and Jesse face new and severe consequences. When danger and suspicion around Walt escalate, he is pushed to new levels of desperation. Just how much higher will the stakes rise? How far is Walt willing to go to ensure his family''s security? Will his grand plan spiral out of control?', '/resources/posters/2/season/2/breaking_bad_s2.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (6, 2, 'Season 3', 2010, 'In the third season, Walt continues to battle dueling identities: a desperate husband and father trying to provide for his family, and a newly appointed key player in the Albuquerque drug trade. As the danger around him escalates, Walt is now entrenched in the complex worlds of an angst-ridden family on the verge of dissolution, and the ruthless and unrelenting drug cartel.', '/resources/posters/2/season/3/breaking_bad_s3.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (7, 2, 'Season 4', 2011, 'This season, Walt and Jesse must cope with the fallout of their previous actions, both personally and professionally. Tension mounts as Walt faces a true standoff with his employer, Gus, with neither side willing or able to back down. Walt must also adjust to a new relationship with Skyler, whom while still reconciling her relationship with Walt, is committed to properly laundering Walt’s money and ensuring her sister Marie and an ailing Hank are financially stable.', '/resources/posters/2/season/4/breaking_bad_s4.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (8, 2, 'Season 5', 2012, 'In season five, Walt is faced with the prospect of moving on in a world without his enemy. As the pressure of a criminal life starts to build, Skyler struggles to keep Walt’s terrible secrets. Facing resistance from sometime adversary and former Fring lieutenant Mike, Walt tries to keep his world from falling apart even as his DEA Agent brother in law, Hank, finds numerous leads that could blaze a path straight to Walt.  All bad things must come to an end.', '/resources/posters/2/season/5/breaking_bad_s5.jpg');

-- The Blacklist seasons
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (9, 3, 'Season 1', 2013, '', '/resources/posters/3/season/1/the_blacklist_s1.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (10, 3, 'Season 2', 2014, 'The second season premiered on Monday, September 22, 2014, it will then move to Thursdays at 9 PM on February 5, 2015.', '/resources/posters/3/season/2/the_blacklist_s2.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (11, 3, 'Season 3', 2015, 'Now a fugitive on the run, Liz must figure out how to protect herself from the fallout of her actions in the explosive season two finale.', '/resources/posters/3/season/3/the_blacklist_s3.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (12, 3, 'Season 4', 2016, 'A mysterious man claiming to be Liz’s real father targets her, but first she must resolve the mystery of her lost childhood and reconcile her true identity with the elusive memories corrupted by Reddington. Without the truth, every day holds more danger for herself, her baby and her husband Tom. Meanwhile, the Task Force reels from Liz’s resurrection and friendships are fractured. Betrayed by those closest to him, Reddington’s specific moral code demands justice, all the while battling an army of new and unexpected blacklisters.', '/resources/posters/3/season/4/the_blacklist_s4.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (13, 3, 'Season 5', 2017, 'Feeling surprisingly unencumbered, Raymond Reddington is back, and in the process of rebuilding his criminal empire. His lust for life is ever-present as he lays the foundation for this new enterprise - one that he''ll design with Elizabeth Keen by his side. Living with the reality that Red is her father, Liz finds herself torn between her role as an FBI agent and the temptation to act on her more criminal instincts. In a world where the search for Blacklisters has become a family trade, Red will undoubtedly reclaim his moniker as the “Concierge of Crime.”', '/resources/posters/3/season/5/the_blacklist_s5.jpg');

-- Better Call Saul seasons
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (14, 4, 'Season 1', 2015, 'When we meet him, the man who will become Saul Goodman is known as Jimmy McGill, a small-time lawyer searching for his destiny, and, more immediately, hustling to make ends meet. Working alongside, and often against, Jimmy is “fixer” Mike Erhmantraut.', '/resources/posters/4/season/1/better_call_saul_s1.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (15, 4, 'Season 2', 2016, 'Season one left Jimmy at the center of a large class-action lawsuit that led to a promising job opportunity at a prestigious firm in Santa Fe. Having arrived at a fork in the road, will Jimmy take the straight and narrow path with a safe corporate job or will he fall back into his “Slippin’ Jimmy” con artist ways?', '/resources/posters/4/season/2/better_call_saul_s2.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (16, 4, 'Season 3', 2017, 'As the season three begins, the repercussions of Chuck''s scheme test Jimmy and Kim''s fledgling law practices -- and their romance -- as never before. This imminent existential threat presses Jimmy’s faltering moral compass to the limit. Meanwhile, Mike searches for a mysterious adversary who seems to know almost everything about his business.', '/resources/posters/4/season/3/better_call_saul_s3.jpg');

-- How to get away with murder seasons
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (17, 5, 'Season 1', 2014, '', '/resources/posters/5/season/1/how_to_get_away_with_murder_s1.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (18, 5, 'Season 2', 2015, '', '/resources/posters/5/season/2/how_to_get_away_with_murder_s2.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (19, 5, 'Season 3', 2016, '', '/resources/posters/5/season/3/how_to_get_away_with_murder_s3.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (20, 5, 'Season 4', 2017, '', '/resources/posters/5/season/4/how_to_get_away_with_murder_s4.jpg');

-- Blindspot seasons
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (21, 6, 'Season 1', 2015, '', '/resources/posters/6/season/1/blindspot_s1.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (22, 6, 'Season 2', 2016, '', '/resources/posters/6/season/2/blindspot_s2.jpg');
INSERT INTO season (id, tv_show_id, title, release_year, description, poster_path) VALUES (23, 7, 'Season 3', 2017, '', '/resources/posters/6/season/3/blindspot_s3.jpg');

-- Mr Robot - S01
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (1, 1, 1, 'eps1.0_hellofriend.mov', 'Elliot, a cyber-security engineer by day and vigilante hacker by night, is recruited by a mysterious underground group to destroy the firm he''s paid to protect. Elliot must decide how far he''ll go to expose the forces he believes are running (and ruining) the world.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (2, 1, 2, 'eps1.1_ones-and-zer0es.mpeg', 'Elliot is torn between accepting a job offer from Evil Corp and joining the fsociety hacker group. At the same time Elliot needs to make decision that could harm people around him.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (3, 1, 3, 'eps1.2_d3bug.mkv', 'Elliot tries to lead a normal life, but can''t escape fsociety. Gideon, meanwhile, grows suspicious, and Tyrell plays dirty.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (4, 1, 4, 'eps1.3_da3m0ns.mp4', 'Elliot''s inner-demons threaten an fsociety operation.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (5, 1, 5, 'eps1.4_3xpl0its.wmv', 'Fsociety attempts to penetrate Steel Mountain, the most secure data facility in America.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (6, 1, 6, 'eps1.5_br4ve-trave1er.asf', 'Elliot attempts to hack Vera out of jail in order to save someone he cares about. Meanwhile, Tyrell''s "game" gets crazy and Angela digs deeper into her mother''s death.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (7, 1, 7, 'eps1.6_v1ew-s0urce.flv', 'Elliott goes missing. Mr. Robot tries to pull fsociety back together. Angela goes head-to-head with an old nemesis.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (8, 1, 8, 'eps1.7_wh1ter0se.m4v', 'Allsafe is controlled, the Dark Army is ready to meet Elliot & Tyrell and Joanna''s plan goes into effect.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (9, 1, 9, 'eps1.8_m1rr0r1ng.qt', 'The Evil Corp hack is threatened by a mystery man from Elliot''s past.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (10, 1, 10, 'eps1.9_zer0-day.avi', 'Mr. Robot and Tyrell are MIA and a past hack haunts Elliot.');

-- Mr Robot - S02
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (11, 2, 1, 'eps2.0_unm4sk-pt1.tc', 'One month later and omfg, five/nine changed the world. Elliot in seclusion. Darlene takes the lead. fsociety delivers malicious payload. TANGO DOWN? tbc.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (12, 2, 2, 'eps2.0_unm4sk-pt2.tc', 'Angela happy at Evil Corp. Tyrell MIA and Joanna has a new bf? Wtf? Dom leads fbi investigation into five/nine. Elliot demands answers from Mr. Robot.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (13, 2, 3, 'eps2.1_k3rnel-pan1c.ksd', 'Elliot vows to beat Mr. Robot but it ain''t easy, smh. Angela sees behind the scenes at Evil Corp. Sh*t hits fan with fsociety.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (14, 2, 4, 'eps2.2_init_1.asec', 'Elliot friends Ray, hopes he can help finally delete Mr. Robot. Dom makes a big discovery. Darlene wonders who''s the bigger threat-- FBI or Dark Army?');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (15, 2, 5, 'eps2.3_logic-b0mb.hc', 'Elliot can''t quit the game but tbh it proves bigger than expected. Dom and FBI go to china to investigate five/nine. Joanna is haunted-- or hunted? Darlene calls on Angela for help.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (16, 2, 6, 'eps2.4_m4ster-s1ave.aes', 'Mr. Robot attempts to show Elliot that he can be useful. Darlene and Angela''s plan doesn''t go as expected.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (17, 2, 7, 'eps2.5_h4ndshake.sme', 'Mr. Robot and Elliot try to make nice. Darlene and Angela FTW? Joanna''s given an ultimatum.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (18, 2, 8, 'eps2.6_succ3ss0r.p12', 'fsociety releases a video. Darlene acts on a desire from long ago. Trenton and Mobley smh.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (19, 2, 9, 'eps2.7_init_5.fve', 'Angela wants more from Evil Corp than they want to give her. Unsure if Dark Army is working w/ or against them, Elliot and Darlene seek answers. The truth is out there.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (20, 2, 10, 'eps2.8_h1dden-pr0cess.axx', 'Elliot starts to wonder if Mr. rRobot has been lying to him. Darlene tries to do the right thing. Dom and FBI get closer.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (21, 2, 11, 'eps2.9_pyth0n-pt1.p7z', 'Angela makes an unexpected acquaintance. Elliot does the same. Dom engages in an interesting AMA.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (22, 2, 12, 'eps2.9_pyth0n-pt2.p7z', 'fsociety is in too deep rn. An old friend reveals all to Elliot. Sh*t gets real af.');

-- Mr Robot - S03
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (23, 3, 1, 'eps3.0_power-saver-mode.h', 'Elliot gets woke. Realizes his mission. Needs help from angela. Darlene freaks about them coming out clean. And who tf is this irving guy?');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (24, 3, 2, 'eps3.1_undo.gz', 'Elliot is lit by his goal to ctrl+z five/nine. Darlene meets rock + hard place. Mr. Robot sparks a panic.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (25, 3, 3, 'eps3.2_legacy.so', 'Hi. I''m Tyrell Wellick. Former interim CTO of E Corp. I''ve been gone for a while. It''s time for an AMA!');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (26, 3, 4, 'eps3.3_metadata.par2', 'Dom has a close call. Elliot chases himself with darlene on the lookout. Mr. Robot doesn''t have a need for swede. Angela gets savage AF.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (27, 3, 5, 'eps3.4_runtime-error.r00', 'E Corp in chaos Elliot on the run Darlene comes to help cant stop wont stop Angela FTW.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (28, 3, 6, 'eps3.5_kill-pr0cess.inc', 'Elliot faces off with Mr. Robot. Dom gets tired of the red tape; Tyrell has a new plan.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (29, 3, 7, 'eps3.6_fredrick+tanya.chk', 'Mr. Robot wants answers. The FBI closes in; Angela hits the rewind button.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (30, 3, 8, 'eps3.7_dont-delte-me.ko', 'Elliot tries to get ghosted. It is the day of all days.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (31, 3, 9, 'eps3.8_stage3.torrent', '');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (32, 3, 10, 'eps3.9_shutdown-r', '');

-- Breaking Bad - S01
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (33, 4, 1, 'Pilot', 'When an unassuming high school chemistry teacher discovers he has a rare form of lung cancer, he decides to team up with a former student and create a top of the line crystal meth in a used RV, to provide for his family once he is gone.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (34, 4, 2, 'The Cat''s in the Bag', 'Walt and Jesse attempt to tie up loose ends. The desperate situation gets more complicated with the flip of a coin. Walt''s wife, Skyler, becomes suspicious of Walt''s strange behavior.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (35, 4, 3, '...and the Bag''s in the River', 'Walter fights with Jesse over his drug use, causing him to leave Walter alone with their captive, Krazy-8. Meanwhile, Hank has a scared straight moment with Walter Jr. after his aunt discovers he has been smoking pot. Also, Skylar is upset when Walter stays away from home.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (36, 4, 4, 'Cancer Man', 'Walter finally tells his family that he has been stricken with cancer. Meanwhile, the DEA believes Albuquerque has a new, big time player to worry about. Meanwhile, a worthy recipient is the target of a depressed Walter''s anger, and Jesse makes a surprise visit to his parents home.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (37, 4, 5, 'Gray Matter', 'Walter and Skyler attend a former colleague''s party. Jesse tries to free himself from the drugs, while Skyler organizes an intervention.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (38, 4, 6, 'Crazy Handful of Nothin''', 'The side effects of chemo begin to plague Walt. Meanwhile, the DEA rounds up suspected dealers.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (39, 4, 7, 'A No-Rough-Stuff Type Deal', 'Walter accepts his new identity as a drug dealer after a PTA meeting. Elsewhere, Jesse decides to put his aunt''s house on the market and Skyler is the recipient of a baby shower.');

-- Breaking Bad - S02
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (40, 5, 1, 'Seven Thirty-Seven', 'Walt and Jesse are vividly reminded of Tuco’s volatile nature, and try to figure a way out of their business partnership. Hank attempts to mend fences between the estranged Marie and Skyler.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (41, 5, 2, 'Grilled', 'Walt and Jesse find themselves in close quarters with an unhinged Tuco. Marie and Hank comfort Skyler, who is distraught over Walt’s disappearance. Hank pays a visit to Mrs. Pinkman on some not-so-official business.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (42, 5, 3, 'Bit by a Dead Bee', 'Walt and Jesse become short on cash when they try to cover their tracks. Meanwhile, the DEA has a lead that could them straight to Walt and Jesse.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (43, 5, 4, 'Down', 'Walt attempts to reconnect with his family, while Jesse struggles to rebuild his life.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (44, 5, 5, 'Breakage', 'Hank suffers from the aftermath of his encounter with Tuco. Meanwhile, Jesse hires a crew to get their product out on the streets.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (45, 5, 6, 'Peekaboo', 'Walt''s secret is in jeopardy when Skyler thanks Gretchen for paying for his treatment.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (46, 5, 7, 'Negro Y Azul', 'Jesse and Walt discuss expanding into new territories; Hank struggles to fit in; Skyler pursues a new job opportunity; Jesse gets to know his landlord.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (47, 5, 8, 'Better Call Saul', 'Walt and Jesse seek advice from a shady attorney when Badger gets in trouble with the law; the DEA believes they have caught up with "Heisenberg" ; Hank returns.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (48, 5, 9, '4 Days Out', 'Walt and his family wait for news after he undergoes a PET-CT scan. Walt follows Saul''s advice; Jesse''s relationship with Jane is put on hold when he and Walt head to the desert for a marathon of cooking.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (49, 5, 10, 'Over', 'Walt and Hank get into a heated argument at a party. Skyler opens up to her boss. Jane hides her relationship with Jesse from her father.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (50, 5, 11, 'Mandala', 'When unforeseen circumstances cause Walt and Jesse to lose some dealers, Saul suggests they add a new business partner. At work, Skylar confronts Ted about the unnerving information she had uncovered. Jane learns what Jesse does for a living when he opens up to her, which ends in disastrous results.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (51, 5, 12, 'Phoenix', 'As Walt explores money laundering options, he and Jesse spar over the profits from their latest deal. Jesse and Jane clash with her father. Walt makes a fatal decision.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (52, 5, 13, 'ABQ', 'Skylar confronts Walt about his secrecy; Jesse falls apart; and Jane''s grief-stricken father takes action that results in further tragedy.');

-- The Blacklist - S01
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (53, 9, 1, 'Pilot', 'The race to stop a terrorist begins in the premiere of this crime series about a most-wanted fugitive who works with a rookie FBI profiler to take down criminals and evildoers.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (54, 9, 2, 'The Freelancer', 'Red and Liz go under cover to stop an assassin known as The Freelancer from killing his next target; Ressler and a recently re-hired CIA agent try to protect Red from a distance; Liz wonders what she should do about Tom and the mysterious box.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (55, 9, 3, 'Wujing', 'The FBI is on the hunt for a high-ranking Chinese spy, Wujing which Red claims has hired him to help decode a classified CIA transmission. Liz, posing as an FBI cryptographer goes with Red to decode the message while protecting US government secrets. Meanwhile, Liz proactively investigates Tom.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (56, 9, 4, 'The Stewmaker', 'While continuing her investigation into the truth about Tom, Liz testifies against drug lord, Hector Lorca. Later another witness is abducted when he is forced to testify against the dangerous drug trafficker. Red’s interest is peaked and he informs the team that the witness may have been taken by "The Stewmaker" a man responsible for hundreds of missing and presumed dead people. Meanwhile, in an unlikely twist of events, Red and Ressler must work together for the first time.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (57, 9, 5, 'The Courier', 'Red and the FBI try to stop a dangerous messenger (Robert Knepper) whose appearance is unknown; Liz is thrust into a kidnapping plot.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (58, 9, 6, 'Gina Zanetakos', 'Tom claims he is innocent and wants to turn the box into the FBI; Red''s next target is a beautiful and deadly corporate terrorist (Margarita Levieva).');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (59, 9, 7, 'Frederick Barnes', 'The FBI searches for the man responsible for a chemical attack on a subway; Liz wants to avoid Red after he implicated Tom.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (60, 9, 8, 'General Ludd', 'When Red reveals a new name, Liz learns of a plot to destroy the country''s financial system; Tom helps Liz when a loved one falls ill.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (61, 9, 9, 'Anslo Garrick (1)', 'Anslo Garrick, the newest person on the blacklist, tries to capture Red; Liz is caught in an elevator.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (62, 9, 10, 'Anslo Garrick (2)', 'Liz infiltrates the blacksite and disarms the signal jammers to call in backup but runs into trouble along the way. The fate of Ressler hangs in the balance as Red tries to bargain with Anslo Garrick. Meanwhile, Tom becomes increasingly worried about Liz’ situation and the fate of Red is unknown.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (63, 9, 11, 'The Good Samaritan Killer', 'A serial killer from Liz''s past strikes again while Red hunts for whoever betrayed him.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (64, 9, 12, 'The Alchemist', 'Red informs the team that "The Alchemist" - a man who relies upon science to transform a person’s DNA - has been contracted to protect a well-known mob informant and his wife. As the team goes undercover to catch him, Liz finds herself on the hunt for an unlikely couple. Meanwhile Liz and Tom find themselves at another bump in their relationship and Ressler debates whether or not he should give his ex-girlfriend his blessing.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (65, 9, 13, 'The Cyprus Agency', 'After a recent spate of abductions of babies from their mothers, Red informs Liz that the "Cyprus Agency" is the illegal adoption organization responsible. Coincidentally, Liz and Tom contemplate adoption of their own which fuels Liz to track down the organizations CEO, Owen Mallory.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (66, 9, 14, 'Madeline Pratt', 'Liz helps Tom adjust to the impending adoption; Red reveals a woman from his past is a target; Red convinces Liz to pull of a heist at the Syrian Embassy.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (67, 9, 15, 'The Judge', 'Red believes he knows who was responsible for a prominent prosecutor''s 12 year disappearance; Red investigates the woman who tempts Tom.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (68, 9, 16, 'Mako Tanida', 'One of Red''s former associates, a crime lord, becomes the next target; Tom decides to confront Jolene.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (69, 9, 17, 'Ivan', 'After a cyber defense asset is stolen by a terrorist only known as Ivan, Red and Liz discover a cover-up; new evidence regarding Jolene''s disappearance unravels some of the mystery surrounding Tom.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (70, 9, 18, 'Milton Bobbit', 'Red and the team search for a life insurance claim adjuster who talks people into becoming contract killers; Liz and Red try to uncover Tom''s secrets.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (71, 9, 19, 'The Pavlovich Brothers', 'As the team tries to protect a target of the Pavlovich brothers -- specialists in abductions -- Red has a job of his own for the duo; Liz patiently pursues the truth about Tom.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (72, 9, 20, 'The Kingmaker', 'Red thinks the Kingmaker (Linus Roache), a strategist, is responsible when a politician in Prague is framed for murder; Liz uncovers a secret Red has been hiding.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (73, 9, 21, 'Berlin (1)', 'After discovering the truth behind her father''s death, Liz refuses to work with Red, just as his situation grows desperate.');
INSERT INTO episode (id, season_id, number_in_season, title, description) VALUES (74, 9, 22, 'Berlin: Conclusion (2)', 'In the stunning Season 1 finale, Liz is forced to reunite with Red in order to track down Berlin.');

-- Mr Robot actors
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (1, 'Rami', 'Malek', '1981-05-12');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (2, 'Christian', 'Slater', '1969-08-18');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (3, 'Portia', 'Doubleday', '1988-06-22');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (4, 'Carly', 'Chaikin', '1990-03-26');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (5, 'BD', 'Wong', '1960-10-24');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (6, 'Bobby', 'Cannavale', '1970-05-03');

INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (1, 1);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (1, 2);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (1, 3);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (1, 4);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (1, 5);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (1, 6);

-- Breaking Bad actors
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (7, 'Bryan', 'Cranston', '1956-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (8, 'Anna', 'Gunn', '1968-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (9, 'Aaron', 'Paul', '1979-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (10, 'Dean', 'Norris', '1963-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (11, 'Betsy', 'Brandt', '1973-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (12, 'RJ', 'Mitte', '1992-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (13, 'Bob', 'Odenkirk', '1962-01-01');

INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 7);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 8);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 9);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 10);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 11);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 12);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (2, 13);

-- The Blacklist actors
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (14, 'James', 'Spader', '1960-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (15, 'Megan', 'Boone', '1983-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (16, 'Diego', 'Klattenhoff', '1979-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (17, 'Amir', 'Arison', '1978-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (18, 'Ryan', 'Eggold', '1984-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (19, 'Parminder', 'Nagra', '1975-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (20, 'Harry', 'Lennix', '1964-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (21, 'Hisham', 'Tawfiq', '1970-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (22, 'Susan', 'Blommaert', '1947-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (23, 'Mozhan', 'Marnò', '1980-01-01');

INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 14);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 15);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 16);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 17);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 18);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 19);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 20);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 21);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 22);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (3, 23);

-- Better Call Saul actors
-- Bob Odenkirk is also acting in Breaking Bad, no need to redefine him
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (24, 'Jonathan', 'Banks', '1947-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (25, 'Rhea', 'Seehorn', '1972-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (26, 'Patrick', 'Fabian', '1964-01-01');
INSERT INTO actor (id, first_name, last_name, birth_date) VALUES (27, 'Michael', 'McKean', '1947-01-01');

INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (4, 13);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (4, 24);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (4, 25);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (4, 26);
INSERT INTO tv_show_actor (tv_show_id, actor_id) VALUES (4, 27);

-- Vote
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (1, 1, 5);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (2, 1, 2);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (3, 1, 4);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (4, 1, 3);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (5, 1, 5);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (6, 2, 5);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (7, 2, 4);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (8, 3, 4);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (9, 4, 4);
INSERT INTO vote (id, tv_show_id, nb_stars) VALUES (10, 4, 5);
