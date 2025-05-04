from setuptools import setup

setup(
    name='motion_node',
    version='0.0.1',
    packages=['motion_node'],
    scripts=['src/vel.py'],  # 你的主脚本
    install_requires=['rospy', 'numpy', 'scipy','std_msgs' ,'mavros_msgs' , 'geometry_msgs'],  # 如果有其他依赖，列出它们
)
