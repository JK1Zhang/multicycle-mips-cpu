# multicycle-mips-cpu
a simple implementation with verilog

+ 一个存储器
+ 实现六条指令：addi、add、lw、sw、bgtz、j
+ 对一个求斐波那契数列例程进行测试

数据通路
![Image text](https://github.com/JK1Zhang/multicycle-mips-cpu/blob/master/materials/%E6%95%B0%E6%8D%AE%E9%80%9A%E8%B7%AF.jpg)


上面不含有j指令的通路，增加后为
![Image text](https://github.com/JK1Zhang/multicycle-mips-cpu/blob/master/materials/j%E6%8C%87%E4%BB%A4%E6%95%B0%E6%8D%AE%E9%80%9A%E8%B7%AF.jpg)

状态机
![Image text](https://github.com/JK1Zhang/multicycle-mips-cpu/blob/master/materials/%E7%8A%B6%E6%80%81%E6%9C%BA.jpg)
