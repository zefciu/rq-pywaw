class PicklableRequest(object):

    """A class that mimics the django Request object, but only contains
    picklable data, so it can be put on rq."""

    def __init__(self, request):
        self.method = request.method
        self.GET = request.GET
        self.path = request.path
        self._full_path = request.get_full_path()
        self.COOKIES = request.COOKIES

    def get_full_path(self):
        """Returns the full url of this request."""
        return self._full_path
