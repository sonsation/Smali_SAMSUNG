.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$500(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$500(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V

    .line 232
    return-void
.end method
