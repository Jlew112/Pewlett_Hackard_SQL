# Pewlett Hackard Analysis

## Overview
Pewlett Packard is a large company that has been around for a long time. As the baby boomer generation approaches retirement, we have been asked to put together a list of employees likely to retire, so Pewlett Hackard can prepare for retirement packages, training schedules, and backfills for the soon-to-be retired employees. We have been able to create our list in SQL by checking current employees against their birthdays.

## Results
Our initial employees table held all info for all employees across the history of the company, so it was critical that we narrowed it down to the employees that were currently still employed. We were also aware that many people may have been promoted or moved to a different department ladder, so instead of looking at the employee's hire date, we decided to look at their hire date per the title they held. This enabled us to find the most up-to-date department and salary information available. This is found in the unique_titles,retirement_titles.csv file

Per Department retirement breakdown:
Title                     Expected retirements
 - Senior Engineer        25,916
 - Senior Staff           24,926
 - Engineer               9,285
 - Staff                  7,636
 - Technique Leader       3,603
 - Assistant Engineer     1,090
 - Manager                2

Pewlett Packard had the great idea of creating a mentorship program for people nearing retirement. The mentorship program would give people the opportunity to maybe go to part-time, if needed, while they train the new employees coming in to backfill. Per Pewlett Hackard's request, we built up a list of mentorhsip eligibility (also with the latest department/title postition). This list can be found in the mentorship_eligibility.csv file.

# Summary
Overall, there are 72459 current positions that potentially need to be filled. The breakdown of those by department can be found above.
There are 1709 mentorship eligibile employees that we can approach with regards to training the next generation. 
