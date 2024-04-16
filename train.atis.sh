for BATCH in 32
do
  for LR in 0.001
  do
    for i in  96,96,16;
    do IFS=","; set -- $i;
      for ENCODE_LAYER in 2
      do
        for ATT_DROPOUT in 0.05
        do
          for RES_DROPOUT in 0.1
          do
            python models.py -name=epochs_atis_250 --patience=5 --dump=False --dataset=atis --split=' ' --max_epochs=1 \
            --batch_size=${BATCH} --valid_data_path=test --lr=${LR} --alpha=0.5 --rm_nums=True --hidden_size=$1 \
            --filter_size=$2 --num_heads=$3 --encode_mode='UTF-8' --num_encoder_layers=${ENCODE_LAYER} \
            --attention_dropout=${ATT_DROPOUT} --residual_dropout=${RES_DROPOUT} --multiply_embedding_mode='none'
          done
        done
      done
    done
  done
done