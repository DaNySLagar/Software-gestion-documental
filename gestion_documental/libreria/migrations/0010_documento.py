# Generated by Django 4.2.1 on 2023-06-12 17:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0009_alter_login_tipo_cargo'),
    ]

    operations = [
        migrations.CreateModel(
            name='Documento',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
    ]
