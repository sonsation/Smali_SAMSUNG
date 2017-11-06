.class public Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
.super Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;
.source "MusicDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;
    }
.end annotation


# instance fields
.field private mDeleteRequested:Z

.field private mPostRemoveFinishedListenerRunner:Z

.field private final mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoveFinishedListener:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

.field private final mRemoveFinishedListenerRunner:Ljava/lang/Runnable;

.field private mRemoveStarted:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;-><init>()V

    .line 25
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveFinishedListenerRunner:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveFinishedListener:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mDeleteRequested:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mPostRemoveFinishedListenerRunner:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveStarted:Z

    return p1
.end method

.method private cancelRemoveFinishedListenerRunner()V
    .locals 3

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mPostRemoveFinishedListenerRunner:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelRemoveFinishedListenerRunner()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveFinishedListenerRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mPostRemoveFinishedListenerRunner:Z

    .line 108
    :cond_0
    return-void
.end method

.method private postRemoveFinishedListenerRunner()V
    .locals 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mPostRemoveFinishedListenerRunner:Z

    if-nez v0, :cond_0

    .line 96
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " postRemoveFinishedListenerRunner()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveFinishedListenerRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mPostRemoveFinishedListenerRunner:Z

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public animateRemove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->cancelRemoveFinishedListenerRunner()V

    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->animateRemove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public isDeleteRequested()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mDeleteRequested:Z

    return v0
.end method

.method public onAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->onAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 121
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 124
    :cond_0
    return-void
.end method

.method public onRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->onRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveStarted:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveStarted:Z

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->isRunning(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public recordPreLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "changeFlags"    # I
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 47
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mDeleteRequested:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->postRemoveFinishedListenerRunner()V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDeleteRequested()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setDeleteRequested()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mDeleteRequested:Z

    .line 92
    return-void
.end method

.method public setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->mRemoveFinishedListener:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    .line 112
    return-void
.end method
