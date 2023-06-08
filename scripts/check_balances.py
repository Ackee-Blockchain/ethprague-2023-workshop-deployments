from woke.deployment import *
from .config import networks


def main():
    print(f"Balances for {Address.from_alias('deployment', '')}")
    for name, rpc in networks.items():
        with default_chain.connect(rpc):
            a = Account.from_alias("deployment", "")
            print(f"{name}: {a.balance.to_ether()}")
