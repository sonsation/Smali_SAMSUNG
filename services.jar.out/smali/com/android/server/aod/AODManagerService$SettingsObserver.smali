.class Lcom/android/server/aod/AODManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 267
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 266
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 272
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get3(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 276
    const-string/jumbo v1, "aod_night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    .line 270
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    .line 283
    return-void
.end method
