.class public Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;
.super Ljava/lang/Object;
.source "SyncMdrmContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_ERRORS_FULL_SYNC:[I

.field private static final ACCEPTABLE_ERROR_DOWNLOAD_LOGIN_SYNC:[I

.field private static final BULK_UPDATE_URI:Landroid/net/Uri;

.field private static final DATA_COL_INDEX:I = 0x1

.field private static final DATE_ADDED_COL_INDEX:I = 0x3

.field private static final DATE_MODIFIED_COL_INDEX:I = 0x2

.field private static final DEBUG:Z = false

.field private static final ID_COL_INDEX:I = 0x0

.field private static final MDRM_BIT_DEPTH:I = 0x10

.field private static final MDRM_CONTENTS_SYNC_SELECTION:Ljava/lang/String; = "_data LIKE \'%.mdrm\'"

.field private static final MEDIA_PROVIDER_MDRM_PROJECTION:[Ljava/lang/String;

.field private static final MIME_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncMdrmContent-MilkDrm"

.field private static sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    .line 56
    const-string v0, "content://com.sec.android.app.music/sync/local/update"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "MP3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "MPGA"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "M4A"

    const-string v2, "audio/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "WAV"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "AMR"

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "AWB"

    const-string v2, "audio/amr-wb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "WMA"

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "OGG"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "AAC"

    const-string v2, "audio/aac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "MKA"

    const-string v2, "audio/x-matroska"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "FLAC"

    const-string v2, "audio/flac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "MAMP3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MIME_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "MDRM"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const-string v1, "date_modified"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "date_added"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MEDIA_PROVIDER_MDRM_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->ACCEPTABLE_ERRORS_FULL_SYNC:[I

    .line 130
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->ACCEPTABLE_ERROR_DOWNLOAD_LOGIN_SYNC:[I

    return-void

    .line 122
    :array_0
    .array-data 4
        -0x17
        -0x27
        -0xc
        -0x11
    .end array-data

    .line 130
    :array_1
    .array-data 4
        -0x27
        -0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendExtraConditionForDeleteMdrmContentsWhileSyncLocalContents(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 348
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _data NOT LIKE \'%.mdrm\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    :cond_0
    return-object p1
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->unacquire()V

    .line 149
    :cond_0
    return-void
.end method

.method public static forceToSyncMdrmContents(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-nez v3, :cond_0

    .line 184
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v2, "drm_type=2"

    .line 176
    .local v2, "where":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "date_modified"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "drm_type=2"

    const/4 v5, 0x0

    .line 180
    invoke-static {p0, v3, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "updated":I
    const-string v3, "SyncMdrmContent-MilkDrm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceToSyncMdrmContents mdrm counts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->ACCEPTABLE_ERROR_DOWNLOAD_LOGIN_SYNC:[I

    invoke-static {p0, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->syncMdrmContents(Landroid/content/Context;[I)V

    goto :goto_0
.end method

.method public static getMilkDrmServerManager(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-nez v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->init(Landroid/content/Context;)V

    .line 155
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    return-object v0
.end method

.method private static getTrackId(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverManager"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 538
    :goto_0
    return-object v1

    .line 531
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    .line 532
    .local v0, "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    const-string v2, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "trackId":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    goto :goto_0
.end method

.method public static getTrackId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "trackId":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getTrackId(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    .line 520
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getValidity(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverManager"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    const-wide/16 v2, -0x1

    .line 513
    :goto_0
    return-wide v2

    .line 506
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    .line 507
    .local v0, "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    const-string v1, "DRM_CONTENT_KEY_EXPIRED_TIME"

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 508
    .local v2, "validity":J
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    goto :goto_0
.end method

.method public static getValidity(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 493
    const-wide/16 v0, -0x1

    .line 495
    .local v0, "validity":J
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    invoke-static {p0, v2, p1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getValidity(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 499
    :goto_0
    return-wide v0

    .line 496
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "SyncMdrmContent-MilkDrm"

    const-string v1, "init is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->acquire(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    .line 143
    :cond_0
    return-void
.end method

.method private static isAcceptableError([II)Z
    .locals 4
    .param p0, "acceptableErrors"    # [I
    .param p1, "error"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 163
    .local v0, "acceptable":I
    if-ne v0, p1, :cond_2

    .line 164
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static makeFileList(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "musicProviderCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    .local p2, "addEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    .local p3, "updateEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    const-string v2, "external"

    .line 401
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MEDIA_PROVIDER_MDRM_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data LIKE \'%.mdrm\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 400
    .local v14, "c":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 403
    if-nez v14, :cond_2

    .line 442
    if-eqz v14, :cond_0

    if-eqz v21, :cond_1

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 407
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 409
    .local v5, "sourceId":J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "path":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 411
    .local v8, "dateModified":J
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 413
    .local v10, "dateAdded":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;

    .line 414
    .local v19, "entry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    if-nez v19, :cond_4

    .line 415
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;

    const-wide/16 v3, -0x1

    sget-object v12, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    .line 416
    move-object/from16 v0, p0

    invoke-static {v0, v12, v7}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getValidity(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;-><init>(JJLjava/lang/String;JJJ)V

    .line 415
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 400
    .end local v5    # "sourceId":J
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "dateModified":J
    .end local v10    # "dateAdded":J
    .end local v19    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :catchall_0
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    :goto_2
    if-eqz v14, :cond_3

    if-eqz v3, :cond_9

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    throw v2

    .line 418
    .restart local v5    # "sourceId":J
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "dateModified":J
    .restart local v10    # "dateAdded":J
    .restart local v19    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    :cond_4
    :try_start_4
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mLastModified:J

    sub-long v16, v8, v2

    .line 419
    .local v16, "delta":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_2

    .line 420
    move-object/from16 v0, v19

    iput-wide v5, v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mSourceId:J

    .line 421
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getValidity(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mValidity:J

    .line 422
    move-object/from16 v0, v19

    iput-wide v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mLastModified:J

    .line 423
    move-object/from16 v0, v19

    iput-wide v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mDateAdded:J

    .line 424
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 442
    .end local v5    # "sourceId":J
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "dateModified":J
    .end local v10    # "dateAdded":J
    .end local v16    # "delta":J
    .end local v19    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    :catchall_1
    move-exception v2

    move-object/from16 v3, v21

    goto :goto_2

    .line 428
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    .line 429
    .local v20, "mismatched":I
    if-lez v20, :cond_7

    .line 430
    const-string v2, "SyncMdrmContent-MilkDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch with media provider but it\'s valid content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v15, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;

    const/16 v2, 0x64

    const-string v3, "_id"

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 434
    .local v15, "deleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;

    .line 438
    .local v18, "e":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mRowId:J

    invoke-virtual {v15, v3, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->delete(Landroid/net/Uri;J)V

    goto :goto_4

    .line 440
    .end local v18    # "e":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    :cond_6
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->flush(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 442
    .end local v15    # "deleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    :cond_7
    if-eqz v14, :cond_0

    if-eqz v21, :cond_8

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v20    # "mismatched":I
    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method private static makeMdrmMetaContentValue(Landroid/content/Context;Ljava/lang/String;[I)Landroid/content/ContentValues;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "acceptableErrors"    # [I

    .prologue
    .line 546
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v22, "values":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 549
    :try_start_0
    const-string v24, "SyncMdrmContent-MilkDrm"

    const-string v25, "makeMdrmMetaContentValue : mdrmContent start!"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v24, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-nez v24, :cond_0

    .line 551
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->init(Landroid/content/Context;)V

    .line 553
    :cond_0
    sget-object v24, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v17

    .line 554
    .local v17, "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    invoke-interface/range {v17 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v11

    .line 555
    .local v11, "error":I
    if-gez v11, :cond_1

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->isAcceptableError([II)Z

    move-result v24

    if-nez v24, :cond_1

    .line 559
    const/16 v24, 0x0

    .line 637
    .end local v11    # "error":I
    .end local v17    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :goto_0
    return-object v24

    .line 561
    .restart local v11    # "error":I
    .restart local v17    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :cond_1
    const-string v24, "DRM_CONTENT_KEY_TRACK_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 562
    .local v20, "trackId":Ljava/lang/String;
    const-string v24, "SyncMdrmContent-MilkDrm"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "makeMdrmMetaContentValue : mdrmContent "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v24, "SyncMdrmContent-MilkDrm"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "makeMdrmMetaContentValue : mdrmContent trackId : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v24, "DRM_CONTENT_KEY_META_BUFFER"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 565
    .local v18, "meta":Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 566
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 573
    :cond_3
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 574
    .local v15, "jsonObjectRoot":Lorg/json/JSONObject;
    new-instance v14, Lorg/json/JSONObject;

    const-string v24, "SoribadaApiResponse"

    .line 575
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 577
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v24, "tkey"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 578
    .local v16, "kId":Ljava/lang/String;
    const-string/jumbo v24, "tpe1"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "artist":Ljava/lang/String;
    const-string/jumbo v24, "tpe2"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "albumArtist":Ljava/lang/String;
    const-string/jumbo v24, "tit2"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 581
    .local v19, "title":Ljava/lang/String;
    const-string/jumbo v24, "tyer"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 582
    .local v23, "year":Ljava/lang/String;
    const-string/jumbo v24, "trck"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 583
    .local v21, "trackNum":Ljava/lang/String;
    const-string/jumbo v24, "talb"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "albumName":Ljava/lang/String;
    const-string/jumbo v24, "tlen"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 586
    .local v7, "duration":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v24, "tcon"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    .line 591
    .local v13, "genreName":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string/jumbo v24, "uslt"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v10

    .line 596
    .local v10, "encodedLyric":Ljava/lang/String;
    :goto_2
    :try_start_3
    const-string v24, "apic"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    .line 600
    .local v9, "encodedAlbumart":Ljava/lang/String;
    :goto_3
    :try_start_4
    const-string v24, "drm_type"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v24, "album_art_location"

    sget-object v25, Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;->MILK_ALBUM_ART:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string/jumbo v24, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v24, "album"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v24, "artist"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v24, "genre_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v24, "album_artist"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v24, "track"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v24, "duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string/jumbo v24, "sampling_rate"

    const v25, 0xac44

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string v24, "mime_type"

    const-string v25, "audio/mpeg"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v24, "bit_depth"

    const/16 v25, 0x10

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string/jumbo v24, "year"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v24, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v24, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v24, "DRM_CONTENT_KEY_TRACK_ID"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v12, "file":Ljava/io/File;
    const-string v24, "_data"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v24, "_size"

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 621
    const-string v24, "date_modified"

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    const-string v24, "cp_attrs"

    const v25, 0x80001

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    sget-object v24, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v4    # "albumArtist":Ljava/lang/String;
    .end local v5    # "albumName":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v7    # "duration":Ljava/lang/String;
    .end local v9    # "encodedAlbumart":Ljava/lang/String;
    .end local v10    # "encodedLyric":Ljava/lang/String;
    .end local v11    # "error":I
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "genreName":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "jsonObjectRoot":Lorg/json/JSONObject;
    .end local v16    # "kId":Ljava/lang/String;
    .end local v17    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v18    # "meta":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "trackId":Ljava/lang/String;
    .end local v21    # "trackNum":Ljava/lang/String;
    .end local v23    # "year":Ljava/lang/String;
    :cond_4
    :goto_4
    move-object/from16 v24, v22

    .line 637
    goto/16 :goto_0

    .line 587
    .restart local v4    # "albumArtist":Ljava/lang/String;
    .restart local v5    # "albumName":Ljava/lang/String;
    .restart local v6    # "artist":Ljava/lang/String;
    .restart local v7    # "duration":Ljava/lang/String;
    .restart local v11    # "error":I
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "jsonObjectRoot":Lorg/json/JSONObject;
    .restart local v16    # "kId":Ljava/lang/String;
    .restart local v17    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .restart local v18    # "meta":Ljava/lang/String;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v20    # "trackId":Ljava/lang/String;
    .restart local v21    # "trackNum":Ljava/lang/String;
    .restart local v23    # "year":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 588
    .local v8, "e":Lorg/json/JSONException;
    const/4 v13, 0x0

    .restart local v13    # "genreName":Ljava/lang/String;
    goto/16 :goto_1

    .line 592
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v8

    .line 593
    .restart local v8    # "e":Lorg/json/JSONException;
    const/4 v10, 0x0

    .restart local v10    # "encodedLyric":Ljava/lang/String;
    goto/16 :goto_2

    .line 597
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v8

    .line 598
    .restart local v8    # "e":Lorg/json/JSONException;
    const/4 v9, 0x0

    .restart local v9    # "encodedAlbumart":Ljava/lang/String;
    goto/16 :goto_3

    .line 628
    .end local v4    # "albumArtist":Ljava/lang/String;
    .end local v5    # "albumName":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v7    # "duration":Ljava/lang/String;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "encodedAlbumart":Ljava/lang/String;
    .end local v10    # "encodedLyric":Ljava/lang/String;
    .end local v11    # "error":I
    .end local v13    # "genreName":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "jsonObjectRoot":Lorg/json/JSONObject;
    .end local v16    # "kId":Ljava/lang/String;
    .end local v17    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v18    # "meta":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "trackId":Ljava/lang/String;
    .end local v21    # "trackNum":Ljava/lang/String;
    .end local v23    # "year":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 630
    .local v8, "e":Ljava/lang/Exception;
    const-string v24, "SyncMdrmContent-MilkDrm"

    const-string v25, "Sync failed (Mdrm content)! "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    const/16 v22, 0x0

    goto :goto_4
.end method

.method public static parsingMdrmContent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uewUri"    # Landroid/net/Uri;

    .prologue
    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v1, "listValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-object v9, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->ACCEPTABLE_ERROR_DOWNLOAD_LOGIN_SYNC:[I

    .line 451
    invoke-static {p0, p1, v9}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->makeMdrmMetaContentValue(Landroid/content/Context;Ljava/lang/String;[I)Landroid/content/ContentValues;

    move-result-object v8

    .line 452
    .local v8, "values":Landroid/content/ContentValues;
    if-nez v8, :cond_0

    .line 453
    const/4 v9, 0x0

    .line 489
    :goto_0
    return v9

    .line 456
    :cond_0
    if-eqz p2, :cond_1

    .line 457
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 458
    .local v4, "sourceId":J
    const-string/jumbo v9, "source_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    .end local v4    # "sourceId":J
    :cond_1
    const-string v9, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    const-string v9, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "trackId":Ljava/lang/String;
    const-string/jumbo v9, "track_id"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v9, "validity"

    sget-object v10, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    invoke-static {p0, v10, p1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getValidity(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    const-string v9, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 465
    const-string v9, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 466
    const-string v9, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 468
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 471
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/content/ContentValues;

    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    .line 470
    invoke-static {p0, v10, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 473
    .local v0, "count":I
    const-string v9, "SyncMdrmContent-MilkDrm"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsingMdrmContent : inserted count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-gtz v0, :cond_2

    .line 477
    new-instance v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const-string/jumbo v9, "track_id"

    invoke-direct {v2, v9, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .local v2, "queryArgs":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v7, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "validity"

    const-string/jumbo v10, "validity"

    .line 481
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 480
    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    iget-object v9, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    iget-object v10, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    iget-object v11, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 484
    invoke-static {p0, v9, v7, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 487
    .local v6, "updateCnt":I
    const-string v9, "SyncMdrmContent-MilkDrm"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsingMdrmContent : update count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v2    # "queryArgs":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;
    .end local v6    # "updateCnt":I
    .end local v7    # "updateValues":Landroid/content/ContentValues;
    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private static preScan(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "mFileCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->MEDIA_PROVIDER_MDRM_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data LIKE \'%.mdrm\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 361
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 360
    .local v15, "c":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 363
    if-nez v15, :cond_2

    .line 394
    if-eqz v15, :cond_0

    if-eqz v18, :cond_1

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 367
    :cond_2
    :try_start_1
    new-instance v14, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;

    const/16 v2, 0x64

    const-string v5, "_id"

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 369
    .local v14, "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 371
    .local v3, "id":J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "path":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 373
    .local v8, "dateModified":J
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 375
    .local v10, "dateAdded":J
    const-string v2, "SyncMdrmContent-MilkDrm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pre-scanning music provider mdrm path) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    const/16 v16, 0x0

    .line 378
    .local v16, "exists":Z
    :try_start_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v16

    .line 383
    .end local v17    # "file":Ljava/io/File;
    :goto_2
    if-nez v16, :cond_4

    .line 384
    :try_start_3
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 385
    invoke-virtual {v14, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->delete(Landroid/net/Uri;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 360
    .end local v3    # "id":J
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "dateModified":J
    .end local v10    # "dateAdded":J
    .end local v14    # "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    .end local v16    # "exists":Z
    :catch_1
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    :catchall_0
    move-exception v5

    move-object/from16 v19, v5

    move-object v5, v2

    move-object/from16 v2, v19

    :goto_3
    if-eqz v15, :cond_3

    if-eqz v5, :cond_7

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v2

    .line 387
    .restart local v3    # "id":J
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "dateModified":J
    .restart local v10    # "dateAdded":J
    .restart local v14    # "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    .restart local v16    # "exists":Z
    :cond_4
    :try_start_6
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;

    const-wide/16 v5, -0x1

    const-wide/16 v12, -0x1

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;-><init>(JJLjava/lang/String;JJJ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 394
    .end local v3    # "id":J
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "dateModified":J
    .end local v10    # "dateAdded":J
    .end local v14    # "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    .end local v16    # "exists":Z
    :catchall_1
    move-exception v2

    move-object/from16 v5, v18

    goto :goto_3

    .line 392
    .restart local v14    # "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    :cond_5
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->flush(Landroid/net/Uri;)V

    .line 393
    const-string v2, "SyncMdrmContent-MilkDrm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pre-scanning music provider (valid mdrm count) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 394
    if-eqz v15, :cond_0

    if-eqz v18, :cond_6

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14    # "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 380
    .restart local v3    # "id":J
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "dateModified":J
    .restart local v10    # "dateAdded":J
    .restart local v14    # "audioMetaTableDeleter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
    .restart local v16    # "exists":Z
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static syncMdrmContents(Landroid/content/Context;[I)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acceptableErrors"    # [I

    .prologue
    .line 187
    sget-object v22, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->sServerManager:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-nez v22, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v13, "musicProviderFileCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->preScan(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v4, "addEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v16, "updateEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v13, v4, v1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->makeFileList(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 199
    .local v5, "addSize":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 200
    .local v17, "updateSize":I
    if-gtz v5, :cond_2

    if-lez v17, :cond_4

    :cond_2
    const/4 v14, 0x1

    .line 202
    .local v14, "needSync":Z
    :goto_1
    const-string v22, "SyncMdrmContent-MilkDrm"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "syncMdrmContents : addSize "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", updateSize : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v14, :cond_0

    .line 208
    if-lez v5, :cond_7

    .line 209
    :try_start_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v21, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v10, "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_6

    .line 212
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v11, "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    const/4 v8, 0x0

    .line 219
    .local v8, "exists":Z
    :try_start_1
    iget-object v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v22, v0

    sget v23, Landroid/system/OsConstants;->F_OK:I

    invoke-static/range {v22 .. v23}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 222
    :goto_3
    if-nez v8, :cond_5

    .line 211
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 200
    .end local v8    # "exists":Z
    .end local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    .end local v12    # "i":I
    .end local v14    # "needSync":Z
    .end local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 226
    .restart local v8    # "exists":Z
    .restart local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v11    # "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    .restart local v12    # "i":I
    .restart local v14    # "needSync":Z
    .restart local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    :try_start_2
    iget-object v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->makeMdrmMetaContentValue(Landroid/content/Context;Ljava/lang/String;[I)Landroid/content/ContentValues;

    move-result-object v20

    .line 228
    .local v20, "value":Landroid/content/ContentValues;
    if-eqz v20, :cond_3

    .line 232
    const-string/jumbo v22, "source_id"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mSourceId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v22, "date_modified"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mLastModified:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v22, "date_added"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mDateAdded:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string/jumbo v22, "validity"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mValidity:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v22, "DRM_CONTENT_KEY_TRACK_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 237
    .local v15, "trackId":Ljava/lang/String;
    const-string/jumbo v22, "track_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 239
    .local v9, "extra":Landroid/content/ContentValues;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v22, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 241
    const-string v22, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 242
    const-string v22, "DRM_CONTENT_KEY_TRACK_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v22, "SyncMdrmContent-MilkDrm"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "syncMdrmContents : value "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 308
    .end local v8    # "exists":Z
    .end local v9    # "extra":Landroid/content/ContentValues;
    .end local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    .end local v12    # "i":I
    .end local v15    # "trackId":Ljava/lang/String;
    .end local v20    # "value":Landroid/content/ContentValues;
    .end local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v7

    .line 309
    .local v7, "e":Ljava/lang/Exception;
    const-string v22, "SyncMdrmContent-MilkDrm"

    const-string/jumbo v23, "syncMdrmContents : Exception!"

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 246
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "i":I
    .restart local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    :try_start_3
    sget-object v23, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 248
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/content/ContentValues;

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    .line 249
    .local v6, "added":I
    const-string v22, "SyncMdrmContent-MilkDrm"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "syncMdrmContents : added count "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->updateMetadataViaServerApi(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 254
    .end local v6    # "added":I
    .end local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "i":I
    .end local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_7
    if-lez v17, :cond_b

    .line 255
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .restart local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .restart local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_a

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 265
    .restart local v11    # "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    const/4 v8, 0x0

    .line 267
    .restart local v8    # "exists":Z
    :try_start_4
    iget-object v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v22, v0

    sget v23, Landroid/system/OsConstants;->F_OK:I

    invoke-static/range {v22 .. v23}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v8

    .line 270
    :goto_6
    if-nez v8, :cond_9

    .line 257
    :cond_8
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 274
    :cond_9
    :try_start_5
    iget-object v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->makeMdrmMetaContentValue(Landroid/content/Context;Ljava/lang/String;[I)Landroid/content/ContentValues;

    move-result-object v20

    .line 276
    .restart local v20    # "value":Landroid/content/ContentValues;
    if-eqz v20, :cond_8

    .line 280
    const-string v22, "_id"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mRowId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string/jumbo v22, "source_id"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mSourceId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string v22, "date_modified"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mLastModified:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v22, "date_added"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mDateAdded:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const-string/jumbo v22, "validity"

    iget-wide v0, v11, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mValidity:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string v22, "DRM_CONTENT_KEY_TRACK_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 286
    .restart local v15    # "trackId":Ljava/lang/String;
    const-string/jumbo v22, "track_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v9, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 288
    .restart local v9    # "extra":Landroid/content/ContentValues;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v22, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 290
    const-string v22, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 291
    const-string v22, "DRM_CONTENT_KEY_TRACK_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v22, "SyncMdrmContent-MilkDrm"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "syncMdrmContents : value "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 295
    .end local v8    # "exists":Z
    .end local v9    # "extra":Landroid/content/ContentValues;
    .end local v11    # "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    .end local v15    # "trackId":Ljava/lang/String;
    .end local v20    # "value":Landroid/content/ContentValues;
    :cond_a
    sget-object v22, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 296
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v22

    const-string v23, "match"

    const-string v24, "mdrm"

    invoke-virtual/range {v22 .. v24}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 298
    .local v19, "uri":Landroid/net/Uri;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/content/ContentValues;

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v18

    .line 299
    .local v18, "updated":I
    const-string v22, "SyncMdrmContent-MilkDrm"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "syncMdrmContents : request count : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", updated count "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "i":I
    .end local v18    # "updated":I
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_b
    sget-boolean v22, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v22, :cond_0

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "content://com.sec.android.app.music/"

    .line 305
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const-string v24, "milk_update_audio_playlists_map"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 268
    .restart local v8    # "exists":Z
    .restart local v10    # "extraValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v11    # "fileEntry":Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
    .restart local v12    # "i":I
    .restart local v21    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v22

    goto/16 :goto_6

    .line 220
    :catch_2
    move-exception v22

    goto/16 :goto_3
.end method

.method private static updateMetadataViaServerApi(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 317
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "DRM_CONTENT_KEY_TRACK_ID"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "trackId":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "encodedAlbumart":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v2, "source_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 321
    .local v4, "sourceId":I
    const-string v1, "SyncMdrmContent-MilkDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMetadataViaServerApi : sourceId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    .line 323
    const-string v1, "SyncMdrmContent-MilkDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMetadataViaServerApi : trackId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x0

    invoke-static {v8, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 325
    .local v9, "encodedBitmap":[B
    const/4 v1, 0x0

    array-length v2, v9

    .line 326
    invoke-static {v9, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 327
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    int-to-long v2, v4

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->generatorFileName(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v12

    .line 328
    .local v12, "values":Landroid/content/ContentValues;
    if-eqz v7, :cond_2

    .line 329
    invoke-static {p0, v12, v7}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->writeAlbumArt(Landroid/content/Context;Landroid/content/ContentValues;Landroid/graphics/Bitmap;)Z

    .line 336
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "encodedBitmap":[B
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "title":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    new-instance v0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;-><init>(Landroid/content/Context;IIILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 340
    .local v0, "getMetaForDrm":Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->doWork()V

    .line 316
    .end local v0    # "getMetaForDrm":Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 331
    .end local v11    # "title":Ljava/lang/String;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "encodedBitmap":[B
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v1, "SyncMdrmContent-MilkDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHttpResponse >> bitmap is null. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    .end local v4    # "sourceId":I
    .end local v5    # "trackId":Ljava/lang/String;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "encodedAlbumart":Ljava/lang/String;
    .end local v9    # "encodedBitmap":[B
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void
.end method
