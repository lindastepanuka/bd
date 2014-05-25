#encoding: utf-8
#language: lv
@javascript
Funkcionalitāte: Github vietnes apmeklēšana
  Lai pārliecinātos ka bakalaura darba programmas ir publicētas Github vietnē
  Kā bakalaura darba autors
  Man vajadzētu varēt apmeklēt github vietni un meklēt repozitorija nosaukumu

  Scenārijs: Apmeklēt vietni un meklēt nosaukumu
    Kad es apmeklēju vietni "https://github.com/lindastepanuka"
    Un nospiežu saiti "Repositories"
    Un aizpildu lauku "your-repos-filter" ar "bd"
    Un nospiežu pogu "Search"
    Un nospiežu saiti "bd"
    Tad lappusei būtu jābūt saturam "Bachelor thesis project by Linda Stepanuka, 2014"
