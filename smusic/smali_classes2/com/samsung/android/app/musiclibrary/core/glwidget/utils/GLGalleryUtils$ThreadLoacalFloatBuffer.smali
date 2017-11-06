.class Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;
.super Ljava/lang/ThreadLocal;
.source "GLGalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLoacalFloatBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[F>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->initialValue()[F

    move-result-object v0

    return-object v0
.end method

.method public initialValue()[F
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [F

    return-object v0
.end method
