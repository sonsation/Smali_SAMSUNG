.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistLoader"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;)V

    .line 801
    return-void
.end method

.method private makeViewType(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .param p1, "viewType"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 848
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "projection":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 851
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v0, "columnValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    array-length v3, v4

    .line 854
    .local v3, "len":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 855
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 858
    return-object v1
.end method


# virtual methods
.method protected loadInBackgroundInternal()Landroid/database/Cursor;
    .locals 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 808
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    .line 809
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 810
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 813
    .local v10, "local":Landroid/database/Cursor;
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    .end local v6    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v1, 0x1

    invoke-direct {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    .line 814
    .restart local v6    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 815
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 818
    .local v13, "online":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 819
    .local v11, "mergeCursorCount":I
    if-nez v10, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v11, v1

    .line 820
    if-nez v13, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int/2addr v11, v1

    .line 821
    if-nez v11, :cond_2

    .line 822
    const/4 v1, 0x0

    .line 843
    :goto_2
    return-object v1

    .line 819
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 820
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 825
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz v13, :cond_3

    .line 826
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v12, 0x1

    .line 827
    .local v12, "needSubTitle":Z
    :goto_3
    if-eqz v12, :cond_4

    .line 828
    const/4 v1, 0x4

    new-array v7, v1, [Landroid/database/Cursor;

    .line 829
    .local v7, "cursors":[Landroid/database/Cursor;
    const/4 v1, 0x0

    const/16 v2, -0x3ed

    invoke-direct {p0, v2, v10}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;->makeViewType(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v7, v1

    .line 830
    const/4 v1, 0x1

    aput-object v10, v7, v1

    .line 831
    const/4 v1, 0x2

    const/16 v2, -0x3ee

    invoke-direct {p0, v2, v13}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;->makeViewType(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v7, v1

    .line 832
    const/4 v1, 0x3

    aput-object v13, v7, v1

    .line 833
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_2

    .line 826
    .end local v7    # "cursors":[Landroid/database/Cursor;
    .end local v12    # "needSubTitle":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 835
    .restart local v12    # "needSubTitle":Z
    :cond_4
    new-array v7, v11, [Landroid/database/Cursor;

    .line 836
    .restart local v7    # "cursors":[Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 837
    .local v8, "index":I
    if-eqz v10, :cond_5

    .line 838
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    aput-object v10, v7, v8

    move v8, v9

    .line 840
    .end local v9    # "index":I
    .restart local v8    # "index":I
    :cond_5
    if-eqz v13, :cond_6

    .line 841
    aput-object v13, v7, v8

    .line 843
    :cond_6
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_2
.end method
