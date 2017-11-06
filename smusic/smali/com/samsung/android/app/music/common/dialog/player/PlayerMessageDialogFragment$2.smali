.class Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$2;
.super Ljava/lang/Object;
.source "PlayerMessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->create(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;

.field final synthetic val$message:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$2;->val$message:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 65
    const-string v0, "PlayerDialog"

    const-string v1, "PlayerMessageDialogFragment: onClick - negative"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$2;->val$message:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->doNegative()V

    .line 67
    return-void
.end method
