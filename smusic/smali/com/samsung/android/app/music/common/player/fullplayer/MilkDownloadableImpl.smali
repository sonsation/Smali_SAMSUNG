.class public final Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;
.super Ljava/lang/Object;
.source "MilkDownloadableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/samsung/android/app/music/common/player/SourceIdGetter;)V
    .locals 0
    .param p2, "sourceIdGetter"    # Lcom/samsung/android/app/music/common/player/SourceIdGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/samsung/android/app/music/common/player/SourceIdGetter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;->mActivity:Ljava/lang/ref/WeakReference;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    .line 20
    return-void
.end method


# virtual methods
.method public download()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 25
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    .line 27
    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/SourceIdGetter;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method
