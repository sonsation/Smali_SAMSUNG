.class public Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;
.super Ljava/lang/Object;
.source "BackgroundFadeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBlurAlphaMaskColorPlayingColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mBlurAlphaMaskColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mBlurAlphaMaskResId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final mIsSupportMenu:Z

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mStrokeWidthDimenResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;IIIIZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "blurAlphaMaskResId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4, "blurAlphaMaskColorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5, "blurAlphaMaskColorPlayingColorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p6, "strokeWidthDimenResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p7, "isSupportMenu"    # Z

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mActivity:Landroid/app/Activity;

    .line 298
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 299
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mBlurAlphaMaskResId:I

    .line 300
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mBlurAlphaMaskColorResId:I

    .line 301
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mBlurAlphaMaskColorPlayingColorResId:I

    .line 302
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mStrokeWidthDimenResId:I

    .line 303
    iput-boolean p7, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mIsSupportMenu:Z

    .line 304
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mBlurAlphaMaskResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mBlurAlphaMaskColorResId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mBlurAlphaMaskColorPlayingColorResId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mIsSupportMenu:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    .line 273
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->mStrokeWidthDimenResId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$1;)V

    return-object v0
.end method
