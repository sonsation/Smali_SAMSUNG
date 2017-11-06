.class Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;
.super Ljava/lang/Object;
.source "AdaptSoundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "currentValue"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    if-nez p2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAlreadyDiagnosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Z)V

    .line 81
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :goto_0
    return-void

    .line 70
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$000(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)V

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Z)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$300(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Landroid/content/Context;)V

    goto :goto_0

    .line 79
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Z)V

    goto :goto_0
.end method
