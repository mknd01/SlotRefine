python models.py -name=epochs_3_testing --patience=0 --dump=False --dataset=atis --split=' ' --max_epochs=1 \
 --valid_data_path=test --alpha=0.5 --rm_nums=True \
--encode_mode='UTF-8' \
--multiply_embedding_mode='none' \
--job='prediction'
