.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
.super Ljava/lang/Object;
.source "DownloadBasketCheckableListImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$HeaderType;
    }
.end annotation


# instance fields
.field private mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Landroid/util/SparseBooleanArray;[I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;
    .param p2, "x2"    # [I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->getCheckedItemHeaderInfoInternal(Landroid/util/SparseBooleanArray;[I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->getCheckedPurchasableItemIdInternal(Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    move-result-object v0

    return-object v0
.end method

.method private varargs getCheckedItemHeaderInfoInternal(Landroid/util/SparseBooleanArray;[I)[Ljava/lang/String;
    .locals 10
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "headerTypes"    # [I

    .prologue
    .line 77
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v9

    instance-of v9, v9, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    if-eqz v9, :cond_3

    .line 78
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    .line 79
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    array-length v9, p2

    new-array v2, v9, [Ljava/lang/String;

    .line 80
    .local v2, "headerInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "alreadyPurchasedCount":I
    const/4 v5, 0x0

    .line 82
    .local v5, "purchaseCount":I
    const/4 v7, 0x0

    .line 84
    .local v7, "totalPrice":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 85
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 86
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getPrice(I)I

    move-result v4

    .line 87
    .local v4, "price":I
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getStatusCode(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "statusCode":Ljava/lang/String;
    const-string v9, "00"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 93
    :goto_1
    add-int/2addr v7, v4

    .line 84
    .end local v4    # "price":I
    .end local v6    # "statusCode":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .restart local v4    # "price":I
    .restart local v6    # "statusCode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 97
    .end local v4    # "price":I
    .end local v6    # "statusCode":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v9, p2

    if-ge v3, v9, :cond_4

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, "value":Ljava/lang/String;
    aget v9, p2, v3

    packed-switch v9, :pswitch_data_0

    .line 110
    :goto_3
    aput-object v8, v2, v3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 101
    :pswitch_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 102
    goto :goto_3

    .line 104
    :pswitch_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    goto :goto_3

    .line 107
    :pswitch_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 114
    .end local v0    # "adapter":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    .end local v1    # "alreadyPurchasedCount":I
    .end local v2    # "headerInfo":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "purchaseCount":I
    .end local v7    # "totalPrice":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/String;

    :cond_4
    return-object v2

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCheckedPurchasableItemIdInternal(Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .locals 10
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 119
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;)V

    .line 120
    .local v4, "item":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v8

    instance-of v8, v8, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    if-eqz v8, :cond_2

    .line 121
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    .line 122
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 123
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 124
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 125
    .local v5, "position":I
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getAudioId(I)J

    move-result-wide v2

    .line 126
    .local v2, "audioId":J
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getStatusCode(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "statusCode":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getTrackId(I)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "trackId":Ljava/lang/String;
    iget-object v8, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->allAudioIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v8, "00"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    iget-object v8, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->alreadyPurchasedAudioIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "audioId":J
    .end local v5    # "position":I
    .end local v6    # "statusCode":Ljava/lang/String;
    .end local v7    # "trackId":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .restart local v2    # "audioId":J
    .restart local v5    # "position":I
    .restart local v6    # "statusCode":Ljava/lang/String;
    .restart local v7    # "trackId":Ljava/lang/String;
    :cond_1
    iget-object v8, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    .end local v0    # "adapter":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    .end local v1    # "i":I
    .end local v2    # "audioId":J
    .end local v5    # "position":I
    .end local v6    # "statusCode":Ljava/lang/String;
    .end local v7    # "trackId":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private varargs getEmptyResult([I)[Ljava/lang/String;
    .locals 3
    .param p1, "headerTypes"    # [I

    .prologue
    .line 68
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 69
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 70
    const-string v2, "0"

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method


# virtual methods
.method public varargs getCheckedItemHeaderInfoAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;[I)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;
    .param p2, "headerTypes"    # [I

    .prologue
    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 60
    .local v0, "positions":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;Landroid/util/SparseBooleanArray;[I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->getEmptyResult([I)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;->result([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCheckedPurchasableItemIdAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 51
    .local v0, "positions":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;Landroid/util/SparseBooleanArray;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 53
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    :cond_0
    return-void
.end method
