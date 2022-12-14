# install dplyr for data evaluation 

install.packages("dplyr")
library(dplyr)

# install dataset

install.packages('nycflights13')
library('nycflights13')

# see dataset

View(flights)
head(flights)

# filter() -- to filter out parts in dataset

## access day

df_day <- filter(flights,day==4)
df_day

View(df_day)

## access month and day

df_month_day <- filter(flights,month==10,day==3)
df_month_day

View(df_month_day)

## slice() -- row access

View(slice(flights,1:10))
View(slice(flights,6:15))

## mutate() -- make a new column -- calculate net time from scheduled arrival and departure time

df_delay <- mutate(flights,netTime = sched_dep_time - sched_arr_time)
head(df_delay)
View(df_delay)

## transmute() -- only show new column

df_delay <-transmute(flights,netTime = sched_dep_time - sched_arr_time)
head(df_delay)
View(df_delay)

## summarise() -- overall summary

summarise(flights,air_time_avg=mean(air_time,na.rm=TRUE))


# Using mtcars dataset

data(mtcars)
View(mtcars)

## use group_by() to group data

mt_gear <- mtcars %>% group_by(gear)
View(mt_gear)

gear_val <- mt_gear %>% summarise(gear1=sum(gear),gear2=mean(gear))
gear_val
View(gear_val)

mt_hp <- mtcars %>% group_by(hp)
View(mt_hp)

hp_val <- mt_hp %>% summarise(hp_sum=sum(hp),hp_mean=mean(hp))
View(hp_val)

## sample_n() and sample_frac()  -- create sampling of data

sample_n(mtcars,20)  ### 20 random samples

sample_frac(mtcars,0.6)    ### 60% data


## arrange()  -- arrange data + sorting

View(arrange(mtcars,cyl,disp))
