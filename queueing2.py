@job('somequeue', connection=conn)
def my_job(arg1, arg2):
    do_something()

my_job.delay(arg1, arg2)
