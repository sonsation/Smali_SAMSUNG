.class Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;
.super Ljava/lang/Object;
.source "OnlinePlaylistBaseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "newPlaylistName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->hasPlaylistName(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    const v3, 0x7f0a0152

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 56
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->onClickPositiveButton()V

    goto :goto_0
.end method
