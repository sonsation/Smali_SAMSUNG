.class public Lcom/quramsoft/qrb/ImageBufferData;
.super Ljava/lang/Object;
.source "ImageBufferData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/ImageBufferData$Type;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$quramsoft$qrb$ImageBufferData$Type:[I


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public buffer:Ljava/nio/ByteBuffer;

.field public handle:I

.field public height:I

.field public type:Lcom/quramsoft/qrb/ImageBufferData$Type;

.field public width:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$quramsoft$qrb$ImageBufferData$Type()[I
    .locals 3

    sget-object v0, Lcom/quramsoft/qrb/ImageBufferData;->$SWITCH_TABLE$com$quramsoft$qrb$ImageBufferData$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/quramsoft/qrb/ImageBufferData$Type;->values()[Lcom/quramsoft/qrb/ImageBufferData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/quramsoft/qrb/ImageBufferData$Type;->BITMAP:Lcom/quramsoft/qrb/ImageBufferData$Type;

    invoke-virtual {v1}, Lcom/quramsoft/qrb/ImageBufferData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/quramsoft/qrb/ImageBufferData$Type;->BUFFER:Lcom/quramsoft/qrb/ImageBufferData$Type;

    invoke-virtual {v1}, Lcom/quramsoft/qrb/ImageBufferData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    invoke-virtual {v1}, Lcom/quramsoft/qrb/ImageBufferData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/quramsoft/qrb/ImageBufferData;->$SWITCH_TABLE$com$quramsoft$qrb$ImageBufferData$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/quramsoft/qrb/ImageBufferData$Type;->BITMAP:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    iput v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    iput-object v2, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput p1, p0, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    iput p2, p0, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    iput-object v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    return-void
.end method

.method public constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/quramsoft/qrb/ImageBufferData$Type;->BUFFER:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput p1, p0, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    iput p2, p0, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/quramsoft/qrb/ImageBufferData$Type;->BITMAP:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    iput-object p1, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v2, p0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    return-void

    :cond_0
    iput v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    iput v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    iput-object v2, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/quramsoft/qrb/ImageBufferData;->$SWITCH_TABLE$com$quramsoft$qrb$ImageBufferData$Type()[I

    move-result-object v1

    iget-object v2, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    invoke-virtual {v2}, Lcom/quramsoft/qrb/ImageBufferData$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    if-eqz v1, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isUseBitmap()Z
    .locals 2

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    sget-object v1, Lcom/quramsoft/qrb/ImageBufferData$Type;->BITMAP:Lcom/quramsoft/qrb/ImageBufferData$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseBuffer()Z
    .locals 2

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    sget-object v1, Lcom/quramsoft/qrb/ImageBufferData$Type;->BUFFER:Lcom/quramsoft/qrb/ImageBufferData$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseHandle()Z
    .locals 2

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    sget-object v1, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    invoke-static {}, Lcom/quramsoft/qrb/ImageBufferData;->$SWITCH_TABLE$com$quramsoft$qrb$ImageBufferData$Type()[I

    move-result-object v0

    iget-object v1, p0, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    invoke-virtual {v1}, Lcom/quramsoft/qrb/ImageBufferData$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->recycleNativeBuffer(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
