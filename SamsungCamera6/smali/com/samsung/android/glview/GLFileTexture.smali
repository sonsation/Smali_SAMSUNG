.class public Lcom/samsung/android/glview/GLFileTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLFileTexture.java"


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private mSampleSize:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLFileTexture;->mSampleSize:I

    iput-object p6, p0, Lcom/samsung/android/glview/GLFileTexture;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLFileTexture;->mSampleSize:I

    iput-object p4, p0, Lcom/samsung/android/glview/GLFileTexture;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected declared-synchronized loadBitmap()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v1, p0, Lcom/samsung/android/glview/GLFileTexture;->mSampleSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/samsung/android/glview/GLFileTexture;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSampleSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLFileTexture;->mSampleSize:I

    return-void
.end method
