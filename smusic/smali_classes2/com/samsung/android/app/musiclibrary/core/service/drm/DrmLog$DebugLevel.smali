.class Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmLog$DebugLevel;
.super Ljava/lang/Object;
.source "DrmLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugLevel"
.end annotation


# static fields
.field static final TAG_ANR:Ljava/lang/String; = "(DRM-L) ANR "

.field static final TAG_DEBUG:Ljava/lang/String; = "(DRM-L) "

.field static final TAG_ERROR:Ljava/lang/String; = "(DRM-L) ERROR "


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
