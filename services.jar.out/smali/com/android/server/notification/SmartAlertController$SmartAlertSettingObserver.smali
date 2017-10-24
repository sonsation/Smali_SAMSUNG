.class Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartAlertSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/SmartAlertController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 215
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 214
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->-get0(Lcom/android/server/notification/SmartAlertController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->update()V

    .line 218
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->update()V

    .line 226
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->-get0(Lcom/android/server/notification/SmartAlertController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 232
    const-string/jumbo v2, "motion_pick_up"

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 231
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 233
    .local v0, "isON":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1, v0}, Lcom/android/server/notification/SmartAlertController;->-wrap0(Lcom/android/server/notification/SmartAlertController;Z)V

    .line 230
    return-void

    .line 231
    .end local v0    # "isON":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isON":Z
    goto :goto_0
.end method
