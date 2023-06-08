from woke.deployment import *

NODE_URL = "ENTER_NODE_URL_HERE"

# [ ] Install node dependencies
# [ ] `woke init pytypes`
# [ ] Run `check_balances` script
# [ ] Change EVM version to Paris
# [ ] Create user interface using `pick`
# [ ] Deploy dummy with ERC1967Proxy
# [ ] Create upgrade script


@default_chain.connect(NODE_URL)
def main():
    default_chain.set_default_accounts(Account.from_alias("deployment"))
