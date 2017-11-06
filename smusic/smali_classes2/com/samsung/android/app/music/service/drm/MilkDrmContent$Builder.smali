.class public Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
.super Ljava/lang/Object;
.source "MilkDrmContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/drm/MilkDrmContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCustomMeta:Ljava/lang/String;

.field private final mDRMSession:Lcom/markany/drm/xsync/DRMSession;

.field private final mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

.field private mErrorCode:I

.field private mFd:I

.field private final mFilePath:Ljava/lang/String;

.field private mLcode:Ljava/lang/String;

.field private final mPlayingUri:Landroid/net/Uri;

.field private mSourceId:I

.field private final mTrackId:Ljava/lang/String;

.field private mValidity:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/markany/drm/xsync/DRMSession;)V
    .locals 2
    .param p1, "controller"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "playingUri"    # Landroid/net/Uri;
    .param p5, "customMeta"    # Ljava/lang/String;
    .param p6, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mFd:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mErrorCode:I

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mValidity:J

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mLcode:Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    .line 165
    iput-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mTrackId:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mTrackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mTrackId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mFd:I

    .line 169
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mFilePath:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mPlayingUri:Landroid/net/Uri;

    .line 171
    iput-object p5, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mCustomMeta:Ljava/lang/String;

    .line 172
    iput-object p6, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mDRMSession:Lcom/markany/drm/xsync/DRMSession;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Lcom/markany/drm/xsync/DRMSession;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mDRMSession:Lcom/markany/drm/xsync/DRMSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mFd:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mPlayingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mSourceId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mLcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mValidity:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mErrorCode:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mCustomMeta:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/service/drm/MilkDrmContent;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;-><init>(Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;Lcom/samsung/android/app/music/service/drm/MilkDrmContent$1;)V

    return-object v0
.end method

.method public setError(I)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mErrorCode:I

    .line 177
    return-object p0
.end method

.method public setLcode(Ljava/lang/String;)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
    .locals 0
    .param p1, "lcode"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mLcode:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setSourceId(I)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
    .locals 0
    .param p1, "sourceId"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mSourceId:I

    .line 182
    return-object p0
.end method

.method public setValidity(J)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;
    .locals 1
    .param p1, "validity"    # J

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->mValidity:J

    .line 192
    return-object p0
.end method
