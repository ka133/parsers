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



def main():
    file = open('index.html').read()
    soup = BeautifulSoup(file, 'lxml')
    # row = soup.find_all('div', {'dataset': 'salary'})
    # sweta = soup.find('div', text='Sweta').find_parent(class_='row') #or .parent.parent
    # print(sweta)

    persons = soup.find_all('div', class_='row')
    print(persons)




if __name__ == '__main__':
    main()
