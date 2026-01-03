from .UserRoutes import user_bp

def Register_Routes(app):
    app.register_blueprint(user_bp,url_prefix="/api/users")

