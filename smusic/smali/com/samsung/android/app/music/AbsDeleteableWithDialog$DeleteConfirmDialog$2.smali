.class Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;
.super Ljava/lang/Object;
.source "AbsDeleteableWithDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 197
    invoke-static {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2076"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 202
    return-void
.end method
