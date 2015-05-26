def get_results(self, request, *args, **kwargs):
    job = get_current_job()
    response = []
    todo = some_queryset.length
    for done, object_ in enumerate(some_queryset):
        response.append(process_object(object_))
        self.set_progress(job, done/todo * 100)
