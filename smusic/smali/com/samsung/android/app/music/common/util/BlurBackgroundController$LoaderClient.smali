.class final Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
.super Ljava/lang/Object;
.source "BlurBackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoaderClient"
.end annotation


# instance fields
.field final blurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final uiHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;)V
    .locals 0
    .param p1, "uiHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "blurGenerator"    # Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->uiHandler:Landroid/os/Handler;

    .line 357
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->blurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;-><init>(Landroid/os/Handler;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->release()V

    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->blurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->release()V

    .line 362
    return-void
.end method
