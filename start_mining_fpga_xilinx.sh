#!/bin/sh

# to get the device id run: ../ethminer/ethminer --list-devices


#Out dated !
#copy from the bat file !

# configs
#ACCOUNT=14551935EDf4aF06909336084412dd805aE14b26

# My account
ACCOUNT=A8C1Fd6cd11cF71364a6bFEba16160A8c2109038

# Kim account
#ACCOUNT=59049e8ffAd45BfbAECadBFeB75c7f79f44714a1

WORKER=FPGAs
MINING_POOL=eu1.ethermine.org
POOL_PORT=4444
TARGET_DEVICE_ID=0
GLOBAL_WG_SIZE=1024
LOCAL_WG_SIZE=128
#BINARY_FILE=/home/phuong/Workspace/FPGA/ETH_MINING/Miner/u200_opencl/xclbin/ethash.sw_emu.xclbin
BINARY_FILE=/home/phuong/Workspace/FPGA/ETH_MINING/Miner/u200_opencl/xclbin/ethash.hw_emu.xclbin

# m_settings.globalWorkSize = m_settings.localWorkSize * m_settings.globalWorkSizeMultiplier;

# go to root
#cd ..

# start mining
./build/ethminer/ethminer -G -P stratum://$ACCOUNT.$WORKER@$MINING_POOL:$POOL_PORT --cl-global-work=$GLOBAL_WG_SIZE --cl-local-work=$LOCAL_WG_SIZE --opencl-device=$TARGET_DEVICE_ID --cl-binary-file=$BINARY_FILE

#./build/ethminer/ethminer -G -M 10 --opencl-device=$TARGET_DEVICE_ID --cl-binary-file=$BINARY_FILE
