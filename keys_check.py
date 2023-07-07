import requests

# ключ result
# https://api.etherscan.io/api?module=proxy&action=eth_blockNumber&apikey=YourApiKeyToken
key_result = "https://api.etherscan.io/api"

# ключ height
# https://api.blockcypher.com/v1/eth/main
key_height = "https://api.blockcypher.com/v1/eth/main"


def get_json_by_key(key, sdata, params=None):
    return requests.get(key, params).json()[sdata]


num_result = get_json_by_key(key_result, "result", {
    "module": "proxy",
    "action": "eth_blockNumber",
    "apikey": "YourApiKeyToken"
})
# 0x10d2ff4
num_result = int(num_result, 16)

num_height = get_json_by_key(key_height, "height")

print("Result:", num_result, "; Height:", num_height)

if num_result > num_height:
    pass
elif num_result < num_height:
    pass
else:
    # ==
    pass
