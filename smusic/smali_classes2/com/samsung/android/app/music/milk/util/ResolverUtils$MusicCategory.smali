.class public final Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;
.super Ljava/lang/Object;
.source "ResolverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/util/ResolverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicCategory"
.end annotation


# static fields
.field private static sGenreOrderUri:Landroid/net/Uri;

.field private static sGenreUri:Landroid/net/Uri;

.field private static sPeriodUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 716
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreUri:Landroid/net/Uri;

    .line 718
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryPeriod;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sPeriodUri:Landroid/net/Uri;

    .line 720
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenreOrder;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreOrderUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGenreInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genreId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 791
    const/4 v7, 0x0

    .line 793
    .local v7, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    const-string v3, "genre_id = ?"

    .line 795
    .local v3, "selections":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 797
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v2

    .line 798
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 799
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->createGenreInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 802
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 804
    :cond_1
    :goto_0
    return-object v7

    .line 802
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 797
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getGenreInfos(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genreType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 723
    const/4 v9, 0x0

    .line 724
    .local v9, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    const-string v3, "genre_category_name = ?"

    .line 725
    .local v3, "selections":Ljava/lang/String;
    const/4 v4, 0x0

    .line 726
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 728
    .local v7, "displayNameRes":I
    if-ne p1, v1, :cond_4

    .line 729
    new-array v4, v1, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v0, "\uad6d\ub0b4"

    aput-object v0, v4, v5

    .line 730
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const v7, 0x7f0a03ce

    .line 739
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v2

    .line 740
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 741
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 744
    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .local v10, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    :cond_1
    :try_start_1
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->createGenreInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    move-result-object v8

    .line 745
    .local v8, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->setDisplayCategoryNameRes(I)V

    .line 746
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    move-object v9, v10

    .line 749
    .end local v8    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .end local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v2, :cond_6

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 750
    :cond_3
    :goto_1
    return-object v9

    .line 731
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 732
    new-array v4, v1, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v0, "\ud574\uc678"

    aput-object v0, v4, v5

    .line 733
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const v7, 0x7f0a03cf

    goto :goto_0

    .line 734
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 735
    new-array v4, v1, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v0, "\uae30\ud0c0"

    aput-object v0, v4, v5

    .line 736
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const v7, 0x7f0a03d0

    goto :goto_0

    .line 749
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 739
    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 749
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v2, :cond_8

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .restart local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    :catchall_2
    move-exception v0

    move-object v9, v10

    .end local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    goto :goto_3

    .line 739
    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .restart local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    :catch_3
    move-exception v0

    move-object v9, v10

    .end local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    goto :goto_2
.end method

.method public static getGenreInfosWithReorder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 772
    const/4 v8, 0x0

    .line 774
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreOrderUri:Landroid/net/Uri;

    const-string v5, "genre_order asc"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 776
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 780
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    .local v9, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    :cond_0
    :try_start_1
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->createGenreInforWithOrderFromDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    move-result-object v7

    .line 781
    .local v7, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    const-string v0, "ResolverUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getGenreInfosWithReorder] info : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 782
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    move-object v8, v9

    .line 786
    .end local v7    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 787
    :cond_2
    :goto_0
    return-object v8

    .line 786
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 774
    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 786
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    goto :goto_2

    .line 774
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    :catch_3
    move-exception v0

    move-object v8, v9

    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    goto :goto_1
.end method

.method public static getGenreOrders(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 754
    const/4 v8, 0x0

    .line 756
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreOrderUri:Landroid/net/Uri;

    const-string v5, "genre_order asc"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 758
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->createGenreInforWithOrderFromDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    move-result-object v7

    .line 764
    .local v7, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    iget-object v0, v7, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->genreId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    move-object v8, v9

    .line 767
    .end local v7    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 768
    :cond_2
    :goto_0
    return-object v8

    .line 767
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 756
    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 767
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 756
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_3
    move-exception v0

    move-object v8, v9

    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public static getYearInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yearId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 808
    const/4 v7, 0x0

    .line 810
    .local v7, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    const-string/jumbo v3, "year_id = ?"

    .line 812
    .local v3, "selections":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 814
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sPeriodUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v2

    .line 815
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 816
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->createPeriodInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 819
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 821
    :cond_1
    :goto_0
    return-object v7

    .line 819
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 814
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getYearList(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "periodId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 825
    const-string/jumbo v3, "year_period_id = ?"

    .line 827
    .local v3, "selections":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 828
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sPeriodUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v2

    .line 831
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 832
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->createPeriodInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    move-result-object v7

    .line 835
    .local v7, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getYearName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 838
    .end local v7    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 840
    :cond_2
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 845
    :goto_1
    return-object v2

    .line 838
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 830
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 838
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 844
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .local v9, "yearList":[Ljava/lang/String;
    move-object v2, v9

    .line 845
    goto :goto_1

    .line 838
    .end local v9    # "yearList":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static insertOrderInfos(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p1, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 868
    .local v3, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 869
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v2, "value":Landroid/content/ContentValues;
    const-string v5, "genre_id"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v4, "genre_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    aput-object v2, v3, v1

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreOrderUri:Landroid/net/Uri;

    invoke-static {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_1
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static updateVisibleCategory(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 852
    .local v3, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 853
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 854
    .local v2, "value":Landroid/content/ContentValues;
    const-string v5, "genre_id"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    aput-object v2, v3, v1

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->sGenreOrderUri:Landroid/net/Uri;

    invoke-static {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_1
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
