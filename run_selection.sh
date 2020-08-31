export BERT_BASE_DIR=~/nlp/bert/bert_model
export GLUE_DIR=~/nlp/bert/data/glue_data
export TRAINED_CLASSIFIER=~/nlp/bert/bert_model/bert_model.ckpt

python run_classifier.py \
	--task_name=dstc \
	--do_train=true \
	--vocab_file=/home/yewon/nlp/bert/bert_model/vocab.txt \
	--bert_config_file=/home/yewon/nlp/bert/bert_model/bert_config.json \
	--init_checkpoint=/home/yewon/nlp/bert/bert_model/bert_model.ckpt \
	--max_seq_length=128 \
	--output_dir=mrpc_output \
	--negative_sample_method "all" \
	--params_file configs/params.json \
	--dataroot /home/yewon/alexa-with-dstc9-track1-dataset/data \
	--exp_name ks-all-1 \
	--local_rank -1
