.class Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;
.super Ljava/lang/Object;
.source "LockPlayerNowPlayingListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->turnOffItemAnimatorDuringSomeTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

.field final synthetic val$itemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;->val$itemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;->val$itemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 166
    return-void
.end method
