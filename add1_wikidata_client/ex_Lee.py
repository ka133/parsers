from wikidata.client import Client


def main():
    client = Client()
    entity = client.get('Q20145', load=True)
    name_prop = client.get('P734')
    name = entity[name_prop].label
    # all_data = entity.data
    # for i in all_data:
    #     print(i)
    data = {'id': entity.id,
            'description': entity.description,
            'name': name}
    print(data)


if __name__ == '__main__':
    main()
