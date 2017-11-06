.class public Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "RadioHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;,
        Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioHistoryAdapter"


# instance fields
.field private mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

.field private mOnMoreMenuItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mOnMoreMenuItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    return-object v0
.end method

.method private equalsDate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "date1"    # Ljava/lang/String;
    .param p2, "date2"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x0

    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 200
    :cond_0
    return v0
.end method

.method private getHistoryType(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->isDateStationTrackItem(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->isStationTrackItem(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x2

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private isDateStationTrackItem(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 180
    const-string v2, "RadioHistoryAdapter"

    const-string v4, "hasHeader  cursor is null"

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 183
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    const-string v4, "date_locale"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "date":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 188
    const-string v4, "date_locale"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "prevDate":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 190
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->equalsDate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isStationTrackItem(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 204
    const-string/jumbo v3, "station_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "stationIdCol":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "curStationId":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "prevStationId":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const/4 v3, 0x0

    .line 213
    .end local v1    # "prevStationId":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showStationTitle(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 119
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationTitle:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 120
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationItem:Landroid/view/View;

    const v4, 0x7f120130

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 121
    .local v2, "title":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v3, "display_station_name"

    .line 129
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    const-string/jumbo v3, "station_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->trackTopDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-void
.end method

.method private validateStationMoreMenu(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 146
    const-string/jumbo v1, "station_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "stationId":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Ljava/lang/String;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 153
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;)V

    .line 154
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 166
    return-void
.end method


# virtual methods
.method public getCheckedPlayHistories([J)Ljava/util/ArrayList;
    .locals 12
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 217
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v7, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    const-string v0, "radio_history_view._id"

    .line 219
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "selectedIds":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "track_id"

    aput-object v5, v2, v9

    const-string/jumbo v5, "station_id"

    aput-object v5, v2, v10

    const-string v5, "date"

    aput-object v5, v2, v11

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    :cond_0
    new-instance v8, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    invoke-direct {v8}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;-><init>()V

    .line 228
    .local v8, "history":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->setTrackId(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->setStationId(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->setDateStamp(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 237
    .end local v8    # "history":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    :goto_0
    if-eqz v6, :cond_1

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :cond_1
    :goto_1
    return-object v7

    .line 234
    :cond_2
    :try_start_2
    const-string v0, "RadioHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckedPlayHistories : c is null or c.moveToFirst is failed. c : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->initLayout()V

    .line 83
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->trackTopDivider:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->isActionModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->moreMenu:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getHistoryType(Landroid/database/Cursor;)I

    move-result v3

    .line 95
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 115
    :goto_1
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->moreMenu:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    return-void

    .line 90
    .end local v3    # "type":I
    :cond_0
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->moreMenu:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 97
    .restart local v3    # "type":I
    :pswitch_0
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    const-string v4, "date_locale"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "date":Ljava/lang/String;
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getDateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mWinsetUiEnabled:Z

    if-eqz v4, :cond_1

    .line 103
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 104
    .local v2, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101030e

    const/4 v6, 0x1

    .line 105
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 110
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->showStationTitle(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Landroid/database/Cursor;)V

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->validateStationMoreMenu(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Landroid/database/Cursor;)V

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 70
    if-nez p3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040040

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 74
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 61
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    .line 65
    return-void
.end method

.method public setOnMoreMenuItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->mOnMoreMenuItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 57
    return-void
.end method
