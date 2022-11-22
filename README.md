# Prepare proj

```
docker build  -f .\Dockerfile -t image_proj .
docker run -p 8888:8888 -it --rm image_proj
```

or install reqs local
```
cd ./docker
pip install -r ./requirements.txt
```

# Start

```
cd ./proj
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
```