# https://github.com/WongKinYiu/ScaledYOLOv4
FROM local/pytorch

WORKDIR /

COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache \
    pip install -r requirements.txt

# Please download weight first:
#   https://github.com/WongKinYiu/ScaledYOLOv4/tree/yolov4-csp#yolov4-csp
# COPY yolov4-csp.weights .
COPY yolov4-tiny.weights .

# RUN useradd -m user
# USER user