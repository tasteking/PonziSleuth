- SotA performance under lower rate of dataset to train
**PonziGuard**
|rate   |TPR    |TNR    |BAC    |
|:-:    |:-:    |:-:    |:-:    |
|20%    |69.07% |92.12% |80.59% |
|30%    |73.63% |95.65% |84.64% |

**SourceP**
|rate   |TPR    |TNR    |BAC    |
|:-:    |:-:    |:-:    |:-:    |
|20%    |81.05% |97.71% |89.39% |
|30%    |84.91% |98.25% |91.58% |

**PonziSleuth(ours)**
- no need to train
|TPR        |TNR        |BAC      |
|:-:        |:-:        |:-:      |
|96.40%     |95.71%     |96.06%   |

- Using old contracts trained model to detect newly-collected contracts
|SotA       |TPR    |TNR    |BAC    |
|:-:        |:-:    |:-:    |:-:    |
|PonziGuard |61.76% |93.75% |77.76% |
|SourceP    |33.52% |57.03% |45.28% |

- no need to train
|Ours       |TPR    |TNR    |BAC    |
|:-:        |:-:    |:-:    |:-:    |
|PonziSleuth|92.06% |92.33% |92.20% |