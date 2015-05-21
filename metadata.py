from rq import get_current_job


job = get_current_job()
job.meta['progress'] = (done / todo) * 100
job.save()
