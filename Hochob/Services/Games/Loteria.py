
def shuffle():
    with open("teams.txt", mode="r", encoding="utf-8") as myFile:
        lines = list(myFile)
    random.shuffle(lines)
    print(lines)

