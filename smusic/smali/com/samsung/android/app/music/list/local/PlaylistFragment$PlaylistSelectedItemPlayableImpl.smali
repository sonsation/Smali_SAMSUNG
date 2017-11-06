.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;
.super Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistSelectedItemPlayableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 1572
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    .line 1573
    return-void
.end method


# virtual methods
.method protected onResult(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x1

    .line 1577
    if-ne p1, v3, :cond_0

    .line 1578
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v2

    if-le v2, v3, :cond_1

    const v1, 0x7f0a020e

    .line 1581
    .local v1, "stringResId":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1582
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1584
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "stringResId":I
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->onResult(I)V

    .line 1585
    return-void

    .line 1578
    :cond_1
    const v1, 0x7f0a0215

    goto :goto_0
.end method
