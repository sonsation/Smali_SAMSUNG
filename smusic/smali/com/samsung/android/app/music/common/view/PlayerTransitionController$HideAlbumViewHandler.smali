.class Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;
.super Landroid/os/Handler;
.source "PlayerTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/view/PlayerTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideAlbumViewHandler"
.end annotation


# instance fields
.field private final mAlbumViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "albumView"    # Landroid/view/View;

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;->mAlbumViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;->mAlbumViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    .local v0, "albumView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 242
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    return-void
.end method
