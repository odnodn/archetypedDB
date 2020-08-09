

const dictionary = {
  "caes": ['cachorrinho', 'cachorro'],
  "gatos": ['gatinho', 'felino']
}




module.exports = {

  async termDictionary (term){
    newName = term
    Object.keys(dictionary).map(key => {
      dictionary[key].map(wrongWord => {
        if(wrongWord.includes(term)){
          newName = key
        }
      })
    })
    return newName
  }
}