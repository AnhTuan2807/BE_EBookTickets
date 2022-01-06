"""
Django settings for EBookTickets project.

Generated by 'django-admin startproject' using Django 3.2.6.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-v&s_xr8mixokr=x93^ox7lv&q3(rmp4%!k!$n+w0h2p8n+!quk'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

# if DEBUG:
#     import mimetypes
#     mimetypes.add_type("application/javascript", ".js", True)

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'BookTickets.apps.BookticketsConfig',
    'ckeditor',
    'ckeditor_uploader',
    'rest_framework',
    'oauth2_provider',
    'corsheaders',
    'drf_yasg',
    'debug_toolbar',
]
OAUTH2_INFO = {
    "client_id": "BEagoNAduJTwUTRdXm6eW5ddLQodgVZP29gE4WFI",
    "client_secret": "TsQ5ZErzaTMdjVzN4eemYi5fYPwYNva2quSt0CB46eAQuLRFcMKbRKeoZlZSU038dlrwuGQ5V0hRbajsfa0FQ3xaNoPnzVijD6PNgRk1U4szp89hqHxaelschimws7tU",
}
OAUTH2_PROVIDER = {
    'OAUTH2_BACKEND_CLASS': 'oauth2_provider.oauth2_backends.JSONOAuthLibCore'
}
REST_FRAMEWORK = {
    # 'DEFAULT_PAGINATION_CLASS':
    #     'rest_framework.pagination.PageNumberPagination',
    # 'PAGE_SIZE': '2',
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'oauth2_provider.contrib.rest_framework.OAuth2Authentication',
    ),
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.AllowAny',
    ]
}

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'debug_toolbar.middleware.DebugToolbarMiddleware',
    'corsheaders.middleware.CorsMiddleware',
]
INTERNAL_IPS = [
    '127.0.0.1'
]

ROOT_URLCONF = 'EBookTickets.urls'
CORS_ORIGIN_ALLOW_ALL = True

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'EBookTickets.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'dbebooktickets',
        'USER': 'root',
        'PASSWORD': '12345678',
        'HOST': ''
    }
}

AUTH_USER_MODEL = 'BookTickets.User'

# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'
MEDIA_ROOT = '%s/BookTickets/static' % BASE_DIR
CKEDITOR_UPLOAD_PATH = '/tickets/'

STATICFILES_DIRS =[ BASE_DIR / 'static']
MEDIA_URL = '/images/'

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# OAUTH2_INFO = {
#     "client_id": "xccqoxXjAG2fE9sA1VrmDcKOmXMseZoWnrllwfBF",
#     "client_serect": "S6ryXk0kwzadT5w8Xml0PTPbwqPNgXkybDhlXpx6K6AqbgzgrFbqY7L8dRqXU78PAH79az0y2nSCvD8ZYE2sYlJaJIcKBg9Ec2t0xEKNY0topKHiUkihVaVF4HWNdppl"
# }
