# Generated by Django 4.2.1 on 2023-06-03 17:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='libro',
            old_name='descripcion',
            new_name='descripcion2',
        ),
    ]