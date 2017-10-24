.class Lcom/android/server/wallpaper/WallpaperManagerService$5;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->migrateOldKeyguardWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$wallpaperPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "val$wallpaperPath"    # Ljava/lang/String;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1569
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1570
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v16, "file":Ljava/io/File;
    if-eqz v16, :cond_3

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1576
    .local v17, "fileName":Ljava/lang/String;
    const-string/jumbo v1, "_layered"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "_cinematic"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1577
    :cond_0
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "The file type is preload"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    .end local v17    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1580
    .restart local v17    # "fileName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$wallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/4 v12, 0x0

    .line 1582
    .local v12, "bitmapData":Ljava/io/InputStream;
    new-instance v12, Ljava/io/FileInputStream;

    .end local v12    # "bitmapData":Ljava/io/InputStream;
    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1584
    .local v12, "bitmapData":Ljava/io/InputStream;
    if-eqz v12, :cond_1

    .line 1585
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {v8, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 1586
    .local v8, "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1587
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1586
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;III)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1589
    .local v15, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v15, :cond_1

    .line 1590
    const/16 v18, 0x0

    .line 1592
    .local v18, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v19, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1593
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v19, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v19

    invoke-static {v1, v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap8(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1594
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 1595
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 1596
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    .line 1598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_wallpaper_path"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1602
    :try_start_3
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1603
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1611
    .end local v8    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .end local v12    # "bitmapData":Ljava/io/InputStream;
    .end local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "fileName":Ljava/lang/String;
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v13

    .line 1612
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "File not found."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1599
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .restart local v12    # "bitmapData":Ljava/io/InputStream;
    .restart local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "fileName":Ljava/lang/String;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v14

    .line 1600
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v14, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1602
    :try_start_5
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1603
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1601
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 1602
    :goto_2
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1603
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1601
    throw v1

    .line 1609
    .end local v8    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .end local v12    # "bitmapData":Ljava/io/InputStream;
    .end local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "fileName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Invalid file path."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1601
    .restart local v8    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .restart local v12    # "bitmapData":Ljava/io/InputStream;
    .restart local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "fileName":Ljava/lang/String;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object/from16 v18, v19

    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .local v18, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1599
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    move-object/from16 v18, v19

    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
