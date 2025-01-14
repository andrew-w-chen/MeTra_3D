#!/bin/bash

#EHR Model
python -m classification.training.trainer dataset=my_mimic_lab meta.transforms=True optimizer.lr=5e-6 model.output_logits=1 model=multi_modal_pretrained_vit_lab meta.prefix_name=EHR scheduler=cosine_annealing epochs=200 meta.batch_size=50 meta.cross_validation=False meta.num_workers=20 model.transforms.img_size=384 meta.gpus=[0] meta.imbalance_handler=None optimizer.name=AdamW optimizer.lr_scheduler=None model.meta.p_visual_dropout=1.0 model.meta.p_feature_dropout=0.0
#python classification/training/trainer.py dataset=mimic_lab meta.transforms=True optimizer.lr=5e-6 model.output_logits=1 model=multi_modal_pretrained_vit_lab meta.prefix_name=EHR scheduler=cosine_annealing epochs=200 meta.batch_size=50 meta.cross_validation=False meta.num_workers=20 model.transforms.img_size=384 meta.gpus=[0] meta.imbalance_handler=None optimizer.name=AdamW optimizer.lr_scheduler=None model.meta.p_visual_dropout=1.0 model.meta.p_feature_dropout=0.0

