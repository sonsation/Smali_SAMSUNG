.class Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;
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
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->setLegacySoundAlivePreset(I)V

    .line 101
    return-void
.end method
