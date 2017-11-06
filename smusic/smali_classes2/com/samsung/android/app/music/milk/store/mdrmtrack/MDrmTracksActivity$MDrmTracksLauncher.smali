.class public Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$MDrmTracksLauncher;
.super Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;
.source "MDrmTracksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDrmTracksLauncher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$MDrmTracksLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {p0, v10}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$MDrmTracksLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v8, 0x0

    .line 47
    .local v8, "expiredCnt":I
    new-instance v6, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Z)V

    .line 48
    .local v6, "args":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;
    iget-object v1, v6, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    .line 54
    :cond_2
    if-eqz v7, :cond_3

    if-eqz v10, :cond_4

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :cond_3
    :goto_1
    if-gtz v8, :cond_7

    .line 57
    const-string v1, "MDrmTracksActivity"

    const-string v2, "MDrmTracksLauncher noExpiredDrmFile"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a027d

    .line 59
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0308

    .line 60
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "noExpiredDrmFile"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    invoke-virtual {v10, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 48
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_2
    if-eqz v7, :cond_5

    if-eqz v2, :cond_6

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 63
    :cond_7
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v9, "i":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 54
    .end local v9    # "i":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    move-object v2, v10

    goto :goto_2
.end method
