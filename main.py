from bs4 import BeautifulSoup


def main():
    file = open('index.html').read()
    soup = BeautifulSoup(file, 'lxml')
    row = soup.find_all('div', {'dataset': 'salary'})
    sweta = soup.find('div', text='Sweta').find_parent(class_='row') #or .parent.parent
    print(sweta)


if __name__ == '__main__':
    main()
