.class Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;
.super Ljava/lang/Object;
.source "CreateOnlinePlaylistDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateOnlinePlaylistExecutor"
.end annotation


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
    .param p2, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;->this$0:Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 221
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    const-string v1, "CREATE_PLAYLIST_POPUP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string v1, "KEYWORD"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "playlistName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;->this$0:Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;->this$0:Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->access$100(Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 231
    const/4 v1, 0x1

    .line 233
    .end local v0    # "playlistName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
