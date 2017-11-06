.class Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$1;
.super Ljava/lang/Object;
.source "BleConnectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->dismiss()V

    .line 73
    return-void
.end method
