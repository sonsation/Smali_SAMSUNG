.class public Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;
.super Landroid/os/AsyncTask;
.source "MilkDownloadable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/download/MilkDownloadable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemSourceIdGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCheckedItemCount:I

.field private final mCheckedItemPositions:Landroid/util/SparseBooleanArray;

.field private final mSourceIdColumnName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/download/MilkDownloadable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/download/MilkDownloadable;Landroid/util/SparseBooleanArray;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/download/MilkDownloadable;
    .param p2, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p3, "checkedItemCount"    # I
    .param p4, "sourceIdColumnName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->this$0:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    const-class v0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->TAG:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    .line 54
    iput p3, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mCheckedItemCount:I

    .line 55
    iput-object p4, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mSourceIdColumnName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getCheckedItemIdsInternal(Landroid/util/SparseBooleanArray;I)[Ljava/lang/String;
    .locals 11
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 65
    iget-object v8, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->this$0:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-static {v8}, Lcom/samsung/android/app/music/download/MilkDownloadable;->access$000(Lcom/samsung/android/app/music/download/MilkDownloadable;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 66
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 67
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mSourceIdColumnName:Ljava/lang/String;

    .line 68
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 69
    iget-object v8, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mSourceIdColumnName:Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 70
    .local v3, "columnIndex":I
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 71
    .local v7, "size":I
    const/4 v5, 0x0

    .line 73
    .local v5, "index":I
    new-array v2, p2, [Ljava/lang/String;

    .line 74
    .local v2, "checkedSourceIds":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 75
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 77
    .local v6, "position":I
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 78
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 74
    .end local v6    # "position":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->TAG:Ljava/lang/String;

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

    .line 89
    .end local v2    # "checkedSourceIds":[Ljava/lang/String;
    .end local v3    # "columnIndex":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v7    # "size":I
    :goto_1
    return-object v2

    .line 87
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCheckedItemSourceIds() Cursor in adapter does have "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mSourceIdColumnName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " column"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->mCheckedItemCount:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->getCheckedItemIdsInternal(Landroid/util/SparseBooleanArray;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 1
    .param p1, "results"    # [Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->this$0:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable;->access$100(Lcom/samsung/android/app/music/download/MilkDownloadable;[Ljava/lang/String;)V

    .line 96
    return-void
.end method
