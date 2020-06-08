from bs4 import BeautifulSoup
    # .find()
    # .find_all()

    # .parent()
    # .parent().parent()
    # .find_parent()
    # .parents()
    # .find_parents()

    # .find_nex_subling()
    # .find_previous_subling()


def get_copywriter(tag):
    whois = tag.find('div', id='whois').text.strip()
    if 'Copywriter' in whois:
        return tag
    return None


def main():
    file = open('index.html').read()
    soup = BeautifulSoup(file, 'lxml')
    # row = soup.find_all('div', {'dataset': 'salary'})
    # sweta = soup.find('div', text='Sweta').find_parent(class_='row') #or .parent.parent
    # print(sweta)
    copiwriters = []

    persons = soup.find_all('div', class_='row')
    for person in persons:
        sw = get_copywriter(person)
        if sw:
            copiwriters.append(sw)

    print(copiwriters)




if __name__ == '__main__':
    main()
