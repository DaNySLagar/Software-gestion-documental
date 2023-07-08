# Generated by Django 4.2.2 on 2023-06-25 02:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0018_dcomision_registrado_alter_dcomision_mes_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='djustificaciones',
            name='personal_procedencia',
        ),
        migrations.RemoveField(
            model_name='djustificaciones',
            name='titulo',
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='fecha',
            field=models.DateField(default=None, verbose_name='Fecha de Recepcion'),
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='mes',
            field=models.CharField(choices=[('Enero', 'Enero'), ('Febrero', 'Febrero'), ('Marzo', 'Marzo'), ('Abril', 'Abril'), ('Mayo', 'Mayo'), ('Junio', 'Junio'), ('Julio', 'Julio'), ('Agosto', 'Agosto'), ('Septiembre', 'Septiembre'), ('Octubre', 'Octubre'), ('Noviembre', 'Noviembre'), ('Diciembre', 'Diciembre')], default=1, max_length=20, verbose_name='Mes Correspondiente'),
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='personal',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='jus_personal', to='libreria.personal', verbose_name='personal'),
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='procedencia',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='jus_procedencia', to='libreria.unidadcip', verbose_name='procedencia'),
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='registrado',
            field=models.BooleanField(default=False, verbose_name='¿Registrado?'),
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='tipo_cargo',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='jus_usuarios', to='libreria.cargo', verbose_name='Cargo'),
        ),
        migrations.AddField(
            model_name='djustificaciones',
            name='tipo_documento',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='jus_documentos', to='libreria.tdocumento', verbose_name='Tipo de documento'),
        ),
        migrations.AlterField(
            model_name='djustificaciones',
            name='archivo',
            field=models.FileField(default=None, upload_to='documentos/', verbose_name='Documento'),
        ),
        migrations.AlterField(
            model_name='djustificaciones',
            name='descripcion',
            field=models.TextField(default=None, verbose_name='Descripcion'),
        ),
        migrations.AlterField(
            model_name='djustificaciones',
            name='numero',
            field=models.CharField(default=None, max_length=50, verbose_name='Numero'),
        ),
    ]