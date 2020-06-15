import csv
import re
from numpy import mean


def write_csv(data):
    with open('result.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((data['string'], data['type'], data['price']))


def refined_k(s):
    print(s)
    print('k')
    # $ 450K  FIXED PRICE 20 SQS HOME 4 BEDS
    pattern_k = '\d+[kK]'
    r = re.findall(pattern_k, s)
    return r[0].lower().replace('k', '000')


def refined_m(s):
    print(s)
    print('m')
    pattern_m = '\d+[mM]\D'
    r = re.findall(pattern_m, s)
    print(r)
    r0 = r[0].replace('.', '')
    print(int(r0.lower().replace('m', '000000')))
        # , int(r[1])
    # avg = mean(a)
    # return avg


def refined_perc(s):
    print('perc')
    print(s)
    # $1,020,000 with 8% rental return
    pattern_k = '\d+[%]'
    r = s.replace('.', '')
    r = r.replace(re.findall(pattern_k, r)[0], '')
    return refined_digit(r.replace(',', ''))[0]


def refined_aver(s):
    print('aver')
    print(s)
    pattern_k = '\d+'

    r = re.findall(pattern_k, s.replace(',', ''))
    res = []
    for i in r:
        print(type(i))
        res.append(int(i))
        print(type(r[0]))
    res = mean(r)
    print(res)
    return res
    # r = r.replace(re.findall(pattern_k, r)[0], '')
    # return refined_digit(r.replace(',', ''))[0]


def refined_digit(s):
    pattern = r'\d+'
    r = re.findall(pattern, s)
    return r


def main():
    with open('strings1.csv') as file:
        order = ['string', 'type', 'price']
        reader = csv.DictReader(file, fieldnames=order)
        pattern_None = '\d[\']'
        pattern_million = 'million'
        pattern_k = '\d[kK]'
        # pattern_m = '\d[mM][\D][^\']'
        pattern_perc = '\d[%]'
        pattern_aver = '\d+[^%km]'
        # patterm_difference =
        for r in reader:
            if re.search(pattern_None, r['string']):
                print(r['string'])
                print("None_")
            elif re.search(pattern_million, r['string']):
                print(r['string'])
                print('million_')
            elif re.search(pattern_k, r['string']):
                print(r['string'])
                print(refined_k(r['string']))
            elif re.search(pattern_perc, r['string']):
                print(r['string'])
                print(refined_perc(r['string']))
            # elif re.search(pattern_m, r['string']):
            #     print(refined_m(r['string']))
            elif re.search(pattern_aver, r['string']):
                print(r['string'])
                print(refined_aver(r['string']))
            else:
                print('else   ' + str(r))


if __name__ == '__main__':
    main()