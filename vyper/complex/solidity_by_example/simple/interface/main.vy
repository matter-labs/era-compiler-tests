# Uniswap example
interface UniswapV2Factory:
    def getPair(tokenA: address, tokenB: address) -> address: view

interface UniswapV2Pair:
    def getReserves() -> (uint256, uint256, uint256): view

factory: address
dai: address
weth: address

@external
def __init__():
    self.factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f
    self.dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F
    self.weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2

@external
@view
def getTokenReserves() -> (uint256, uint256):
    pair: address = UniswapV2Factory(self.factory).getPair(self.dai, self.weth)
    reserve0: uint256 = 0
    reserve1: uint256 = 0
    _: uint256 = 0
    reserve0, reserve1, _ = UniswapV2Pair(pair).getReserves()
    return (reserve0, reserve1)
