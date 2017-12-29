.class Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SamsungStartingWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    .line 1026
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1025
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1031
    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1034
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "samsungstarting_autocapture"

    .line 1033
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1038
    const-string v1, "samsungstarting_DoNotRemoveStartingWindow"

    .line 1037
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1040
    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->updateSetting()V

    .line 1029
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->updateSetting()V

    .line 1044
    return-void
.end method
