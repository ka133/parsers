from bs4 import BeautifulSoup
import re

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


def get_salary(s):
    # salary: 1700 usd per month
    pattern = r'\d{1,9}'
    # salary = re.findall(pattern, s)[0]
    salary = re.search(pattern, s).group()      #the same as findall()
    print(salary)

def main():
    file = open('index.html').read()
    soup = BeautifulSoup(file, 'lxml')
    # row = soup.find_all('div', {'dataset': 'salary'})
    # sweta = soup.find('div', text='Sweta').find_parent(class_='row') #or .parent.parent
    # print(sweta)
    # copiwriters = []
    # persons = soup.find_all('div', class_='row')
    # for person in persons:
    #     sw = get_copywriter(person)
    #     if sw:
    #         copiwriters.append(sw)
    # print(copiwriters)

    salary = soup.find_all('div', {'data-set': 'salary'})
    for i in salary:
        get_salary(i.text)


if __name__ == '__main__':
    main()
