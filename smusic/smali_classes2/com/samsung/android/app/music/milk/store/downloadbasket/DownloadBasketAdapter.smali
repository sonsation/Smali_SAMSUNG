.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "DownloadBasketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mFileExtensionCol:Ljava/lang/String;

.field protected mFileExtensionColumnIndex:I

.field public final mPriceCol:Ljava/lang/String;

.field protected mPriceColumnIndex:I

.field public final mStatusCodeCol:Ljava/lang/String;

.field protected mStatusCodeColumnIndex:I

.field private final mTabId:I

.field public final mTrackIdCol:Ljava/lang/String;

.field protected mTrackIdColumnIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdColumnIndex:I

    .line 29
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceColumnIndex:I

    .line 31
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeColumnIndex:I

    .line 33
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionColumnIndex:I

    .line 39
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mTrackIdCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdCol:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mPriceCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceCol:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mStatusCodeCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeCol:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mFileExtensionCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionCol:Ljava/lang/String;

    .line 43
    iget v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mTabId:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTabId:I

    .line 44
    return-void
.end method


# virtual methods
.method public getPrice(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "price":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceColumnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 141
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceColumnIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 143
    :cond_0
    return v1
.end method

.method public getStatusCode(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeColumnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 132
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeColumnIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    return-object v1
.end method

.method public getTrackId(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdColumnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 122
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdColumnIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    return-object v1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdCol:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTrackIdColumnIndex:I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceCol:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceColumnIndex:I

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeCol:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeColumnIndex:I

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionCol:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionColumnIndex:I

    .line 86
    :cond_3
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTabId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceColumnIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeColumnIndex:I

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->onBindViewHolderPrice(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V

    .line 63
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionColumnIndex:I

    if-eq v0, v1, :cond_1

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->onBindViewHolderFileExtension(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V

    .line 66
    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderFileExtension(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 108
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTabId:I

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0487

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "extension":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->fileExtension:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void

    .line 111
    .end local v1    # "extension":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    .local v0, "c":Landroid/database/Cursor;
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFileExtensionColumnIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "extension":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onBindViewHolderPrice(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    .local v0, "c":Landroid/database/Cursor;
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mPriceColumnIndex:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "price":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mStatusCodeColumnIndex:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "statusCode":Ljava/lang/String;
    const-string v3, "00"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->price:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a02a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mTabId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 96
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->price:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a02a3

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->price:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    if-nez p3, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003f

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 53
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;

    move-result-object v0

    return-object v0
.end method
