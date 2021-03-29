import json

def parse_moves_json(data):
    moves_list = data["sheets"][0]["lines"]
    moves_dict = {dat["name_id"] : dat for dat in moves_list if dat["name_id"] != ""}
    return moves_dict

if __name__ == "__main__":
    input_file = "moves"
    final_dict = dict()
    with open(input_file) as f:
        dat = json.load(f)
        final_dict.update(parse_moves_json(dat))
    with open("output_json/moves.json", "w") as of:
        json.dump(final_dict, of, indent=4)

