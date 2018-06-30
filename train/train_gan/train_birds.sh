
name='HDGAN_256'
dataset='birds'
dir='../../Models/'${name}_$dataset
mkdir -v $dir
CUDA_VISIBLE_DEVICES=${device} python3 -i train_worker.py \
                                --dataset $dataset \
                                --batch_size 10 \
                                --model_name ${name} \
                                --g_lr 0.0002 \
                                --d_lr 0.0002 \


# To train HDGAN 512. Usually GPU memory is not enough. You need to train HDGAN_256 first and train 512 part by a stage
