import json

def parse_pokemon_json(data):
    pokemon_list = data["sheets"][0]["lines"]
    pokemon_dict = {dat["name_id"] : dat for dat in pokemon_list}
    return pokemon_dict


if __name__ == "__main__":
    input_files = [
        "gen1_pokemon",
        "gen2_pokemon",
        "gen3_pokemon",
        "gen4_pokemon",
        "gen5_pokemon",
        "gen6_pokemon",
        "gen7_pokemon",
        "gen8_pokemon",
    ]
    final_dict = dict()
    # Iterate over all databases and add them to dictionary
    for input_file in input_files:
        with open(input_file, "r") as f:
            file_json = json.load(f)
            final_dict.update(parse_pokemon_json(file_json))
    # Write down the final dictionary
    with open("output_json/pokemon.json", "w") as of:
        json.dump(final_dict, of, indent=4)
