.class public Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrackListHeaderViewHolder.java"


# instance fields
.field private mPlayAll:Landroid/view/View;

.field private mSelect:Landroid/widget/TextView;

.field private mShadowTop:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    const v0, 0x7f1200b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->mSelect:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f12040c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->mPlayAll:Landroid/view/View;

    .line 30
    const v0, 0x7f120408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->mShadowTop:Landroid/view/View;

    .line 31
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;->SELECT:Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "type":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;>;"
    new-instance v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->inflateHeader(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;
    return-object v0
.end method


# virtual methods
.method public getPlayAll()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->mPlayAll:Landroid/view/View;

    return-object v0
.end method

.method public getSelect()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->mSelect:Landroid/widget/TextView;

    return-object v0
.end method

.method public getShadowTop()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->mShadowTop:Landroid/view/View;

    return-object v0
.end method
