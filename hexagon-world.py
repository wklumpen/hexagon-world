from bottle import route, run, template, static_file, request, redirect, response, default_app, get
from map import Map


@route('/')
def home():
    world = Map("Great Job", 4, 4)
    return template('home', world=world)


@route('/css/<filename:path>')
def css(filename):
    return static_file(filename, root='css')

@route('/js/<filename:path>')
def css(filename):
    return static_file(filename, root='js')

@route('/res/<filename:path>')
def css(filename):
    return static_file(filename, root='res')

# Run bottle internal test server when invoked directly ie: non-uxsgi mode
if __name__ == '__main__':
    # Change host to 'localhost' for local server, or '0.0.0.0' to allow external connections
    run(host="localhost", port=8080, debug=True)
# Run bottle in application mode. Required in order to get the application working with uWSGI!
else:
    app = application = default_app()
