.class Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDeletable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/app/Fragment;)V
    .locals 1
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;Z)V

    .line 412
    return-void
.end method


# virtual methods
.method protected getDeletePopupMessageId()I
    .locals 11

    .prologue
    .line 416
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 417
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 418
    .local v7, "size":I
    const/4 v8, -0x1

    .line 419
    .local v8, "startCheckedPosition":I
    const/4 v3, -0x1

    .line 420
    .local v3, "endCheckedPosition":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    .line 421
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 422
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 423
    .local v2, "checkedPosition":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    .line 424
    move v8, v2

    .line 425
    move v3, v2

    .line 420
    .end local v2    # "checkedPosition":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 427
    .restart local v2    # "checkedPosition":I
    :cond_1
    move v3, v2

    goto :goto_1

    .line 431
    .end local v2    # "checkedPosition":I
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    .line 432
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v9

    .line 433
    .local v9, "startMimeType":I
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v4

    .line 434
    .local v4, "endMimeType":I
    const/4 v6, -0x1

    .line 435
    .local v6, "messageId":I
    if-ne v9, v4, :cond_3

    .line 436
    packed-switch v9, :pswitch_data_0

    .line 451
    :goto_2
    return v6

    .line 438
    :pswitch_0
    const v6, 0x7f0c000a

    .line 439
    goto :goto_2

    .line 441
    :pswitch_1
    const v6, 0x7f0c0009

    .line 442
    goto :goto_2

    .line 444
    :pswitch_2
    const v6, 0x7f0c0011

    .line 445
    goto :goto_2

    .line 449
    :cond_3
    const v6, 0x7f0c000e

    goto :goto_2

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
