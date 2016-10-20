set -e

cd mnist_pooling/max/relu/
./train_all_relu.sh
cd ../elu
./train_all_elu.sh
cd ../leakyrelu
./train_all_leakyrelu.sh
cd ../../../
git add *
git commit -a -m "completed mnist pooling experiments"
cd cifar-100_pooling/max/relu/
./train_all_relu.sh
cd ../elu
./train_all_elu.sh
cd ../leakyrelu
./train_all_leakyrelu.sh
cd ../../../
git add *
git commit -a -m "completed cifar-100 pooling experiments"
poweroff