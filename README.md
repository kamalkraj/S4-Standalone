# S4-Standalone [WIP]


### Docker
#### Build
```
docker build -t s4 .
```
#### Run
```
docker run --gpus all -it --rm -v $(pwd):/workspace s4
```

### Model Training

* Train standard sequential CIFAR:
    `python3 -m example`
* Train sequential CIFAR grayscale:
    `python3 -m example --grayscale`
* Train MNIST:
    `python3 -m example --dataset mnist --d_model 256 --weight_decay 0.0`



