dataDir=data

python test.py \
    --name default \
    --dataroot ${dataDir}/ContourDrawing/ \
    --phase val \
    --how_many 100 \
    --checkpoints_dir ${dataDir}/Exp/PhotoSketch/Checkpoints/ \
    --results_dir ${dataDir}/Exp/PhotoSketch/Results/ \
    --model pix2pix \
    --which_direction AtoB \
    --dataset_mode 1_to_n \
    --norm batch \
    --input_nc 3 \
    --output_nc 1 \
    --which_model_netG resnet_9blocks \
    --which_model_netD global_np \
    --aug_folder width-5 \
    --no_dropout \


python test.py --name default --dataroot data\ContourDrawing\ --phase test --how_many 100 --results_dir data\Exp\PhotoSketch\Results\ --checkpoints_dir data\Exp\PhotoSketch\Checkpoints\ --model pix2pix --which_direction AtoB --norm batch --dataset_mode 1_to_n --input_nc 3 --output_nc 1 --which_model_netG resnet_9blocks --which_model_netD global_np --aug_folder width-1 --no_dropout

$ pip install visdom
#启动服务
#默认端口为8097，可以根据需要加上-p选项修改端口

$ python -m visdom.server # 或者直接visdom命令也可以
#有以下输出代表启动成功

#Downloading scripts. It might take a while.
#It's Alive!
#INFO:root:Application Started
#You can navigate to http://localhost:8097