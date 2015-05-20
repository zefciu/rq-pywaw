from rq import Queue
from redis import Redis

conn = Redis()
q = Queue(connection=conn)
q.enqueue(my_job, arg1, arg2)
