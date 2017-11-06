.class public Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
.super Ljava/lang/Object;
.source "PlaylistCursorBuilder.java"


# static fields
.field private static final PLAYLIST_DEFAULT_LIST_TITLE_ENABLED:Z

.field private static final PLAYLIST_USER_LIST_TITLE_ENABLED:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "fg"    # Landroid/app/Fragment;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mListItemIds:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mOriginalCursor:Landroid/database/Cursor;

    .line 30
    return-void
.end method

.method private makeListItem(JI)Ljava/util/ArrayList;
    .locals 5
    .param p1, "listItemId"    # J
    .param p3, "listItemTitleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x2

    .line 77
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 79
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "listItemId"    # J

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mListItemIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public build()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 37
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    iget-object v6, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    .line 38
    .local v6, "projection":[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 48
    .local v2, "firstCursor":Landroid/database/MatrixCursor;
    iget-object v8, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mListItemIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 49
    .local v3, "mListItemId":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 51
    .local v4, "listItemId":J
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v9

    invoke-direct {p0, v4, v5, v9}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->makeListItem(JI)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 59
    .end local v3    # "mListItemId":Ljava/lang/Long;
    .end local v4    # "listItemId":J
    :cond_0
    const/4 v8, 0x2

    new-array v1, v8, [Landroid/database/Cursor;

    aput-object v2, v1, v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mOriginalCursor:Landroid/database/Cursor;

    aput-object v9, v1, v8

    .line 61
    .local v1, "cursors":[Landroid/database/Cursor;
    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v0, v1, v7

    .line 62
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 63
    iget-object v9, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->mOriginalCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v7, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v7

    .line 61
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
