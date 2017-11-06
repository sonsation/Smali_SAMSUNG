.class Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;
.super Ljava/lang/Object;
.source "LocalDrmServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedContent"
.end annotation


# instance fields
.field final content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

.field final time:J


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 2
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->time:J

    .line 357
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 358
    return-void
.end method

.method static obtain(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;
    .locals 1
    .param p0, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 352
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-object v0
.end method
