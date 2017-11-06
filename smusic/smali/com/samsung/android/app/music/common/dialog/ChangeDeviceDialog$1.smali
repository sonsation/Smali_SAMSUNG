.class Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$1;
.super Ljava/lang/Object;
.source "ChangeDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    const/4 v1, 0x0

    const-string v2, "MY_DEVICE"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$000(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;ILjava/lang/String;)V

    .line 155
    return-void
.end method
