echo "##############################################################################"
echo "unsetting proxies"
unset http_proxy
unset https_proxy
export MLFLOW_TRACKING_URI=http://ilcepoc2353:1235
export MLFLOW_EXPERIMENT_NAME="MlDocker"
#export MLFLOW_RUN_ID=0985468d4523438b9df9d3174125cbb0
export GIT_PYTHON_REFRESH=quiet
echo $MLFLOW_TRACKING_URI
echo $MLFLOW_EXPERIMENT_NAME
echo $MLFLOW_RUN_ID
#hostname -I | awk '{print $1}'
python Main.py
echo "###############################################################################"
