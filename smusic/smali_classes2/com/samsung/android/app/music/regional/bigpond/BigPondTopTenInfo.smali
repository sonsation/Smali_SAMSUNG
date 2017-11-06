.class public Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
.super Ljava/lang/Object;
.source "BigPondTopTenInfo.java"


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mImage:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field private mThumb:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public makeClone()Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;-><init>()V

    .line 76
    .local v0, "info":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mTitle:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mArtist:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mLink:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mImage:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mImage:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mArtist:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mThumb:Landroid/graphics/Bitmap;

    .line 71
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mImage:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mLink:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->mTitle:Ljava/lang/String;

    .line 55
    return-void
.end method
