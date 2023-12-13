<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class venta extends Model
{
    use HasFactory;

    protected $table = 'ventas';
    protected $primaryKey ='id';
    protected $fillable = [
        'monto_total',
        'fecha_hora',
        'estado',
        'id_usuario',
        'id_cliente'
    ];
    public $timestamps=true;
}
