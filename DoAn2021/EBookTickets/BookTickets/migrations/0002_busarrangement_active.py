# Generated by Django 3.2.6 on 2021-09-19 11:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('BookTickets', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='busarrangement',
            name='active',
            field=models.BooleanField(default=True),
        ),
    ]
