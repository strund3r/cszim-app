class Rankme < ApplicationRecord
	belongs_to :tournament
	belongs_to :user
	belongs_to :round
	belongs_to :season
	belongs_to :team

	scope :select_fields, -> { select("nome, team_id, SUM(score) AS score, SUM(kills) AS kills, SUM(deaths) AS deaths, SUM(suicides) AS suicides, SUM(tk) AS tk, SUM(shots) AS shots, SUM(hits) AS hits, SUM(headshots) AS headshots, SUM(connected) AS connected, SUM(rounds_tr) AS rounds_tr, SUM(rounds_ct) AS rounds_ct, SUM(lastconnect) AS lastconnect, SUM(knife) AS knife, SUM(glock) AS glock, SUM(usp ) AS usp , SUM(p228) AS p228, SUM(deagle) AS deagle, SUM(elite) AS elite, SUM(fiveseven) AS fiveseven, SUM(m3) AS m3, SUM(xm1014) AS xm1014, SUM(mac10) AS mac10, SUM(tmp ) AS tmp , SUM(mp5navy) AS mp5navy, SUM(ump45) AS ump45, SUM(p90 ) AS p90 , SUM(galil) AS galil, SUM(ak47) AS ak47, SUM(sg550) AS sg550, SUM(famas) AS famas, SUM(m4a1) AS m4a1, SUM(aug ) AS aug , SUM(scout) AS scout, SUM(sg552) AS sg552, SUM(awp ) AS awp , SUM(g3sg1) AS g3sg1, SUM(m249) AS m249, SUM(hegrenade) AS hegrenade, SUM(flashbang) AS flashbang, SUM(smokegrenade) AS smokegrenade, SUM(head) AS head, SUM(chest) AS chest, SUM(stomach) AS stomach, SUM(left_arm) AS left_arm, SUM(right_arm) AS right_arm, SUM(left_leg) AS left_leg, SUM(right_leg) AS right_leg, SUM(c4_planted) AS c4_planted, SUM(c4_exploded) AS c4_exploded, SUM(c4_defused) AS c4_defused, SUM(ct_win) AS ct_win, SUM(tr_win) AS tr_win, SUM(hostages_rescued) AS hostages_rescued, SUM(vip_killed) AS vip_killed, SUM(vip_escaped) AS vip_escaped, SUM(vip_played) AS vip_played") }
	scope :by_players, -> (players) { joins(:user).where("user_id IN (?)", players).group(:user_id, :nome) }

	def ratio
		(kills.to_f/deaths.to_f).round(2)
	end

	def knife_percentage
		((knife.to_f/kills.to_f)*100).round(2)
	end

	def glock_percentage
		((glock.to_f/kills.to_f)*100).round(2)
	end

	def usp_percentage
		((usp.to_f/kills.to_f)*100).round(2)
	end

	def p228_percentage
		((p228.to_f/kills.to_f)*100).round(2)
	end

	def deagle_percentage
		((deagle.to_f/kills.to_f)*100).round(2)
	end

	def elite_percentage
		((elite.to_f/kills.to_f)*100).round(2)
	end

	def fiveseven_percentage
		((fiveseven.to_f/kills.to_f)*100).round(2)
	end

	def m3_percentage
		((m3.to_f/kills.to_f)*100).round(2)
	end

	def xm1014_percentage
		((xm1014.to_f/kills.to_f)*100).round(2)
	end

	def mac10_percentage
		((mac10.to_f/kills.to_f)*100).round(2)
	end

	def tmp_percentage
		((tmp.to_f/kills.to_f)*100).round(2)
	end

	def mp5navy_percentage
		((mp5navy.to_f/kills.to_f)*100).round(2)
	end

	def ump45_percentage
		((ump45.to_f/kills.to_f)*100).round(2)
	end

	def p90_percentage
		((p90.to_f/kills.to_f)*100).round(2)
	end

	def galil_percentage
		((galil.to_f/kills.to_f)*100).round(2)
	end

	def ak47_percentage
		((ak47.to_f/kills.to_f)*100).round(2)
	end

	def sg550_percentage
		((sg550.to_f/kills.to_f)*100).round(2)
	end

	def famas_percentage
		((famas.to_f/kills.to_f)*100).round(2)
	end

	def m4a1_percentage
		((m4a1.to_f/kills.to_f)*100).round(2)
	end

	def aug_percentage
		((aug.to_f/kills.to_f)*100).round(2)
	end

	def scout_percentage
		((scout.to_f/kills.to_f)*100).round(2)
	end

	def sg552_percentage
		((sg552.to_f/kills.to_f)*100).round(2)
	end

	def awp_percentage
		((awp.to_f/kills.to_f)*100).round(2)
	end

	def g3sg1_percentage
		((g3sg1.to_f/kills.to_f)*100).round(2)
	end

	def m249_percentage
		((m249.to_f/kills.to_f)*100).round(2)
	end

	def hegrenade_percentage
		((hegrenade.to_f/kills.to_f)*100).round(2)
	end

	def flashbang_percentage
		((flashbang.to_f/kills.to_f)*100).round(2)
	end

	def smokegrenade_percentage
		((smokegrenade.to_f/kills.to_f)*100).round(2)
	end
end
