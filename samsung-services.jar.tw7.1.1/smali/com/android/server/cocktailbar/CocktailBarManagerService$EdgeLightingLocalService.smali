.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;
.super Lcom/samsung/android/edge/EdgeManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeLightingLocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/edge/EdgeManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 291
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 293
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    return v3

    .line 294
    :catchall_0
    move-exception v3

    .line 295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw v3
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLock(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    return-void

    .line 336
    :catchall_0
    move-exception v2

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw v2
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 367
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 369
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    return-void

    .line 370
    :catchall_0
    move-exception v3

    .line 371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw v3
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "attrs"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    return v2

    .line 283
    :catchall_0
    move-exception v2

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw v2
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForResumedActivity(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    return-void

    .line 380
    :catchall_0
    move-exception v2

    .line 381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    throw v2
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 302
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 304
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForToast(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return v3

    .line 305
    :catchall_0
    move-exception v3

    .line 306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw v3
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 325
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLock(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    return v2

    .line 326
    :catchall_0
    move-exception v2

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v2
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 355
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 357
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    return v3

    .line 358
    :catchall_0
    move-exception v3

    .line 359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    throw v3
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUp(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    return v2

    .line 316
    :catchall_0
    move-exception v2

    .line 317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw v2
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 345
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    return v2

    .line 346
    :catchall_0
    move-exception v2

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw v2
.end method

.method public statusBarDisabled(II)V
    .locals 3
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 389
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->statusBarDisabled(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    return-void

    .line 390
    :catchall_0
    move-exception v2

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw v2
.end method
