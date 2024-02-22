# @version 0.3.10
"""
@title Optimism Relayer
@author CurveFi
"""


enum Agent:
    OWNERSHIP
    PARAMETER
    EMERGENCY

CODE_OFFSET: constant(uint256) = 3

OWNERSHIP_AGENT: public(immutable(address))
PARAMETER_AGENT: public(immutable(address))
EMERGENCY_AGENT: public(immutable(address))

agent: HashMap[Agent, address]


@external
def __init__(_agent_blueprint: address):
    OWNERSHIP_AGENT = create_from_blueprint(_agent_blueprint, code_offset=CODE_OFFSET)
    PARAMETER_AGENT = create_from_blueprint(_agent_blueprint, code_offset=CODE_OFFSET)
    EMERGENCY_AGENT = create_from_blueprint(_agent_blueprint, code_offset=CODE_OFFSET)

    self.agent[Agent.OWNERSHIP] = OWNERSHIP_AGENT
    self.agent[Agent.PARAMETER] = PARAMETER_AGENT
    self.agent[Agent.EMERGENCY] = EMERGENCY_AGENT


@external
def ownership() -> address:
    return self.agent[Agent.OWNERSHIP]


@external
def parameter() -> address:
    return self.agent[Agent.PARAMETER]


@external
def emergency() -> address:
    return self.agent[Agent.EMERGENCY]
