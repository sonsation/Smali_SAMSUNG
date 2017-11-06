.class Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MilkGoAlbumMenuItem"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mContext:Landroid/content/Context;

.field private mMilkAlbumId:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/app/Activity;J)V
    .locals 1
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "albumId"    # J

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 474
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mContext:Landroid/content/Context;

    .line 475
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mAlbumId:J

    .line 476
    return-void
.end method

.method private getMilkAlbumId()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 497
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->BASE_ALBUM_CONTENT_URI:Landroid/net/Uri;

    .line 498
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "source_album_id"

    aput-object v5, v2, v0

    .line 499
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mAlbumId:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mContext:Landroid/content/Context;

    move-object v5, v4

    .line 501
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 502
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    const-string/jumbo v0, "source_album_id"

    .line 504
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 503
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 506
    if-eqz v6, :cond_0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 507
    :cond_1
    :goto_1
    return-object v4

    .line 506
    :catch_0
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 500
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    :catchall_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mMilkAlbumId:Ljava/lang/String;

    .line 491
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 492
    const-string v0, "4323"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->getMilkAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mMilkAlbumId:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->mMilkAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    goto :goto_0
.end method
