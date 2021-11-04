import awkward as ak

import awkward_xaod_bridge as xaodbridge

jets = ak.Record({"pt": [1, 2, 3], "eta": [4, 5, 6]})
# <Record {pt: [1, 2, 3], eta: [4, 5, 6]} type='{"pt": var * int64, "eta": var * i...'>
calibrated_array = xaodbridge.calibrate(jets["pt"], jets["eta"])
# array([5., 7., 9.])
