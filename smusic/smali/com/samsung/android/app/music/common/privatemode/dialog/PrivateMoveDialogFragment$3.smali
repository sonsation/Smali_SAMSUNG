.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$3;
.super Ljava/lang/Object;
.source "PrivateMoveDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->onStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 236
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 239
    :cond_0
    return-void
.end method
