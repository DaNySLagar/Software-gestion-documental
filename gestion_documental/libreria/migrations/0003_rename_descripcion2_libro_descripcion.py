# Generated by Django 4.2.1 on 2023-06-03 17:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0002_rename_descripcion_libro_descripcion2'),
    ]

    operations = [
        migrations.RenameField(
            model_name='libro',
            old_name='descripcion2',
            new_name='descripcion',
        ),
    ]