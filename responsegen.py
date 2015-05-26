def get_response(self, request, rows):
    f = StringIO.StringIO()
    csvutil.UnicodeWriter(f).writerows(rows)
    response = HttpResponse(f.getvalue(), content_type="application/csv")
    response['Content-Disposition'] = 'attachment; filename=ralph.csv'
    return response
