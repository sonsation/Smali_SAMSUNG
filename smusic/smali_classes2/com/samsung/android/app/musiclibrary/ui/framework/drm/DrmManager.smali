.class public final Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupString;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DRM2_COUNT:I

.field private static final DRM2_DATETIME:I

.field private static final DRM2_INTERVAL:I

.field private static final DRM2_TIMED_COUNT:I

.field private static final DRM2_UNLIMITED:I

.field private static final DRM_LICENSE_STATE_COUNT:I

.field private static final DRM_LICENSE_STATE_COUNT_FROM:I

.field private static final DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

.field private static final DRM_LICENSE_STATE_COUNT_UNTIL:I

.field private static final DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

.field private static final DRM_LICENSE_STATE_FORCE_SYNC:I

.field private static final DRM_LICENSE_STATE_FROM:I

.field private static final DRM_LICENSE_STATE_FROM_UNTIL:I

.field private static final DRM_LICENSE_STATE_NORIGHT:I

.field private static final DRM_LICENSE_STATE_UNLIM:I

.field private static final DRM_LICENSE_STATE_UNTIL:I

.field private static final DRM_OPTION_RINGTONE:Ljava/lang/String; = "bRingtone"

.field private static final DRM_OPTION_SHARE:Ljava/lang/String; = "bSendAs"

.field private static final DRM_PATH:Ljava/lang/String;

.field private static final DRM_TYPE_OMA:I = 0x1

.field private static final DRM_TYPE_PLAYREADY:I = 0x2

.field private static final DRM_TYPE_UNKNOWN:I = 0x0

.field private static final FLAG_SUPPORT_OMA_FL_ONLY:Z

.field public static final INFO_COUNT:Ljava/lang/String; = "count"

.field public static final INFO_PATH:Ljava/lang/String; = "path"

.field private static final INFO_STATUS:Ljava/lang/String;

.field public static final INFO_TEXT1:Ljava/lang/String; = "text1"

.field public static final INFO_TEXT2:Ljava/lang/String; = "text2"

.field public static final INFO_TYPE:Ljava/lang/String; = "type"

.field public static final INFO_URL:Ljava/lang/String; = "url"

.field private static final LICENSE_CATEGORY_COLUMN:Ljava/lang/String;

.field private static final LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

.field private static final OMA_PLUGIN_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field private static final OMA_SD:I = 0x3

.field private static final OMA_SSD:I = 0x2

.field private static final OMA_TYPE:Ljava/lang/String; = "type"

.field private static final PR_PLUGIN_MIME:Ljava/lang/String; = "audio/vnd.ms-playready.media.pya"

.field private static final TAG:Ljava/lang/String; = "MusicDrm"

.field private static final TYPE_GET_DRMFILE_INFO:I

.field private static final TYPE_GET_OPTION_MENU:I

.field private static final UNDEFINED:I = -0x1

.field static final UNLIMITED:Ljava/lang/String; = "unlimited"

.field private static final WARNING_LEVEL:I = 0x2

.field private static sDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;


# instance fields
.field private mAcquireTry:I

.field private mClient:Landroid/drm/DrmManagerClient;

.field private final mContext:Landroid/content/Context;

.field private final mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private final mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnPlayReadyListener:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->DRM_PATH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_PATH:Ljava/lang/String;

    .line 148
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_DRMFILE_INFO:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->TYPE_GET_DRMFILE_INFO:I

    .line 150
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_OPTION_MENU:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->TYPE_GET_OPTION_MENU:I

    .line 156
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->STATUS:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->INFO_STATUS:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_CATEGORY:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->LICENSE_CATEGORY_COLUMN:Ljava/lang/String;

    .line 173
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_NORIGHT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_NORIGHT:I

    .line 176
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNLIM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_UNLIM:I

    .line 179
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT:I

    .line 182
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_FROM:I

    .line 185
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_UNTIL:I

    .line 188
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_FROM_UNTIL:I

    .line 191
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT_FROM:I

    .line 194
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    .line 197
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    .line 200
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    .line 203
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FORCE_SYNC:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_FORCE_SYNC:I

    .line 210
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_UNLIMITED:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_UNLIMITED:I

    .line 212
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_COUNT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_COUNT:I

    .line 214
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_DATETIME:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_DATETIME:I

    .line 216
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_INTERVAL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_INTERVAL:I

    .line 218
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_TIMED_COUNT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_TIMED_COUNT:I

    .line 814
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isForwardLockOnly()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->FLAG_SUPPORT_OMA_FL_ONLY:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mAcquireTry:I

    .line 1348
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 1406
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mContext:Landroid/content/Context;

    .line 268
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->acquireRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isValidInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mOnPlayReadyListener:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 103
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mAcquireTry:I

    return v0
