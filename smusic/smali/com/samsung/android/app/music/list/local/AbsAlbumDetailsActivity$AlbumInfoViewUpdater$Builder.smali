.class public Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
.super Ljava/lang/Object;
.source "AbsAlbumDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDefaultThumbnailId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mEnterAnimationEnabled:Z

.field private mMainTextCol:Ljava/lang/String;

.field private mSetDefaultImageBeforeLoad:Z

.field private mSubText1Col:Ljava/lang/String;

.field private mSubText2Col:Ljava/lang/String;

.field private mSubText3Col:Ljava/lang/String;

.field private mSubText4Col:Ljava/lang/String;

.field private mThumbnailId:J

.field private mThumbnailUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mDefaultThumbnailId:I

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSetDefaultImageBeforeLoad:Z

    .line 361
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mActivity:Landroid/app/Activity;

    .line 362
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mView:Landroid/view/View;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mDefaultThumbnailId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mEnterAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSetDefaultImageBeforeLoad:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mThumbnailId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mMainTextCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText1Col:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText2Col:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText3Col:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText4Col:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;-><init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$1;)V

    return-object v0
.end method

.method public setDefaultThumbnailId(IZ)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "setDefaultImageBeforeLoad"    # Z

    .prologue
    .line 403
    iput p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mDefaultThumbnailId:I

    .line 404
    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSetDefaultImageBeforeLoad:Z

    .line 405
    return-object p0
.end method

.method public setEnterAnimationEnabled(Z)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mEnterAnimationEnabled:Z

    .line 398
    return-object p0
.end method

.method public setMainTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mMainTextCol:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public setSubText1Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText1Col:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public setSubText2Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText2Col:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setSubText3Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText3Col:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public setSubText4Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 0
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mSubText4Col:Ljava/lang/String;

    .line 393
    return-object p0
.end method

.method public setThumbnailId(JLandroid/net/Uri;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .locals 1
    .param p1, "thumbnailId"    # J
    .param p3, "thumbnailUri"    # Landroid/net/Uri;

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mThumbnailId:J

    .line 367
    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->mThumbnailUri:Landroid/net/Uri;

    .line 368
    return-object p0
.end method
