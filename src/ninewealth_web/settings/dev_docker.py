from ninewealth_web.settings.dev import *  # NOQA (ignore all errors on this line)

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'ninewealth_web_dev',
        'USER': 'ninewealth_web',
        'PASSWORD': 'password',
        'HOST': 'postgres',
        'PORT': 5432,
    }
}
