.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistDeleteable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/app/Fragment;I)V
    .locals 1
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 1556
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;II)V

    .line 1557
    return-void
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    const/4 v3, 0x0

    .line 1561
    new-instance v1, Lcom/samsung/android/app/music/common/util/task/DeletePlaylistTask;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p2, v3}, Lcom/samsung/android/app/music/common/util/task/DeletePlaylistTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/util/task/DeletePlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1562
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    .line 1563
    .local v0, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v1, :cond_0

    .line 1564
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .end local v0    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 1566
    :cond_0
    return-void
.end method
