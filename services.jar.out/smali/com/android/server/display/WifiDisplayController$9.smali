.class Lcom/android/server/display/WifiDisplayController$9;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$9;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 351
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange PowerSavingMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 353
    .local v1, "powerSaving":I
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3, v6}, Lcom/android/server/display/WifiDisplayController;->-set16(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 355
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-wrap28(Lcom/android/server/display/WifiDisplayController;)V

    .line 359
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 361
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 362
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    .line 363
    .local v2, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    const-string/jumbo v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-wrap3(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    :cond_1
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "not support dynamic resolution control psm, show toast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v4, 0x22084

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    .line 350
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_2
    :goto_0
    return-void

    .line 365
    .restart local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v2    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_3
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "psm(dynamic resolution control) is on we should be disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 369
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "disconnect WFD device."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-wrap11(Lcom/android/server/display/WifiDisplayController;)V

    .line 371
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 372
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-wrap3(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "disconnect GCast device."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get24(Lcom/android/server/display/WifiDisplayController;)Landroid/media/MediaRouter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get24(Lcom/android/server/display/WifiDisplayController;)Landroid/media/MediaRouter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get24(Lcom/android/server/display/WifiDisplayController;)Landroid/media/MediaRouter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method
