.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStoreLyricsViewHolder.java"


# instance fields
.field private artistName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field private imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mBlankLayout:Landroid/widget/LinearLayout;

.field private more:Landroid/view/View;

.field private partialLyric:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field private songTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v0, 0x7f120406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 42
    const v0, 0x7f120130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->songTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 43
    const v0, 0x7f120131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->artistName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 44
    const v0, 0x7f1203f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->more:Landroid/view/View;

    .line 45
    const v0, 0x7f120478

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->partialLyric:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 46
    const v0, 0x7f12047a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->mBlankLayout:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const v2, 0x7f04018e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1203f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 31
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 33
    const v2, 0x7f1203f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "stub":Landroid/view/ViewStub;
    check-cast v0, Landroid/view/ViewStub;

    .line 34
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 36
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method


# virtual methods
.method public getArtistName()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->artistName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method

.method public getBlankLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->mBlankLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getMore()Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->more:Landroid/view/View;

    return-object v0
.end method

.method public getPartialLyric()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->partialLyric:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method

.method public getSongTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->songTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method
