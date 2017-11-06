.class public Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;
.super Ljava/lang/Object;
.source "DefaultCardViewableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;,
        Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$ThumbnailKeyMeta;
    }
.end annotation


# static fields
.field private static final CARD_VIEW_ITEM_COUNT_PHONE:I = 0x3

.field private static final CARD_VIEW_ITEM_COUNT_TABLET:I = 0x4


# instance fields
.field private final mBottomSpaceEnabled:Z

.field private final mCardViewItemCount:I

.field private mCardViewItemLayout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCpAttrsCol:Ljava/lang/String;

.field private final mFragment:Landroid/app/Fragment;

.field private final mMainTextCol:Ljava/lang/String;

.field private final mSubTextCol:Ljava/lang/String;

.field private final mThumbnailIdCol:Ljava/lang/String;

.field private final mTitleResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$000(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mFragment:Landroid/app/Fragment;

    .line 69
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$000(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$100(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mTitleResId:I

    .line 71
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$200(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mMainTextCol:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$300(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mSubTextCol:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$400(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mThumbnailIdCol:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$500(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCpAttrsCol:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$600(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCardViewItemCount:I

    .line 76
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$700(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mBottomSpaceEnabled:Z

    .line 77
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->access$800(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCardViewItemLayout:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)V

    return-void
.end method


# virtual methods
.method public getCardViewItemCount()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCardViewItemCount:I

    return v0
.end method

.method public onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04002e

    const/4 v6, 0x0

    .line 84
    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;-><init>()V

    .line 86
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    .line 87
    const v4, 0x7f120114

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->titleView:Landroid/widget/TextView;

    .line 88
    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mBottomSpaceEnabled:Z

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mFragment:Landroid/app/Fragment;

    .line 90
    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    .local v1, "marginBottom":I
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 93
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v6

    .line 92
    invoke-static {v2, v4, v5, v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/view/ViewCompat;->setMarginsRelative(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 95
    .end local v1    # "marginBottom":I
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .locals 9
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    const v5, 0x7f120115

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 102
    .local v4, "parent":Landroid/view/ViewGroup;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 104
    .local v3, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCardViewItemLayout:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 105
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "itemView":Landroid/view/View;
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;-><init>()V

    .line 108
    .local v1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    iput-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    .line 109
    const v5, 0x7f120116

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 110
    const v5, 0x7f120116

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnailClickArea:Landroid/view/View;

    .line 111
    const v5, 0x7f120119

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    .line 112
    const v5, 0x7f12011a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    .line 113
    const v5, 0x7f12011b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->playIcon:Landroid/view/View;

    .line 115
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mSubTextCol:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .local v0, "constraintSet":Landroid/support/constraint/ConstraintSet;
    move-object v5, v2

    .line 118
    check-cast v5, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 119
    const v5, 0x7f120119

    const/4 v6, 0x3

    const v7, 0x7f12011b

    const/4 v8, 0x3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/support/constraint/ConstraintSet;->connect(IIII)V

    .line 121
    const v5, 0x7f120119

    const/4 v6, 0x4

    const v7, 0x7f12011b

    const/4 v8, 0x4

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/support/constraint/ConstraintSet;->connect(IIII)V

    .line 123
    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    .end local v2    # "itemView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 125
    .end local v0    # "constraintSet":Landroid/support/constraint/ConstraintSet;
    :cond_0
    return-object v1
.end method

.method public onCreateLoader()Landroid/content/Loader;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPlayIconClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    return-void
.end method

.method public onThumbnailClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    return-void
.end method

.method public updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 131
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 132
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 133
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 144
    iget v1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mTitleResId:I

    if-eq v1, v3, :cond_2

    .line 145
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mTitleResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    :goto_1
    return-void

    .line 137
    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 17
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    if-eqz p2, :cond_6

    .line 157
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v5, "descriptionBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mMainTextCol:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 160
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mMainTextCol:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mSubTextCol:Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    if-eqz v12, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mSubTextCol:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 165
    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "subText":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mMainTextCol:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 169
    const-string v12, ", "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 175
    .end local v7    # "subText":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCpAttrsCol:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mCpAttrsCol:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 184
    .local v4, "cpAttrs":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mThumbnailIdCol:Ljava/lang/String;

    .line 185
    .local v10, "thumbnailIdCol":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 186
    .local v8, "thumbnailId":J
    invoke-static {v4}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v11

    .line 188
    .local v11, "thumbnailUri":Landroid/net/Uri;
    const v12, 0x7f0d0063

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v12

    .line 189
    invoke-virtual {v12, v11, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    sget v14, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 190
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 206
    .end local v4    # "cpAttrs":I
    .end local v5    # "descriptionBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "thumbnailId":J
    .end local v10    # "thumbnailIdCol":Ljava/lang/String;
    .end local v11    # "thumbnailUri":Landroid/net/Uri;
    :goto_1
    return-object v12

    .line 178
    .restart local v5    # "descriptionBuilder":Ljava/lang/StringBuilder;
    :cond_3
    const v4, 0x10001

    .restart local v4    # "cpAttrs":I
    goto :goto_0

    .line 193
    .end local v4    # "cpAttrs":I
    .end local v5    # "descriptionBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 194
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 195
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 196
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "columnNames":[Ljava/lang/String;
    array-length v13, v3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v2, v3, v12

    .line 198
    .local v2, "columnName":Ljava/lang/String;
    const-string v14, "UiList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->mFragment:Landroid/app/Fragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " columnName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 200
    .end local v2    # "columnName":Ljava/lang/String;
    :cond_4
    throw v6

    .line 202
    .end local v3    # "columnNames":[Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 205
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 206
    const/4 v12, 0x0

    goto :goto_1
.end method
