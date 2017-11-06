.class Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog$1;
.super Ljava/lang/Object;
.source "BleTurnOnTvDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    return-void
.end method
