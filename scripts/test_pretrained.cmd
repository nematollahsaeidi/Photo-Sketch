@set "dataDir=data"

python test_pretrained.py ^
    --name pretrained ^
    --dataset_mode test_dir ^
    --dataroot examples\ ^
    --results_dir %dataDir%\Exp\PhotoSketch\Results\ ^
    --checkpoints_dir %dataDir%\Exp\PhotoSketch\Checkpoints\ ^
    --model pix2pix ^
    --which_direction AtoB ^
    --norm batch ^
    --input_nc 3 ^
    --output_nc 1 ^
    --which_model_netG resnet_9blocks ^
    --no_dropout ^


python pretrained_test.py --name pretrained --dataset_mode test_dir --dataroot examples\ --results_dir data\Exp\PhotoSketch\Results\ --checkpoints_dir data\Exp\PhotoSketch\Checkpoints\ --model pix2pix --which_direction AtoB --norm batch --input_nc 3 --output_nc 1 --which_model_netG resnet_9blocks --no_dropout
