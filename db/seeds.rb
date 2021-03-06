# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  # Limpar a base de dados
  Rankme.destroy_all
  Tournament.destroy_all
  Team.destroy_all
  
  # Simulação 1
  murillo = RankmeMysql.find_by(id: 4)
  murillo.update_attributes(kills: 10, deaths: 4, ct_win: 7, tr_win: 0, rounds_ct: 13, rounds_tr: 0)
  eduardo = RankmeMysql.find_by(id: 1)
  eduardo.update_attributes(kills: 5, deaths: 6, ct_win: 7, tr_win: 0, rounds_ct: 13, rounds_tr: 0)
  wemerson = RankmeMysql.find_by(id: 7)
  wemerson.update_attributes(kills: 4, deaths: 5, ct_win: 7, tr_win: 0, rounds_ct: 13, rounds_tr: 0)
  danilo = RankmeMysql.find_by(id: 6)
  danilo.update_attributes(kills: 9, deaths: 9, ct_win: 0, tr_win: 6, rounds_ct: 0, rounds_tr: 13)
  naiara = RankmeMysql.find_by(id: 5)
  naiara.update_attributes(kills: 7, deaths: 9, ct_win: 0, tr_win: 6, rounds_ct: 0, rounds_tr: 13)
  ricardo = RankmeMysql.find_by(id: 3)
  ricardo.update_attributes(kills: 5, deaths: 7, ct_win: 0, tr_win: 5, rounds_ct: 0, rounds_tr: 12)
  
  # Simulação 2
  murillo = RankmeMysql.find_by(id: 4)
  murillo.update_attributes(kills: 10, deaths: 4, ct_win: 7, tr_win: 0, rounds_ct: 10, rounds_tr: 0)
  eduardo = RankmeMysql.find_by(id: 1)
  eduardo.update_attributes(kills: 5, deaths: 6, ct_win: 7, tr_win: 0, rounds_ct: 10, rounds_tr: 0)
  wemerson = RankmeMysql.find_by(id: 7)
  wemerson.update_attributes(kills: 4, deaths: 5, ct_win: 0, tr_win: 3, rounds_ct: 0, rounds_tr: 10)
  danilo = RankmeMysql.find_by(id: 6)
  danilo.update_attributes(kills: 9, deaths: 9, ct_win: 0, tr_win: 2, rounds_ct: 0, rounds_tr: 5)
  naiara = RankmeMysql.find_by(id: 5)
  naiara.update_attributes(kills: 7, deaths: 9, ct_win: 0, tr_win: 3, rounds_ct: 0, rounds_tr: 10)-
    
  # Simulação 3
  murillo = RankmeMysql.find_by(id: 4)
  murillo.update_attributes(kills: 10, deaths: 4, ct_win: 7, tr_win: 0, rounds_ct: 11, rounds_tr: 0)
  eduardo = RankmeMysql.find_by(id: 1)
  eduardo.update_attributes(kills: 5, deaths: 6, ct_win: 7, tr_win: 0, rounds_ct: 11, rounds_tr: 0)
  ricardo = RankmeMysql.find_by(id: 3)
  ricardo.update_attributes(kills: 5, deaths: 7, ct_win: 7, tr_win: 0, rounds_ct: 11, rounds_tr: 0)
  wemerson = RankmeMysql.find_by(id: 7)
  wemerson.update_attributes(kills: 4, deaths: 5, ct_win: 0, tr_win: 4, rounds_ct: 0, rounds_tr: 11)
  danilo = RankmeMysql.find_by(id: 6)
  danilo.update_attributes(kills: 9, deaths: 9, ct_win: 0, tr_win: 3, rounds_ct: 0, rounds_tr: 5)
  naiara = RankmeMysql.find_by(id: 5)
  naiara.update_attributes(kills: 7, deaths: 9, ct_win: 0, tr_win: 3, rounds_ct: 0, rounds_tr: 7)
  
  # Simulação 4
  murillo = RankmeMysql.find_by(id: 4)
  murillo.update_attributes(kills: 8, deaths: 8, ct_win: 5, tr_win: 0, rounds_ct: 12, rounds_tr: 0)
  ricardo = RankmeMysql.find_by(id: 3)
  ricardo.update_attributes(kills: 7, deaths: 7, ct_win: 5, tr_win: 0, rounds_ct: 12, rounds_tr: 0)
  wemerson = RankmeMysql.find_by(id: 7)
  wemerson.update_attributes(kills: 6, deaths: 5, ct_win: 0, tr_win: 7, rounds_ct: 0, rounds_tr: 12)
  danilo = RankmeMysql.find_by(id: 6)
  danilo.update_attributes(kills: 6, deaths: 9, ct_win: 0, tr_win: 7, rounds_ct: 0, rounds_tr: 12)
  naiara = RankmeMysql.find_by(id: 5)
  naiara.update_attributes(kills: 6 deaths: 9, ct_win: 0, tr_win: 7, rounds_ct: 0, rounds_tr: 12)

end
