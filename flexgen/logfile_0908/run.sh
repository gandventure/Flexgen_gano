for BATCH_SIZE in 1 2 4 8 16 32 64 128 
do
   for LIN in 256 512 1024
   do
      python3 -m flexgen.flex_opt --model facebook/opt-6.7b --path __DUMMY__ --gpu-batch-size ${BATCH_SIZE} --prompt-len ${LIN} --percent 0 100 0 100 0 100
      # python3 -m flexgen.flex_opt --model facebook/opt-6.7b --path __DUMMY__ --gpu-batch-size ${BATCH_SIZE} --prompt-len ${LIN} --percent 30 70 0 100 100 0 --cpu-cache-compute
   done
done

# python3 -m flexgen.flex_opt --model facebook/opt-6.7b --path __DUMMY__ --gpu-batch-size 64 --prompt-len 2048 --percent 100 0 0 100 100 0 --debug-mode breakdown
# python3 -m flexgen.flex_opt --model facebook/opt-6.7b --path __DUMMY__ --gpu-batch-size 64 --prompt-len 1024 --percent 100 0 0 100 100 0 --cpu-cache-compute --debug-mode breakdown
# python3 -m flexgen.flex_opt --model facebook/opt-6.7b --path __DUMMY__ --gpu-batch-size 1 --prompt-len 1024 --percent 0 100 0 100 0 100 --cpu-cache-compute
