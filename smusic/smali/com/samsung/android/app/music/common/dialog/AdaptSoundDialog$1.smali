.class Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$1;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->access$000(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)V

    .line 56
    return-void
.end method
