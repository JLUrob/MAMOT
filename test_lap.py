from lap import lapjv
import numpy as np
 
a = np.array([[-0.5,-0.6,-0.1],[-0.4,-0.7,-0.5]])
 
c,x,y = lapjv(a,extend_cost=True,cost_limit=-0.4)
 
print(c,x,y)


# import multiprocessing

# # 获取CPU的核心数
# cpu_count = multiprocessing.cpu_count()

# # 通常设置为CPU核心数，但可以根据需要调整
# process_count = cpu_count - 1  # 留一个核心处理其他任务


# ./run_val.sh data/nuscenes DAL4D14 56 config/MA3.yaml
