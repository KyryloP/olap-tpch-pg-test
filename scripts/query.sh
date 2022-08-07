#!/bin/bash

export PG_URL="192.168.0.5"
export PG_USER="postgres"

mkdir ./log1
total_cost=0

for i in {1..22}
do
        echo "begin run Q${i}, tpch_query/q$i.sql , `date`"
        begin_time=`date +%s.%N`
        psql -h ${PG_URL} -U ${PG_USER} tcph -f ./tpch_query/q${i}.sql > ./log1/log_q${i}.out
        rc=$?
        end_time=`date +%s.%N`
        cost=`echo "$end_time-$begin_time"|bc`
        total_cost=`echo "$total_cost+$cost"|bc`
        if [ $rc -ne 0 ] ; then
              printf "run Q%s fail, cost: %.2f, totalCost: %.2f, `date`\n" $i $cost $total_cost
         else
              printf "run Q%s succ, cost: %.2f, totalCost: %.2f, `date`\n" $i $cost $total_cost
         fi
done
