.class Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;
.super Ljava/lang/Object;
.source "LegacySoundAliveDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 106
    return-void
.end method
