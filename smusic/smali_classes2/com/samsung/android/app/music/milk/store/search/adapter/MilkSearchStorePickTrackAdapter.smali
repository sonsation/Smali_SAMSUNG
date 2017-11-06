.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;
.source "MilkSearchStorePickTrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStorePickTrackAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;->mSelectMode:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->addAll(Ljava/util/List;)V

    .line 52
    return-void
.end method

.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->clear(Z)V

    .line 57
    return-void
.end method

.method public clearList()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;->updateList(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method protected createTrackViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->CHECK_BOX:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->IMAGE:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->SHORT_DIVIDER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MATCHED_TEXT:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    .line 31
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "MilkSearchStorePickTrackAdapter"

    return-object v0
.end method

.method public playWithCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 37
    return-void
.end method

.method protected shouldShowSelectHeader()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected supportAnimationEffect()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method protected supportLongClick()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
