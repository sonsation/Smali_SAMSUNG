.class public Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.super Ljava/lang/Object;
.source "CheckableListImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final mShowAsyncDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p2, "showAsyncDialog"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 33
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mShowAsyncDialog:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mShowAsyncDialog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILandroid/util/SparseBooleanArray;I)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/util/SparseBooleanArray;
    .param p3, "x3"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemIdsInternal(ILandroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method private getCheckedItemIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 8
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 87
    new-array v1, p2, [J

    .line 88
    .local v1, "checkedItemIds":[J
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 89
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 90
    .local v4, "size":I
    const/4 v3, 0x0

    .line 91
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 92
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 91
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    return-object v1
.end method

.method private getCheckedItemIdsInternal(ILandroid/util/SparseBooleanArray;I)[J
    .locals 2
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p3, "checkedItemCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemDeleteIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemSourceIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 8
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 102
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-eqz v5, :cond_1

    .line 103
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 104
    .local v4, "trackAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 105
    .local v3, "size":I
    const/4 v2, 0x0

    .line 106
    .local v2, "index":I
    new-array v0, p2, [J

    .line 107
    .local v0, "checkedItemIds":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 108
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getAudioId(I)J

    move-result-wide v6

    aput-wide v6, v0, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "checkedItemIds":[J
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "size":I
    .end local v4    # "trackAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method protected getCheckedItemDeleteIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 1
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIds(I)[J
    .locals 2
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 39
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v1

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->getCheckedItemIdsInternal(ILandroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .locals 6
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v4

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILandroid/util/SparseBooleanArray;ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method protected getCheckedItemSourceIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 12
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 126
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 127
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 128
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "source_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 129
    const-string/jumbo v8, "source_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 130
    .local v3, "columnIndex":I
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 131
    .local v7, "size":I
    const/4 v5, 0x0

    .line 133
    .local v5, "index":I
    new-array v2, p2, [J

    .line 134
    .local v2, "checkedSourceIds":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 135
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 137
    .local v6, "position":I
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v2, v5

    .line 139
    add-int/lit8 v5, v5, 0x1

    .line 134
    .end local v6    # "position":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_1
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCheckedItemSourceIds() | checkedSourceIds count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v2    # "checkedSourceIds":[J
    .end local v3    # "columnIndex":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v7    # "size":I
    :goto_1
    return-object v2

    .line 147
    :cond_2
    const-string v10, "UiList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fg: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " | isRemoving? "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    .line 148
    invoke-virtual {v8}, Landroid/app/Fragment;->isRemoving()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " | cursor: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " | cursor count: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v1, :cond_4

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " c.moveToFirst() "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v1, :cond_5

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_4
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 151
    goto :goto_1

    :cond_3
    move-object v8, v9

    .line 148
    goto :goto_2

    :cond_4
    move-object v8, v9

    .line 149
    goto :goto_3

    :cond_5
    move-object v8, v9

    .line 150
    goto :goto_4
.end method

.method public getValidItemCount()I
    .locals 8

    .prologue
    .line 55
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 56
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v2

    .line 57
    .local v2, "itemCount":I
    const/4 v3, 0x0

    .line 58
    .local v3, "validItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return v3
.end method
