from bottle import route, run, template, static_file, request, redirect, response, default_app, get


@route('/')
def home():
    return template('home')

# Run bottle internal test server when invoked directly ie: non-uxsgi mode
if __name__ == '__main__':
    run(host="0.0.0.0", port=8080, debug=True)
# Run bottle in application mode. Required in order to get the application working with uWSGI!
else:
    app = application = default_app()
