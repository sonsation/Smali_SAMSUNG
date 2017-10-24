.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mDesktopWallpaperFile:Ljava/io/File;

.field final mDesktopWallpaperInfoFile:Ljava/io/File;

.field final mDesktopWallpaperLockFile:Ljava/io/File;

.field mLockWallpaperFileObserver:Landroid/os/FileObserver;

.field mMultiWallpaperLockFiles:[Ljava/io/File;

.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field mWallpaperFileObserver:Landroid/os/FileObserver;

.field final mWallpaperInfoFile:Ljava/io/File;

.field final mWallpaperLockDir:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZI)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "changedFile"    # Ljava/io/File;
    .param p4, "sysWallpaperChanged"    # Z
    .param p5, "lockWallpaperChanged"    # Z
    .param p6, "index"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/16 v3, 0x688

    const/4 v0, 0x0

    .line 298
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    .line 294
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    .line 296
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    .line 299
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "WallpaperObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 301
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 302
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap4(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 303
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 304
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperInfoFile:Ljava/io/File;

    .line 307
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap5(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    .line 308
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_lock_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 312
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_desktop_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    .line 313
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_desktop_lock_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    .line 314
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_desktop_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperInfoFile:Ljava/io/File;

    .line 318
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    .line 353
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    .line 298
    return-void
.end method

.method private dataForEvent(Z)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 5
    .param p1, "lockChanged"    # Z

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    if-eqz p1, :cond_0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 377
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    if-nez v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    monitor-exit v2

    .line 382
    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0
.end method

.method private updateEvent(ILjava/lang/String;Ljava/io/File;ZZI)V
    .locals 11
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "changedFile"    # Ljava/io/File;
    .param p4, "sysWallpaperChanged"    # Z
    .param p5, "lockWallpaperChanged"    # Z
    .param p6, "index"    # I

    .prologue
    .line 388
    const/16 v1, 0x80

    if-ne p1, v1, :cond_0

    const/4 v8, 0x1

    .line 389
    .local v8, "moved":Z
    :goto_0
    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    move v9, v8

    .line 391
    :goto_1
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(Z)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 393
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v8, :cond_2

    if-eqz p5, :cond_2

    .line 400
    invoke-static {p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 401
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 402
    return-void

    .line 388
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "moved":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "moved":Z
    goto :goto_0

    .line 389
    :cond_1
    const/4 v9, 0x1

    .local v9, "written":Z
    goto :goto_1

    .line 405
    .end local v9    # "written":Z
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 406
    if-nez p4, :cond_3

    if-eqz p5, :cond_a

    .line 408
    :cond_3
    :try_start_0
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wallpaper file change: evt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    const-string/jumbo v3, " path="

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    const-string/jumbo v3, " sys="

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    const-string/jumbo v3, " lock="

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v3, " imagePending="

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    iget-boolean v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    const-string/jumbo v3, " whichPending=0x"

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    iget v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 414
    const-string/jumbo v3, " written="

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 415
    const-string/jumbo v3, " index="

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap12(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 418
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 419
    const/16 v1, 0x8

    if-eq p1, v1, :cond_b

    .line 421
    :cond_4
    :goto_2
    if-eqz v9, :cond_a

    .line 429
    if-eqz v8, :cond_5

    .line 436
    invoke-static {p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 437
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap11(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V

    .line 439
    :cond_5
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move/from16 v0, p6

    invoke-static {v1, v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap9(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 440
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Crop done; invoking completion callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 442
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 444
    :try_start_1
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :cond_6
    :goto_3
    if-eqz p4, :cond_7

    .line 452
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    .line 453
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 452
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 456
    :cond_7
    if-eqz p5, :cond_9

    .line 464
    if-nez p5, :cond_8

    .line 465
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap13(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 468
    :cond_8
    iget v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    if-nez v1, :cond_c

    .line 469
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 470
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap7(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 477
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap14(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit v10

    .line 387
    return-void

    .line 420
    :cond_b
    :try_start_3
    iget-boolean v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 418
    if-eqz v1, :cond_a

    goto :goto_2

    .line 471
    :cond_c
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get1()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 472
    iget v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_9

    .line 473
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 474
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap7(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 445
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
