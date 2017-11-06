.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "MilkSearchStoreLyricsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchLyricsAdapter"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->clear(Z)V

    .line 189
    return-void
.end method

.method protected createSearchLyricsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToRecyclerView : context is activity"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 63
    :cond_0
    return-void
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 13
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f110044

    .line 82
    instance-of v8, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;

    if-eqz v8, :cond_2

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;

    .line 85
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    .line 87
    .local v5, "lyrics":Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v8

    const v9, 0x7f0201da

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;

    invoke-direct {v9, p0, v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getSongTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v8

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 103
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getSongTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getPrimaryColor()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getSongTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getTrackTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getArtistName()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v8

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 108
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getArtistName()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getPrimaryColor()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getArtistName()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getArtistsName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getMore()Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;

    invoke-direct {v9, p0, v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getPartialLyric()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v6

    .line 131
    .local v6, "partialLyric":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "lyric":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "keyword":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v7, "sp":Landroid/text/Spannable;
    const/4 v1, -0x1

    .local v1, "i":I
    :goto_1
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 143
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getPrimaryColor()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    const/16 v10, 0x21

    invoke-interface {v7, v8, v1, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 137
    .end local v1    # "i":I
    .end local v3    # "keyword":Ljava/lang/String;
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "keyword":Ljava/lang/String;
    goto :goto_0

    .line 148
    .restart local v1    # "i":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 147
    invoke-virtual {v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getPrimaryColor()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 151
    new-instance v8, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;)V

    invoke-virtual {v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->getItemCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq p2, v8, :cond_3

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getBlankLayout()Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;
    .end local v1    # "i":I
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "keyword":Ljava/lang/String;
    .end local v4    # "lyric":Ljava/lang/String;
    .end local v5    # "lyrics":Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;
    .end local v6    # "partialLyric":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_2
    :goto_2
    return-void

    .line 171
    .restart local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;
    .restart local v1    # "i":I
    .restart local v2    # "imageUrl":Ljava/lang/String;
    .restart local v3    # "keyword":Ljava/lang/String;
    .restart local v4    # "lyric":Ljava/lang/String;
    .restart local v5    # "lyrics":Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;
    .restart local v6    # "partialLyric":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;->getBlankLayout()Landroid/widget/LinearLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->createSearchLyricsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreLyricsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 69
    return-void
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method
