.class public final Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;
.super Ljava/lang/Object;
.source "InvalidDrmContent.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;


# instance fields
.field private final mErrorCode:I

.field private final mFd:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "fd"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->mFd:I

    .line 26
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->mErrorCode:I

    .line 27
    return-void
.end method

.method public static obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;-><init>(II)V

    return-object v0
.end method

.method public static obtain(II)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 1
    .param p0, "fd"    # I
    .param p1, "errorCode"    # I

    .prologue
    .line 16
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->mErrorCode:I

    return v0
.end method

.method public getFd()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->mFd:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLyrics()[B
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid drm content - error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
