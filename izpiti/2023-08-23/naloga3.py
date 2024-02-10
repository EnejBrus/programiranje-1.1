from functools import cache
polica = [10, 20, 60, 50, 30, 40]

##def polnenje_marmelade(sez, vnuki):
#    @cache
 #   def polnenja(i, cas):
 #       if i > len(sez):
 #           return None
  #      elif i == len(sez):
  #          return () 
 #       elif vnuki >= len(sez):
 #           return (max(sez), [[sez(i)] for i in range(len(sez) + 1)])
  #      else:

def sranga(sez, dolzina, rezi):
    @cache
    def prihodek(i):
        if i > dolzina:
            return 0
        if rezi >= dolzina:
            return sum(sez)
        else:
            rezemo_prvega = sez[i] + prihodek(i + 1)
            brez_prvega = prihodek(i + 1)
            return rezemo_prvega + brez_prvega
    return prihodek(0)

    

