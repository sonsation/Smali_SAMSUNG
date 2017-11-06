.class public Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.super Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.source "ListDeleteableImpl.java"


# instance fields
.field private final mAsync:Z

.field private final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final mIdType:I
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
    .end annotation
.end field

.field private final mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;IZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;II)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param
    .param p3, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;IIZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;IIZ)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param
    .param p3, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p4, "async"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;-><init>(Landroid/app/Fragment;I)V

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 59
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 60
    iput p3, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mIdType:I

    .line 61
    iput-boolean p4, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mAsync:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;IZ)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param
    .param p3, "async"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;IIZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "async"    # Z

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;IZ)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/ListDeleteableImpl;[J)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/ListDeleteableImpl;
    .param p1, "x1"    # [J

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->showDeleteConfirmDialog([J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public deleteItems()V
    .locals 3

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mAsync:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mIdType:I

    new-instance v2, Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;-><init>(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->deleteItems()V

    goto :goto_0
.end method

.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    const/4 v4, 0x0

    .line 92
    const-string v2, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " deleteItemsInternal() | id count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    array-length v1, p2

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " this: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->ALL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-direct {v1, p1, p2, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;-><init>(Landroid/app/Activity;[JLcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;Z)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 96
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    .line 97
    .local v0, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .end local v0    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 100
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDeleteItemCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method protected getDeleteItemIds()[J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mIdType:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    return-object v0
.end method
