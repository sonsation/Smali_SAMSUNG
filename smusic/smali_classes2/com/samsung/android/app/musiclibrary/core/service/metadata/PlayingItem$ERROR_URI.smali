.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI;
.super Ljava/lang/Object;
.source "PlayingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERROR_URI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI$Def;
    }
.end annotation


# static fields
.field public static final AUTH_CACHE_ERROR:Ljava/lang/String; = "cache_error"

.field public static final AUTH_DRM_ERROR:Ljava/lang/String; = "drm_error"

.field public static final AUTH_PERMISSION_ERROR:Ljava/lang/String; = "permission_error"

.field public static final AUTH_PLAYING_QUALITY:Ljava/lang/String; = "playing_quality"

.field public static final AUTH_STREAMING_SERVER_ERROR:Ljava/lang/String; = "streaming_server_error"

.field public static final SCHEME:Ljava/lang/String; = "error"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