.end method

.method private acquireRights(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 988
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/4 v1, 0x3

    .line 989
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 990
    .local v0, "request":Landroid/drm/DrmInfoRequest;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 991
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mAcquireTry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mAcquireTry:I

    .line 992
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mPath:Ljava/lang/String;

    .line 993
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, v0}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v1

    return v1
.end method

.method private getCategory(Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "constraint"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, -0x1

    .line 1267
    if-nez p1, :cond_1

    .line 1268
    const-string v3, "MusicDrm"

    const-string v4, "getCategory constraint is null "

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_0
    :goto_0
    return v0

    .line 1271
    :cond_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->LICENSE_CATEGORY_COLUMN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1272
    .local v2, "license":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1275
    const/4 v0, -0x1

    .line 1277
    .local v0, "category":I
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1278
    const-string v3, "MusicDrm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCategory: categoryType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1446
    if-nez p1, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-object v0

    .line 1450
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1453
    const-string v0, "application/vnd.oma.drm.content"

    goto :goto_0

    .line 1454
    :cond_2
    const-string v1, ".pya"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1455
    const-string v0, "audio/vnd.ms-playready.media.pya"

    goto :goto_0

    .line 1456
    :cond_3
    const-string v1, ".wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1457
    const-string/jumbo v0, "video/x-ms-wmv"

    goto :goto_0

    .line 1458
    :cond_4
    const-string v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1459
    const-string v0, "audio/x-ms-wma"

    goto :goto_0

    .line 1460
    :cond_5
    const-string v1, ".pyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1461
    const-string/jumbo v0, "video/vnd.ms-playready.media.pyv"

    goto :goto_0

    .line 1462
    :cond_6
    const-string v1, ".avi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1463
    const-string/jumbo v0, "video/mux/AVI"

    goto :goto_0

    .line 1464
    :cond_7
    const-string v1, ".mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1465
    const-string/jumbo v0, "video/mux/MKV"

    goto :goto_0

    .line 1466
    :cond_8
    const-string v1, ".divx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    const-string/jumbo v0, "video/mux/DivX"

    goto :goto_0
.end method

.method private getDrmType(Ljava/lang/String;)I
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1430
    if-nez p1, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return v0

    .line 1434
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1435
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1436
    const/4 v0, 0x1

    goto :goto_0

    .line 1437
    :cond_2
    const-string v1, ".pya"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".pyv"

    .line 1438
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->sDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->sDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .line 125
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->sDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    return-object v0
.end method

.method private getInvalidOmaDrmPopup(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 10
    .param p1, "status"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fromList"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 833
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 835
    .local v3, "popup":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    new-instance v4, Landroid/drm/DrmInfoRequest;

    sget v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->TYPE_GET_DRMFILE_INFO:I

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v4, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 837
    .local v4, "request":Landroid/drm/DrmInfoRequest;
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_PATH:Ljava/lang/String;

    invoke-virtual {v4, v6, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 840
    .local v2, "info":Landroid/drm/DrmInfo;
    const/4 v0, 0x0

    .line 843
    .local v0, "cdtype":I
    :try_start_0
    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 844
    .local v5, "tempInfo":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 845
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 853
    :cond_0
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->FLAG_SUPPORT_OMA_FL_ONLY:Z

    if-eqz v6, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_2

    .line 860
    :cond_1
    iput v8, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 861
    const/16 v6, 0xb

    iput v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    .line 880
    .end local v5    # "tempInfo":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 847
    :catch_0
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/NullPointerException;
    const/16 v6, 0x17

    iput v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 849
    iput v8, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    goto :goto_0

    .line 865
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "tempInfo":Ljava/lang/Object;
    :cond_2
    if-eq v0, v9, :cond_3

    if-ne v0, v8, :cond_5

    :cond_3
    if-eq p1, v8, :cond_4

    if-ne p1, v9, :cond_5

    .line 867
    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getUrlInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->url:Ljava/lang/String;

    .line 868
    const/16 v6, 0xe

    iput v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 869
    const/4 v6, 0x1

    iput v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    goto :goto_0

    .line 871
    :cond_5
    if-eqz p3, :cond_6

    .line 872
    const/16 v6, 0xc

    iput v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 873
    iput v8, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    .line 874
    iput v9, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text2:I

    goto :goto_0

    .line 876
    :cond_6
    const/16 v6, 0xd

    iput v6, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 877
    iput v8, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    goto :goto_0
.end method

.method private getInvalidPlayReadyDrmPopup(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 7
    .param p1, "status"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x16

    const/4 v4, 0x2

    .line 884
    const-string v1, "MusicDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInvalidPlayReadyDrmPopup path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 886
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_BLOCK_PLAYREADY_DRM:Z

    if-eqz v1, :cond_0

    .line 887
    iput v5, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 888
    const/16 v1, 0xb

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    .line 927
    :goto_0
    return-object v0

    .line 892
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 924
    iput v6, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    goto :goto_0

    .line 894
    :pswitch_0
    iput v4, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 895
    iput v4, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    goto :goto_0

    .line 899
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    const/16 v1, 0x18

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 901
    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    .line 902
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mAcquireTry:I

    .line 903
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mOnPlayReadyListener:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    if-eqz v1, :cond_1

    .line 904
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mOnPlayReadyListener:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    const/4 v2, 0x1

    invoke-interface {v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    .line 907
    :cond_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)V

    .line 912
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->start()V

    goto :goto_0

    .line 914
    :cond_2
    if-ne p1, v4, :cond_3

    .line 915
    iput v5, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 916
    const/16 v1, 0xa

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    goto :goto_0

    .line 918
    :cond_3
    iput v5, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 919
    const/16 v1, 0x9

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    goto :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getOmaDetailInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1135
    const/4 v4, 0x0

    .line 1136
    .local v4, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7, p1, v8}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 1137
    .local v1, "constraint":Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getCategory(Landroid/content/ContentValues;)I

    move-result v0

    .line 1139
    .local v0, "category":I
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_UNLIMITED:I

    if-ne v0, v7, :cond_0

    .line 1140
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;

    .end local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;-><init>()V

    .line 1141
    .restart local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    const/4 v7, 0x0

    iput v7, v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;->ui:I

    .line 1180
    :goto_0
    return-object v4

    .line 1142
    :cond_0
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_COUNT:I

    if-ne v0, v7, :cond_1

    .line 1143
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;-><init>()V

    .line 1144
    .local v2, "count":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;
    iput v8, v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;->ui:I

    .line 1145
    const-string/jumbo v7, "remaining_repeat_count"

    .line 1146
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;->remain:Ljava/lang/String;

    .line 1147
    const-string v7, "max_repeat_count"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;->max:Ljava/lang/String;

    .line 1148
    move-object v4, v2

    .line 1149
    goto :goto_0

    .end local v2    # "count":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;
    :cond_1
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_DATETIME:I

    if-ne v0, v7, :cond_2

    .line 1150
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;-><init>()V

    .line 1151
    .local v3, "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    const/4 v7, 0x2

    iput v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->ui:I

    .line 1153
    const-string v7, "license_start_time"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->start:Ljava/lang/String;

    .line 1154
    const-string v7, "license_expiry_time"

    .line 1155
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->expiry:Ljava/lang/String;

    .line 1156
    move-object v4, v3

    .line 1157
    goto :goto_0

    .end local v3    # "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    :cond_2
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_INTERVAL:I

    if-ne v0, v7, :cond_3

    .line 1158
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;-><init>()V

    .line 1159
    .local v5, "interval":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;
    const/4 v7, 0x3

    iput v7, v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;->ui:I

    .line 1161
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;->original:Ljava/lang/String;

    .line 1162
    const-string v7, "license_available_time"

    .line 1163
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;->available:Ljava/lang/String;

    .line 1164
    move-object v4, v5

    .line 1165
    goto :goto_0

    .end local v5    # "interval":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;
    :cond_3
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_TIMED_COUNT:I

    if-ne v0, v7, :cond_4

    .line 1166
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;-><init>()V

    .line 1167
    .local v6, "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    const/4 v7, 0x4

    iput v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->ui:I

    .line 1169
    const-string v7, "license_start_time"

    .line 1170
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->start:Ljava/lang/String;

    .line 1171
    const-string v7, "license_available_time"

    .line 1172
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->available:Ljava/lang/String;

    .line 1173
    const-string/jumbo v7, "remaining_repeat_count"

    .line 1174
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->remain:Ljava/lang/String;

    .line 1175
    const-string v7, "max_repeat_count"

    .line 1176
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->max:Ljava/lang/String;

    goto/16 :goto_0

    .line 1178
    .end local v6    # "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private getOmaDrmPopup(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 3
    .param p1, "status"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fromList"    # Z

    .prologue
    .line 529
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 531
    .local v1, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 533
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isValidInternal(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getRemainCounts(Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "count":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 541
    const/16 v2, 0xb

    iput v2, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 543
    const/4 v2, 0x4

    iput v2, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    .line 545
    iput v0, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->count:I

    .line 547
    iput-object p2, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->path:Ljava/lang/String;

    .line 558
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-object v1

    .line 553
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getInvalidOmaDrmPopup(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object v1

    .line 555
    iput-object p2, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPlayRaedyPopup(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 506
    const-string v1, "MusicDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayRaedyPopup path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isValidInternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getInvalidPlayReadyDrmPopup(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object v0

    .line 516
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->path:Ljava/lang/String;

    .line 524
    :goto_0
    return-object v0

    .line 519
    .end local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 521
    .restart local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    goto :goto_0
.end method

.method private getPlayReadyDetailInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x7

    .line 1184
    const/4 v4, 0x0

    .line 1185
    .local v4, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7, p1, v9}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 1186
    .local v1, "constraint":Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getCategory(Landroid/content/ContentValues;)I

    move-result v0

    .line 1188
    .local v0, "category":I
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_NORIGHT:I

    if-ne v0, v7, :cond_0

    .line 1189
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;

    .end local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;-><init>()V

    .line 1190
    .restart local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    const/16 v7, 0x9

    iput v7, v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;->ui:I

    .line 1263
    :goto_0
    return-object v4

    .line 1191
    :cond_0
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_UNLIM:I

    if-ne v0, v7, :cond_1

    .line 1192
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;

    .end local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;-><init>()V

    .line 1193
    .restart local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    const/4 v7, 0x0

    iput v7, v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;->ui:I

    goto :goto_0

    .line 1194
    :cond_1
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT:I

    if-ne v0, v7, :cond_2

    .line 1195
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;-><init>()V

    .line 1196
    .local v2, "count":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;
    iput v9, v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;->ui:I

    .line 1197
    const-string/jumbo v7, "remaining_repeat_count"

    .line 1198
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;->remain:Ljava/lang/String;

    .line 1199
    const-string v7, "max_repeat_count"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;->max:Ljava/lang/String;

    goto :goto_0

    .line 1200
    .end local v2    # "count":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;
    :cond_2
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_FROM:I

    if-ne v0, v7, :cond_3

    .line 1201
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;-><init>()V

    .line 1202
    .local v3, "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    iput v10, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->ui:I

    .line 1203
    const-string v7, "license_start_time"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->start:Ljava/lang/String;

    .line 1204
    move-object v4, v3

    .line 1205
    goto :goto_0

    .end local v3    # "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    :cond_3
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_UNTIL:I

    if-ne v0, v7, :cond_4

    .line 1206
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;-><init>()V

    .line 1207
    .restart local v3    # "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    iput v10, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->ui:I

    .line 1208
    const-string v7, "license_expiry_time"

    .line 1209
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->expiry:Ljava/lang/String;

    .line 1210
    move-object v4, v3

    .line 1211
    goto :goto_0

    .end local v3    # "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    :cond_4
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_FROM_UNTIL:I

    if-ne v0, v7, :cond_5

    .line 1212
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;-><init>()V

    .line 1213
    .restart local v3    # "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    const/4 v7, 0x2

    iput v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->ui:I

    .line 1214
    const-string v7, "license_start_time"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->start:Ljava/lang/String;

    .line 1215
    const-string v7, "license_expiry_time"

    .line 1216
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;->expiry:Ljava/lang/String;

    .line 1217
    move-object v4, v3

    .line 1218
    goto/16 :goto_0

    .end local v3    # "date":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;
    :cond_5
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT_FROM:I

    if-ne v0, v7, :cond_6

    .line 1219
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;-><init>()V

    .line 1220
    .local v6, "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    iput v8, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->ui:I

    .line 1221
    const-string v7, "license_start_time"

    .line 1222
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->start:Ljava/lang/String;

    .line 1223
    const-string/jumbo v7, "remaining_repeat_count"

    .line 1224
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->remain:Ljava/lang/String;

    .line 1225
    const-string v7, "max_repeat_count"

    .line 1226
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->max:Ljava/lang/String;

    .line 1227
    move-object v4, v6

    .line 1228
    goto/16 :goto_0

    .end local v6    # "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    :cond_6
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    if-ne v0, v7, :cond_7

    .line 1229
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;-><init>()V

    .line 1230
    .restart local v6    # "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    iput v8, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->ui:I

    .line 1231
    const-string v7, "license_expiry_time"

    .line 1232
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->expiry:Ljava/lang/String;

    .line 1233
    const-string/jumbo v7, "remaining_repeat_count"

    .line 1234
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->remain:Ljava/lang/String;

    .line 1235
    const-string v7, "max_repeat_count"

    .line 1236
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->max:Ljava/lang/String;

    .line 1237
    move-object v4, v6

    .line 1238
    goto/16 :goto_0

    .end local v6    # "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    :cond_7
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    if-ne v0, v7, :cond_8

    .line 1239
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;-><init>()V

    .line 1240
    .restart local v6    # "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    iput v8, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->ui:I

    .line 1241
    const-string v7, "license_start_time"

    .line 1242
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->start:Ljava/lang/String;

    .line 1243
    const-string v7, "license_expiry_time"

    .line 1244
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->expiry:Ljava/lang/String;

    .line 1245
    const-string/jumbo v7, "remaining_repeat_count"

    .line 1246
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->remain:Ljava/lang/String;

    .line 1247
    const-string v7, "max_repeat_count"

    .line 1248
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;->max:Ljava/lang/String;

    .line 1249
    move-object v4, v6

    .line 1250
    goto/16 :goto_0

    .end local v6    # "timedCount":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;
    :cond_8
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    if-ne v0, v7, :cond_9

    .line 1251
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;-><init>()V

    .line 1252
    .local v5, "interval":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;
    const/4 v7, 0x3

    iput v7, v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;->ui:I

    .line 1253
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;->original:Ljava/lang/String;

    .line 1254
    const-string v7, "license_available_time"

    .line 1255
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;->available:Ljava/lang/String;

    .line 1256
    move-object v4, v5

    .line 1257
    goto/16 :goto_0

    .end local v5    # "interval":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;
    :cond_9
    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_LICENSE_STATE_FORCE_SYNC:I

    if-ne v0, v7, :cond_a

    .line 1258
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;

    .end local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;-><init>()V

    .line 1259
    .restart local v4    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    const/16 v7, 0x8

    iput v7, v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;->ui:I

    goto/16 :goto_0

    .line 1261
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private getRemainCounts(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1004
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 1006
    .local v0, "constraint":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getCategory(Landroid/content/ContentValues;)I

    move-result v3

    sget v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM2_COUNT:I

    if-ne v3, v4, :cond_0

    .line 1007
    const-string/jumbo v3, "remaining_repeat_count"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1008
    .local v1, "remain":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 1014
    .end local v1    # "remain":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 1011
    .restart local v1    # "remain":Ljava/lang/Object;
    :cond_1
    const-string v2, "MusicDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainedCounts() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private static isForwardLockOnly()Z
    .locals 3

    .prologue
    .line 818
    const/4 v0, 0x1

    .line 824
    .local v0, "forwardLockOnly":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/lib/libomafldrm.so"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 825
    .local v1, "omaFlDrmPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 826
    const/4 v0, 0x0

    .line 828
    :cond_0
    return v0
.end method

.method private isNetworkConnected(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 964
    const/4 v2, 0x0

    .line 965
    .local v2, "isConnected":Z
    const-string v3, "connectivity"

    .line 966
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 967
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 969
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 970
    const/4 v2, 0x1

    .line 973
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const-string v3, "MusicDrm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return v2
.end method

.method private isValidInternal(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 334
    .local v0, "isValid":Z
    packed-switch p1, :pswitch_data_0

    .line 351
    :goto_0
    return v0

    .line 342
    :pswitch_0
    const/4 v0, 0x0

    .line 344
    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDrmDetailInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v1

    .line 1119
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 1128
    const/4 v0, 0x0

    .line 1131
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    :goto_0
    return-object v0

    .line 1121
    .end local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getOmaDetailInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;

    move-result-object v0

    .line 1122
    .restart local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    goto :goto_0

    .line 1124
    .end local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getPlayReadyDetailInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;

    move-result-object v0

    .line 1125
    .restart local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDrmInfo(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fromList"    # Z

    .prologue
    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmPopupInfo(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object v1

    .line 475
    .local v1, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 477
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    iget v3, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    const-string/jumbo v2, "text1"

    iget v3, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text1:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string/jumbo v2, "text2"

    iget v3, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->text2:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string v2, "count"

    iget v3, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->count:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string/jumbo v2, "url"

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v2, "path"

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-object v0
.end method

.method public getDrmPopupInfo(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fromList"    # Z

    .prologue
    const/4 v7, 0x0

    .line 375
    const-string v4, "MusicDrm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmPopupInfo path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fromList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 381
    .local v1, "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    iput v7, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    move-object v2, v1

    .line 421
    .end local v1    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .local v2, "info":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 388
    .end local v2    # "info":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v0

    .line 390
    .local v0, "drmType":I
    packed-switch v0, :pswitch_data_0

    .line 412
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 414
    .restart local v1    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    iput v7, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->type:I

    .line 416
    iput-object p1, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->path:Ljava/lang/String;

    :goto_1
    move-object v2, v1

    .line 421
    .restart local v2    # "info":Ljava/lang/Object;
    goto :goto_0

    .line 394
    .end local v1    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .end local v2    # "info":Ljava/lang/Object;
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v3

    .line 396
    .local v3, "status":I
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getPlayRaedyPopup(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object v1

    .line 398
    .restart local v1    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    goto :goto_1

    .line 402
    .end local v1    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .end local v3    # "status":I
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v3

    .line 404
    .restart local v3    # "status":I
    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getOmaDrmPopup(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object v1

    .line 406
    .restart local v1    # "info":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    goto :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOptionInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1308
    new-instance v2, Landroid/drm/DrmInfoRequest;

    sget v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->TYPE_GET_OPTION_MENU:I

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1309
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1310
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1311
    .local v0, "info":Landroid/drm/DrmInfo;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;-><init>()V

    .line 1312
    .local v1, "option":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;
    if-eqz v0, :cond_0

    .line 1313
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->INFO_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1314
    .local v3, "status":Ljava/lang/String;
    const-string v4, "MusicDrm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status req1: TYPE_GET_OPTION_MENU"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v4, "fail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1316
    const-string v4, "bRingtone"

    invoke-virtual {v0, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->ringtone:Z

    .line 1317
    const-string v4, "bSendAs"

    invoke-virtual {v0, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->share:Z

    .line 1320
    .end local v3    # "status":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getUrlInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "mime":Ljava/lang/String;
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1026
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->DRM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1028
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    const-string v3, "URL"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method public isDrm(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 299
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "mime":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    .line 327
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isValidInternal(I)Z

    move-result v1

    return v1
.end method

.method public isValidRingTone(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1345
    .local v0, "rightsStatus":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 284
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mClient:Landroid/drm/DrmManagerClient;

    .line 286
    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->sDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .line 287
    return-void
.end method

.method public setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->mOnPlayReadyListener:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    .line 361
    return-void
.end method

.method public supportRingtone(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1329
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getOptionInfo(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;

    move-result-object v1

    .line 1330
    .local v1, "option":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;
    const/4 v0, 0x0

    .line 1331
    .local v0, "isSupport":Z
    iget-boolean v2, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->ringtone:Z

    if-eqz v2, :cond_0

    .line 1332
    const/4 v0, 0x1

    .line 1334
    :cond_0
    return v0
.end method
