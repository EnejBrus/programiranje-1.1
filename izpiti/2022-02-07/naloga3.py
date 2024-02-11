from functools import cache
primer = [(1, 2), (1, 3), (3, 5), (5, 0), (5, 1)]


def pobegni(omizje):
    @cache
    def pobeg(i, vrc):
        if i >= len(omizje) and vrc >= 0:
            return [i]
        elif i >= len(omizje):
            return None
        elif i < 0:
            return pobeg(0, vrc)
        else:
            moznosti = [0]
            vrc += omizje[i][1]     
            for d in range(1, vrc + 1):
                korak = pobeg(i + d - min(omizje[i + d][0], vrc), max(0, vrc - i + omizje[i + d][1] - omizje[i + d][0])) 
                if korak is not None:
                    moznosti.append(i + d)
                    moznosti.append(i + d - omizje[i + d][0])
                    if len(moznosti) == 0:
                        return None
                    else: 
                        return [i] + sorted(moznosti, key=len)[0]
    return pobeg(0, 0)   

