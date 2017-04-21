#!/usr/bin/env bash

## This script tries to find each topic in the array in each of the json files in the ~/dev/public/projects/ref/

# create array of topics
declare -a Topics=('1970 British Cohort Study' 'British Household Panel Survey' 'English Longitudinal Study of Ageing' 'Growing Up in Scotland' 'Longitudinal Study of Young People in England' 'Millennium Cohort Study' 'National Child Development Study' 'Understanding Society' 'Annual Population Survey' 'British Social Attitudes' 'Citizenship Survey' 'Community Life Survey' 'Continuous Household Survey' 'Crime Survey for England and Wales' 'English Housing Survey' 'English House Condition Survey and Survey of English Housing' 'European Union Statistics on Income and Living Conditions' 'Family Expenditure Survey' 'Family Resources Survey' 'FRS Individual Income Series' 'General Lifestyle Survey' 'Health Survey for England' 'Households Below Average Income' 'Integrated Household Survey' 'Labour Force Survey' 'Life Opportunities Survey' 'Living Costs and Food Survey' 'Living in Wales Survey' 'National Food Survey' 'National Survey for Wales' 'National Travel Survey' 'Northern Ireland Family Expenditure Survey' 'Northern Ireland Labour Force Survey' 'Northern Ireland Life and Times Survey' 'Opinions and Lifestyle Survey' 'ONS Opinions Survey and ONS Omnibus Survey' 'Scottish Crime and Justice Survey' 'Scottish Health Survey' 'Scottish Social Attitudes Survey' 'Survey of Carers in Households 2009/10' 'Time Use Survey' 'Vital Statistics' 'Welsh Health Survey' 'Workplace Employment Relations Survey' 'Young Peoples Social Attitudes Survey');

for i in {0..44}
do
    echo "SEARCHING:" ${Topics[i]}
    ack --ignore-case --files-with-matches -1 --json "${Topics[i]}"  ~/dev/public/projects/ref/
done

