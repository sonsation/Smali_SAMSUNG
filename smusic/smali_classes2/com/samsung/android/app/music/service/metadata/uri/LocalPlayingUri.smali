.class final Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;
.super Ljava/lang/Object;
.source "LocalPlayingUri.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrmContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

.field private final mFilePath:Ljava/lang/String;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mSourceId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mFilePath:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private checkDrmExpired(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 8
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 67
    const-string v5, "DRM_CONTENT_KEY_SESSION"

    invoke-interface {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Lcom/markany/drm/xsync/DRMSession;

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 69
    check-cast v4, Lcom/markany/drm/xsync/DRMSession;

    .line 70
    .local v4, "session":Lcom/markany/drm/xsync/DRMSession;
    new-instance v2, Lcom/markany/drm/xsync/LicenseData;

    invoke-direct {v2}, Lcom/markany/drm/xsync/LicenseData;-><init>()V

    .line 71
    .local v2, "licenseData":Lcom/markany/drm/xsync/LicenseData;
    invoke-virtual {v4, v2}, Lcom/markany/drm/xsync/DRMSession;->GetLicense(Lcom/markany/drm/xsync/LicenseData;)I

    .line 72
    invoke-virtual {v2}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "contentUid":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v7, 0x0

    .line 74
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "currentUid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mContext:Landroid/content/Context;

    const-string v6, "drm-expired"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    .end local v0    # "contentUid":Ljava/lang/String;
    .end local v1    # "currentUid":Ljava/lang/String;
    .end local v2    # "licenseData":Lcom/markany/drm/xsync/LicenseData;
    .end local v4    # "session":Lcom/markany/drm/xsync/DRMSession;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->reset()V

    .line 106
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mDrmContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "priority"    # I

    .prologue
    .line 42
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v2}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    .line 46
    .local v0, "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mDrmContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 48
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v1

    .line 50
    .local v1, "error":I
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->checkDrmExpired(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->killServer()V

    .line 54
    const-string v2, "drm_error"

    .line 55
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->getErrorUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 63
    .end local v0    # "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v1    # "error":I
    :goto_0
    return-object v2

    .line 57
    .restart local v0    # "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getPlayingUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 62
    .end local v0    # "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mSourceId:Ljava/lang/String;

    .line 63
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mDrmContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mDrmContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->mDrmContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 101
    :cond_0
    return-void
.end method
