.class public Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "PurchasedTrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PurchasedTrackAdapter"


# instance fields
.field private mDownloadableState:Z

.field private final mLoadMoreManager:Lcom/samsung/android/app/music/list/LoadMoreManager;

.field private mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mDownloadableState:Z

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mLoadMoreManager:Lcom/samsung/android/app/music/list/LoadMoreManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method private equalsDate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "date1"    # Ljava/lang/String;
    .param p2, "date2"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x0

    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method

.method private hasHeader(Landroid/database/Cursor;I)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 114
    const-string v2, "PurchasedTrackAdapter"

    const-string v4, "hasHeader  cursor is null"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 125
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    const-string v4, "order_date_local"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "date":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->isFirstItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 122
    const-string v4, "order_date_local"

    .line 123
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "prevDate":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 125
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->equalsDate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isFirstItem(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->getHeaderViewCount()I

    move-result v0

    .line 149
    .local v0, "headerCount":I
    sub-int v1, p1, v0

    if-nez v1, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v1

    .line 133
    .local v1, "viewType":I
    if-gtz v1, :cond_0

    .line 143
    .end local v1    # "viewType":I
    :goto_0
    return v1

    .line 136
    .restart local v1    # "viewType":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 140
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->hasHeader(Landroid/database/Cursor;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const/16 v1, 0x64

    goto :goto_0

    .line 143
    :cond_1
    const/16 v1, 0xc8

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->getItemViewType()I

    move-result v5

    .line 72
    .local v5, "viewType":I
    const/16 v6, -0x3eb

    if-ne v5, v6, :cond_0

    .line 73
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mLoadMoreManager:Lcom/samsung/android/app/music/list/LoadMoreManager;

    invoke-interface {v6}, Lcom/samsung/android/app/music/list/LoadMoreManager;->loadMore()V

    .line 109
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->hasHeader(Landroid/database/Cursor;I)Z

    move-result v3

    .line 77
    .local v3, "hasheader":Z
    const-string v6, "order_date_local"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "date":Ljava/lang/String;
    iget-object v9, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->headerText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->headerText:Landroid/widget/TextView;

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const-string v6, "download_state"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 85
    .local v2, "downloadState":I
    const-string/jumbo v6, "title"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "title":Ljava/lang/String;
    const-string v6, "PurchasedTrackAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "purchased track info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v9, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->downloadLayout:Landroid/view/View;

    if-eq v2, v11, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mDownloadableState:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 92
    if-ne v11, v2, :cond_3

    .line 93
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->textView3:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0a032a

    .line 94
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2    # "downloadState":I
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 78
    goto :goto_1

    .restart local v2    # "downloadState":I
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 88
    goto :goto_2

    .line 97
    :cond_3
    const/4 v6, 0x1

    if-ne v6, v2, :cond_4

    .line 98
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->textView3:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0a032b

    .line 99
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->progress:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->download:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->progress:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->download:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 55
    if-nez p3, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003f

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 61
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadableEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 247
    const-string v0, "PurchasedTrackAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDownloadableEnabled() - enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mDownloadableState:Z

    .line 249
    return-void
.end method

.method public setOnItemButtonClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 49
    return-void
.end method
