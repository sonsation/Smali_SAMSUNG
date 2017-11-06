.class Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;
.super Ljava/lang/Object;
.source "FavoriteMaximumReachedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "821"

    const-string v2, "8021"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "823"

    const-string v2, "8023"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "822"

    const-string v2, "8022"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "824"

    const-string v2, "8024"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
