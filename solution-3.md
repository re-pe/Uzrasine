## 3 užduotis

### Tema: Daugiavartotojiška užrašinė (Multiuser notes manager)

###**Pagrindinės esybės:**

* Pagrindinė tvarkyklė (MainManager)
* Paskyrų tvarkyklė (AccountManager)
* Užrašų knygelių tvarkyklė (NotebookManager)
* Užrašų knygelė, 
* Įrašas / žyma / komentaras, 
* Prisegtas failas,
* Vartotojas, 
* Vaidmuo

###**Pagrindinė tvarkyklė (MainManager)**

* sukuria ir įkelia paskyrų tvarkyklę
* sukuria ir įkelia knygelių tvarkyklę

#### Pagrindinės tvarkyklės savybės:

  @accmanager
  @nbmanager
  
  #initialize

###**Užrašų tvarkyklė (NoteManager)**

* leidžia sukurti paskyrą
* leidžia prisijungti prie sistemos (atidaro vartotoją)
* vartotojo nurodymu:
    * kuria jo užrašų knygeles
    * atidaro jo užrašų knygeles
    * uždaro jo užrašų knygeles
    * trina jo užrašų knygeles

####Užrašų tvarkyklės savybės:

  @notebooks
  @open_notebooks
  @current_notebook
  @accounts
  create_notebook(name, owner = '', description = '')
  delete_notebook(name)
  exists?(name)
  open_notebook(name)
  close(name)
  open?(name)
  select_notebook(name)
  current?(name)
  current

    
**Užrašų knygelė:**

* turi id
* turi pavadinimą
* turi kūrėją - pagrindinį skaitytoją ir autorių
* gali turėti kitų skaitytojų
* gali turėti kitų autorių
* gali turėti kitų komentatorių

    
**Vartotojas:**

* gali sukurti savo užrašų knygeles
* savo užrašų knygelėse gali: 
    * kurti, redaguoti ir trinti jų įrašus
    * kurti įrašų komentarus, juos redaguoti, trinti
    * įkelti, tvarkyti ir trinti failus savo užrašų knygelėse
* gali ieškoti reikalingų įrašų pagal pavadinimą, žymas, aprašo ar komentarų tekstą
* gali kitam vartotojui leisti:
    * skaityti savo knygelių įrašus 
    * kurti ir redaguoti savo užrašų knygelės įrašus 
    * komentuoti savo užrašų knygelės įrašus 
    * įkelti, tvarkyti ir trinti failus savo užrašų knygelėse
* gali atimti kitam vartotojui suteiktus leidimus
* gali perleisti savo užrašų knygelę kitam vartotojui
* gali ištrinti savo užrašų knygelę
* gali matyti savo užrašų knygelių sąrašą 
* gali matyti sąrašą vartotojų, galinčių skaityti jo užrašų knygeles
* gali matyti sąrašą vartotojų, galinčių rašyti jo užrašų knygelese
* gali matyti sąrašą vartotojų, galinčių komentuoti jo knygelės įrašus
* gali parašyti tiesioginę žinutę kitam vartotojui
* gali gauti leidimą iš kitų vartotojų 
    * skaityti jų užrašų knygeles
    * kurti ir redaguoti įrašus jų užrašų knygelese
    * komentuoti įrašus jų užrašų knygelese
    * įkelti, tvarkyti ir trinti failus jų užrašų knygelėse
* gali išeiti iš sistemos
* gali pasikeisti slaptažodį
* gali redaguoti savo paskyrą
* gali ištrinti savo paskyrą
* turi id
* turi vardą, pavardę, lytį
* turi kontaktinius duomenis: el. paštą, tel. nr., adresą

**Administratorius:**

* gali matyti vartotojų sąrašą
* gali užblokuoti vartotojo paskyrą
* gali ištrinti vartotojo paskyrą
* gali pakeisti vartotojo slaptažodį
* gali matyti vartotojo paskyros duomenis
* gali matyti vartotojų užrašų knygelių sąrašą
* gali matyti užrašų knygelių skaitytojus, autorius ir komentatorius
* gali matyti vartotojų įkeltų failų sąrašą
* gali matyti vartotojų veiksmų logą         

**Įrašas / žyma / komentaras:**

* turi id
* turi pavadinimą
* turi autorių
* nurodo užrašų knygelę, kuriai priklauso
* gali turėti aprašą
* gali turėti komentarų
* gali turėti prisegtų failų
* yra šakninis, kai neturi pagrindinės žymos (tag)
* gali turėti nuorodų į kitas žymas (tags)
* gali turėti kitų įrašų nuorodas aprašo tekste

**Prisegtas failas**

* turi id
* turi trumpą pavadinimą
* turi kelią ir failo pavadinimą
* turi tipą (paveikslėlis, garsas ir pan.)
* nurodo įrašą, kuriam priklauso
* nurodo jį įkėlusį vartotoją
