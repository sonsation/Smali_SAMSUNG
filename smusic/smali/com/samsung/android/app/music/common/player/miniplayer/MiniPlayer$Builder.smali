.class public Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCloseButtonEnabled:Z

.field private mExtraClickListener:Landroid/view/View$OnClickListener;

.field private mQueueButtonEnabled:Z

.field private mSeekControllerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mSeekControllerEnabled:Z

    .line 753
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mQueueButtonEnabled:Z

    .line 755
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mCloseButtonEnabled:Z

    .line 760
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mActivity:Landroid/app/Activity;

    .line 761
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mExtraClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mSeekControllerEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mQueueButtonEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mCloseButtonEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;
    .locals 2

    .prologue
    .line 784
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;)V

    return-object v0
.end method

.method public setCloseButtonEnabled(Z)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;
    .locals 0
    .param p1, "closeButtonEnabled"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mCloseButtonEnabled:Z

    .line 775
    return-object p0
.end method

.method public setExtraClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;
    .locals 0
    .param p1, "extraClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mExtraClickListener:Landroid/view/View$OnClickListener;

    .line 780
    return-object p0
.end method

.method public setQueueButtonEnabled(Z)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;
    .locals 0
    .param p1, "queueButtonEnabled"    # Z

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mQueueButtonEnabled:Z

    .line 770
    return-object p0
.end method

.method public setSeekControllerEnabled(Z)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;
    .locals 0
    .param p1, "seekControllerEnabled"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->mSeekControllerEnabled:Z

    .line 765
    return-object p0
.end method
