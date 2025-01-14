#from classification.datasets import MIMICDataset, UKADataset, load_cxr_ehr, my_collate # ORIGINAL
from classification.datasets import load_cxr_ehr, my_collate # Removed MIMICDataset, UKADataset as not used in this script

def get_dataset(cfg):
    collate_fn = None
    print(cfg.dataset.name) #debugging
    if cfg.dataset.name == 'MIMICLab':
        train_dataset, validation_dataset, test_dataset = load_cxr_ehr(cfg=cfg)
        collate_fn = my_collate

    return train_dataset, validation_dataset, test_dataset, collate_fn
