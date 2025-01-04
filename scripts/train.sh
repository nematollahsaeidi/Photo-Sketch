dataDir=

python train.py \
    --name default \
    --dataroot ${dataDir}/ContourDrawing/ \
    --checkpoints_dir ${dataDir}/Exp/PhotoSketch/Checkpoints/ \
    --model pix2pix \
    --which_direction AtoB \
    --dataset_mode 1_to_n \
    --no_lsgan \
    --norm batch \
    --pool_size 0 \
    --output_nc 1 \
    --which_model_netG resnet_9blocks \
    --which_model_netD global_np \
    --batchSize 2 \
    --lambda_A 200 \
    --lr 0.0002 \
    --aug_folder width-5 \
    --crop --rotate --color_jitter \
    --niter 400 \
    --niter_decay 400 \


python train.py --name default --dataroot data/ContourDrawing/ --checkpoints_dir data/Exp/PhotoSketch/Checkpoints/ --model pix2pix --which_direction AtoB --dataset_mode 1_to_n --no_lsgan --norm batch --pool_size 0 --output_nc 1 --which_model_netG resnet_9blocks --which_model_netD global_np --batchSize 2 --lambda_A 200 --lr 0.0002 --aug_folder width-5 --crop --rotate --color_jitter --niter 400 --niter_decay 400
$ pip install visdom
#启动服务
#默认端口为8097，可以根据需要加上-p选项修改端口

$ python -m visdom.server # 或者直接visdom命令也可以
#有以下输出代表启动成功

#Downloading scripts. It might take a while.
#It's Alive!
#INFO:root:Application Started
#You can navigate to http://localhost:8097