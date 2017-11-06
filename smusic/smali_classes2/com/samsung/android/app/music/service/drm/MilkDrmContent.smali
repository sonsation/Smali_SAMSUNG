.class public final Lcom/samsung/android/app/music/service/drm/MilkDrmContent;
.super Ljava/lang/Object;
.source "MilkDrmContent.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
    }
.end annotation


# static fields
.field public static final DRM_CONTENT_KEY_ENCODED_ALBUMART:Ljava/lang/String; = "DRM_CONTENT_KEY_ENCODED_ALBUMART"

.field public static final DRM_CONTENT_KEY_ENCODED_LYRIC:Ljava/lang/String; = "DRM_CONTENT_KEY_ENCODED_LYRIC"

.field public static final DRM_CONTENT_KEY_EXPIRED_TIME:Ljava/lang/String; = "DRM_CONTENT_KEY_EXPIRED_TIME"

.field public static final DRM_CONTENT_KEY_LCODE:Ljava/lang/String; = "DRM_CONTENT_KEY_LCODE"

.field public static final DRM_CONTENT_KEY_META_BUFFER:Ljava/lang/String; = "DRM_CONTENT_KEY_META_BUFFER"

.field public static final DRM_CONTENT_KEY_SESSION:Ljava/lang/String; = "DRM_CONTENT_KEY_SESSION"

.field public static final DRM_CONTENT_KEY_SOURCE_ID:Ljava/lang/String; = "DRM_CONTENT_KEY_SOURCE_ID"

.field public static final DRM_CONTENT_KEY_TRACK_ID:Ljava/lang/String; = "DRM_CONTENT_KEY_TRACK_ID"

.field public static final TAG:Ljava/lang/String; = "MilkDrmContent"


# instance fields
.field private mCustomMeta:Ljava/lang/String;

.field private final mDRMSession:Lcom/markany/drm/xsync/DRMSession;

.field private mDescription:Ljava/lang/String;

.field private final mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

.field private mErrorCode:I

.field private final mFd:I

.field private final mFilePath:Ljava/lang/String;

.field private final mLCode:Ljava/lang/String;

.field private mPlayingUri:Landroid/net/Uri;

.field private final mSourceId:I

.field private final mTrackId:Ljava/lang/String;

.field private final mValidity:J


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mErrorCode:I

    .line 55
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$000(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    .line 56
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$100(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mTrackId:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$200(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mFd:I

    .line 58
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$300(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mFilePath:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$400(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mPlayingUri:Landroid/net/Uri;

    .line 60
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$500(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mSourceId:I

    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$600(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mLCode:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$700(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mValidity:J

    .line 63
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$800(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mErrorCode:I

    .line 64
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$900(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mCustomMeta:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->access$1000(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Lcom/markany/drm/xsync/DRMSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDRMSession:Lcom/markany/drm/xsync/DRMSession;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;Lcom/samsung/android/app/music/service/drm/MilkDrmContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;-><init>(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mErrorCode:I

    return v0
.end method

.method public getFd()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mFd:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :sswitch_0
    const-string v1, "DRM_CONTENT_KEY_SOURCE_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "DRM_CONTENT_KEY_EXPIRED_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mSourceId:I

    int-to-long v0, v0

    .line 84
    :goto_1
    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mValidity:J

    goto :goto_1

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        -0x57f7c853 -> :sswitch_1
        0x670c8599 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLyrics()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_0
    const-string v1, "DRM_CONTENT_KEY_SESSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDRMSession:Lcom/markany/drm/xsync/DRMSession;

    return-object v0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch -0x8ce9530
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mPlayingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :sswitch_0
    const-string v1, "DRM_CONTENT_KEY_LCODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "DRM_CONTENT_KEY_META_BUFFER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mLCode:Ljava/lang/String;

    .line 98
    :goto_1
    return-object v0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mTrackId:Ljava/lang/String;

    goto :goto_1

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mCustomMeta:Ljava/lang/String;

    goto :goto_1

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1909706b -> :sswitch_1
        0x17103714 -> :sswitch_2
        0x2ce34b13 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MilkDrmContent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playing uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mPlayingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mSourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lcode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mLCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expired : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mValidity:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDescription:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;->mDescription:Ljava/lang/String;

    return-object v0
.end method
