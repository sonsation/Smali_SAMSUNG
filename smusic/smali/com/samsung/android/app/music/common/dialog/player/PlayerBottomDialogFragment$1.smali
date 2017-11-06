.class Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;
.super Ljava/lang/Object;
.source "PlayerBottomDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->composeView(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;

.field final synthetic val$message:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;->val$message:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    const-string v0, "PlayerDialog"

    const-string v1, "PlayerBottomDialogFragment: onClick - positiveText"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;->val$message:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->doPositive()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 98
    return-void
.end method
