export PYTHONPATH="/home/bd261576/PycharmProjects/simsiam":$PYTHONPATH

DATA="/neurospin/psy_sbox/bd261576/vision_datasets/ImageNet"
# Runs SimSiam with default parameters on ImageNet100
python main_simsiam.py $DATA -a resnet50 --dist-url 'tcp://localhost:10001' --epochs 400 -b 256 --multiprocessing-distributed --world-size 1 --rank 0 --fix-pred-lr &> simsiam_imagenet100.log &