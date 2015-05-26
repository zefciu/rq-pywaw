def get_result(request):
    url_match = resolve(request.path)
    module = importlib.import_module(
        url_match.func.__module__
    )
    view = getattr(module, url_match.func.__name__)()
    request = copy.deepcopy(request)
    for middleware in settings.MIDDLEWARE_CLASSES:
        middleware.process_request(request)
    view.request = request
    return view.get_result(
        request, *url_match.args, **url_match.kwargs
    )
