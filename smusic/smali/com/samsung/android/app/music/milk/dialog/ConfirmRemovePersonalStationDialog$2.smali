.class Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;
.super Ljava/lang/Object;
.source "ConfirmRemovePersonalStationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;->onDialogPositiveClick()V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    if-eqz v2, :cond_1

    .line 69
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "901"

    const-string v4, "9156"

    .line 70
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "a":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
