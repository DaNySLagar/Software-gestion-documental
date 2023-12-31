# Generated by Django 4.2.1 on 2023-06-16 14:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0010_documento'),
    ]

    operations = [
        migrations.CreateModel(
            name='dcomision',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
        migrations.CreateModel(
            name='dinformes',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
        migrations.CreateModel(
            name='djustificaciones',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
        migrations.CreateModel(
            name='dlicenciasREM',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
        migrations.CreateModel(
            name='dlicenciasSINREM',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
        migrations.CreateModel(
            name='dvacacionesPEND',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('numero', models.CharField(max_length=50, verbose_name='Numero')),
                ('personal_procedencia', models.CharField(max_length=50, verbose_name='Personal/Procedencia')),
                ('archivo', models.FileField(null=True, upload_to='documentos/', verbose_name='Documento')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
        migrations.CreateModel(
            name='dvacacionesPROX',
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
