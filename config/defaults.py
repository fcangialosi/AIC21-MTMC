from yacs.config import CfgNode as CN

_C = CN()

_C.CHALLENGE_DATA_DIR = ''
_C.DET_SOURCE_DIR = ''
_C.REID_MODEL1 = ''
_C.REID_BACKBONE1 = ''
_C.REID_MODEL2 = ''
_C.REID_BACKBONE2 = ''
_C.REID_MODEL3 = ''
_C.REID_BACKBONE3 = ''
_C.REID_SIZE_TEST = [256, 256]

_C.DET_IMG_DIR = ''
_C.DATA_DIR = ''
_C.ROI_DIR = ''
_C.CID_BIAS_DIR = ''

_C.USE_RERANK = False
_C.USE_FF = False
_C.SCORE_THR = 0.5

_C.MCMT_OUTPUT_TXT = ''

_C.FPS = 30
_C.NUM_SECONDS = 1
_C.CAMS = ['c041', 'c042', 'c043', 'c044', 'c045', 'c046']
_C.MERGE_DIR = ''
_C.TRACKING_DIR = 'tracking'
