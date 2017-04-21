#! /bin/bash

## This script pulls down all the Search Case Studies from REF and saves them into individual json files based on their UOA numbers.

for i in {1..36}
do
    wget -O UOA$i.json "http://impact.ref.ac.uk/casestudiesapi/REFAPI.svc/SearchCaseStudies?UoA=$i"
done
