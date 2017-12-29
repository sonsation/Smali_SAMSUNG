.class public Lcom/mods/grx/infomem/GrxInfoMem;
.super Landroid/widget/TextView;
.source "GrxInfoMem.java"


# instance fields
.field Eti_Ram:Ljava/lang/String;

.field Eti_Sep:Ljava/lang/String;

.field Eti_Swap:Ljava/lang/String;

.field private activo:I

.field private color_mem_swap_libre:I

.field private color_ocupado:I

.field private handler:Landroid/os/Handler;

.field private memInfoReader:Lcom/android/internal/util/MemInfoReader;

.field modo_debug:Z

.field private modo_mw:Z

.field private ram_total:J

.field runnable:Ljava/lang/Runnable;

.field private swap_total:J

.field private t_refresco:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "RAM  "

    iput-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Ram:Ljava/lang/String;

    const-string v0, " / "

    iput-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Sep:Ljava/lang/String;

    const-string v0, "  -  SWAP  "

    iput-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Swap:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->modo_debug:Z

    const v0, 0x1

    iput v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    iget-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->ram_total:J

    new-instance v0, Lcom/mods/grx/infomem/GrxInfoMem$1;

    invoke-direct {v0, p0}, Lcom/mods/grx/infomem/GrxInfoMem$1;-><init>(Lcom/mods/grx/infomem/GrxInfoMem;)V

    iput-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->runnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->modo_mw:Z

    return-void
.end method

.method private chivato()V
    .locals 3

    iget-boolean v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->modo_debug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mods/grx/infomem/GrxInfoMem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GrxInfoRamSwap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public actualiza_opciones_ram_recientes()V
    .locals 8

    sget v1, Lcom/mods/grx/GrxRecientes;->mGrxRamMostrar:I

    iput v1, p0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    const v0, 0x8

    if-eqz v1, :cond_0

    const v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/mods/grx/infomem/GrxInfoMem;->setVisibility(I)V

    if-eqz v1, :cond_1

    sget v0, Lcom/mods/grx/GrxRecientes;->mGrxRamColorEtiqueta:I

    invoke-virtual {p0, v0}, Lcom/mods/grx/infomem/GrxInfoMem;->setTextColor(I)V

    sget v0, Lcom/mods/grx/GrxRecientes;->mGrxRamColorFondo:I

    invoke-virtual {p0, v0}, Lcom/mods/grx/infomem/GrxInfoMem;->setBackgroundColor(I)V

    sget v0, Lcom/mods/grx/GrxRecientes;->mGrxRamColorOcupada:I

    iput v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->color_ocupado:I

    sget v0, Lcom/mods/grx/GrxRecientes;->mGrxRamColorLibre:I

    iput v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->color_mem_swap_libre:I

    sget v0, Lcom/mods/grx/GrxRecientes;->mGrxRamTamTexto:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/mods/grx/infomem/GrxInfoMem;->setTextSize(F)V

    sget v2, Lcom/mods/grx/GrxRecientes;->mGrxRamRefresco:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/mods/grx/infomem/GrxInfoMem;->t_refresco:J

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mods/grx/infomem/GrxInfoMem;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public leer_mem_info()V
    .locals 18

    const-string v11, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mods/grx/infomem/GrxInfoMem;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->swap_total:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    add-long v8, v14, v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->memInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->ram_total:J

    long-to-float v11, v14

    long-to-float v14, v8

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->ram_total:J

    long-to-float v14, v14

    div-float/2addr v11, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v5, v11, v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->swap_total:J

    long-to-float v11, v14

    long-to-float v14, v12

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->swap_total:J

    long-to-float v14, v14

    div-float/2addr v11, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v5, v11, v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v7

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Ram:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mods/grx/infomem/GrxInfoMem;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " % "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->color_ocupado:I

    invoke-direct {v11, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-interface {v2, v11, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Sep:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Lcom/mods/grx/infomem/GrxInfoMem;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->color_mem_swap_libre:I

    invoke-direct {v11, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v4, v11, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Swap:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " % "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->color_ocupado:I

    invoke-direct {v11, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-interface {v3, v11, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->Eti_Sep:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Lcom/mods/grx/infomem/GrxInfoMem;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->color_mem_swap_libre:I

    invoke-direct {v11, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v10, v11, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/mods/grx/infomem/GrxInfoMem;->append(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/mods/grx/infomem/GrxInfoMem;->chivato()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mods/grx/infomem/GrxInfoMem;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mods/grx/infomem/GrxInfoMem;->runnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mods/grx/infomem/GrxInfoMem;->t_refresco:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public modo_mw(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/mods/grx/infomem/GrxInfoMem;->modo_mw:Z

    iget v1, p0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    if-eqz v1, :cond_1

    const v1, 0x0

    if-eqz p1, :cond_0

    const v1, 0x8

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mods/grx/infomem/GrxInfoMem;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mods/grx/infomem/GrxInfoMem;->leer_mem_info()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    iget v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mods/grx/infomem/GrxInfoMem;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show_ram_info(Z)V
    .locals 2

    iget v0, p0, Lcom/mods/grx/infomem/GrxInfoMem;->activo:I

    if-eqz v0, :cond_1

    const v0, 0x8

    if-eqz p1, :cond_0

    const v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/mods/grx/infomem/GrxInfoMem;->setVisibility(I)V

    :cond_1
    return-void
.end method
