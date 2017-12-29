.class public Lcom/mods/grx/GrxRecientes;
.super Ljava/lang/Object;
.source "GrxRecientes.java"


# static fields
.field public static mGrxError:Ljava/lang/String;

.field public static mGrxError:Z

.field public static mGrxRamColorEtiqueta:I

.field public static mGrxRamColorFondo:I

.field public static mGrxRamColorLibre:I

.field public static mGrxRamColorOcupada:I

.field public static mGrxRamMostrar:I

.field public static mGrxRamRefresco:I

.field public static mGrxRamTamTexto:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mods/grx/GrxRecientes;->mGrxError:Z

    const v1, 0x1

    sput v1, Lcom/mods/grx/GrxRecientes;->mGrxRamMostrar:I

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxRecientes;->mGrxRamColorEtiqueta:I

    sput v1, Lcom/mods/grx/GrxRecientes;->mGrxRamColorOcupada:I

    sput v1, Lcom/mods/grx/GrxRecientes;->mGrxRamColorLibre:I

    const-string v2, "#6033b5e5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxRecientes;->mGrxRamColorFondo:I

    const v1, 0xe

    sput v1, Lcom/mods/grx/GrxRecientes;->mGrxRamTamTexto:I

    const v3, 0x1388

    sput v3, Lcom/mods/grx/GrxRecientes;->mGrxRamRefresco:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static leer_opciones_ram_recientes(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mods/grx/GrxRecientes;->leer_opciones_ram_recientes(Landroid/content/Context;Z)V

    return-void
.end method

.method public static leer_opciones_ram_recientes(Landroid/content/Context;Z)V
    .locals 11

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mods/grx/GrxRecientes;->mGrxError:Z

    const-string v1, ""

    sput-object v1, Lcom/mods/grx/GrxRecientes;->mGrxError:Ljava/lang/String;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    const v3, 0x1

    const-string v2, "b_ram_mostrar"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamMostrar:I

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "b_ram_color_etiquetas"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamColorEtiqueta:I

    const-string v2, "b_ram_color_ocupada"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamColorOcupada:I

    const-string v2, "b_ram_color_libre"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamColorLibre:I

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "b_ram_color_fondo"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamColorFondo:I

    const v3, 0xe

    const-string v2, "b_ram_tam_texto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamTamTexto:I

    const v3, 0x9c4

    const-string v2, "b_ram_refresco"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/mods/grx/GrxRecientes;->mGrxRamRefresco:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mods/grx/GrxRecientes;->mGrxError:Ljava/lang/String;

    const-string v0, "GrxAjustes"

    const-string v1, "Exepci\u00f3n leyendo opciones RECIENTES!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    sput-boolean v4, Lcom/mods/grx/GrxRecientes;->mGrxError:Z

    goto/16 :goto_0
.end method
