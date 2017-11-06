.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MusicCategoryGenreAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;
.implements Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescInfo;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;",
        "Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryGenreAdpater"

.field private static final TYPE_DESC:I = -0x64

.field private static final TYPE_ITEM:I = 0x64

.field private static final TYPE_SUBTITLE:I = -0x3e8


# instance fields
.field private mMenu:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;

.field private mPreSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mPreSelectedItems:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mMenu:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mMenu:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;

    return-object v0
.end method

.method private static applyCheckBoxStyle(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 6
    .param p0, "checkBox"    # Landroid/widget/CheckBox;
    .param p1, "checkBoxContainer"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 207
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v2, :cond_0

    .line 208
    const v2, 0x7f020084

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 209
    const v2, 0x7f020250

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 212
    :cond_0
    new-array v1, v3, [[I

    new-array v2, v5, [I

    aput-object v2, v1, v5

    .line 213
    .local v1, "states":[[I
    new-array v0, v3, [I

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v5

    .line 214
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 215
    return-void
.end method

.method private generateSubTitle(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "newInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    new-instance v4, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescInfo;

    invoke-direct {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescInfo;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v3, ""

    .line 191
    .local v3, "prevCategoryName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 192
    .local v1, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getDisplayCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "displayCategoryName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    new-instance v5, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    move-object v3, v0

    .line 196
    if-nez v3, :cond_0

    .line 197
    const-string v3, ""

    .line 200
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "displayCategoryName":Ljava/lang/String;
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 178
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescInfo;

    if-eqz v1, :cond_0

    .line 179
    const/16 v1, -0x64

    .line 183
    :goto_0
    return v1

    .line 180
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;

    if-eqz v1, :cond_1

    .line 181
    const/16 v1, -0x3e8

    goto :goto_0

    .line 183
    :cond_1
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public getMargin(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "type"    # I
        .annotation build Lcom/samsung/android/app/music/milk/store/widget/MarginControllable$MarginPosition;
        .end annotation
    .end param
    .param p3, "originalMargin"    # I

    .prologue
    .line 230
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 237
    .end local p3    # "originalMargin":I
    :cond_0
    :goto_0
    return p3

    .line 234
    .restart local p3    # "originalMargin":I
    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method

.method public getSpanSize(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "layoutSpanSize"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItemViewType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 224
    const/4 p2, 0x1

    .end local p2    # "layoutSpanSize":I
    :sswitch_0
    return p2

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        -0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public isClickable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 101
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 102
    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;

    .line 104
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelected(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->applyCheckBoxStyle(Landroid/widget/CheckBox;Landroid/view/View;)V

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isHangul(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "sec-roboto-light"

    .line 119
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .end local v1    # "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;
    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-void

    .line 108
    .restart local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .restart local v1    # "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;
    .restart local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "sans-serif"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 123
    .end local v1    # "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;
    :cond_3
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;

    if-eqz v2, :cond_4

    .line 124
    instance-of v2, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;

    if-eqz v2, :cond_0

    .line 125
    check-cast p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;

    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    check-cast v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;

    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    .restart local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .restart local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 128
    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;

    .line 129
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getEditButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getDoneButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getReorderButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getDescTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f0a03d2

    .line 132
    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getEditButton()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getDoneButton()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->getReorderButton()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 129
    goto :goto_2

    :cond_6
    move v2, v3

    .line 130
    goto :goto_3

    :cond_7
    move v4, v3

    .line 131
    goto :goto_4

    .line 133
    :cond_8
    const v2, 0x7f0a03cd

    goto :goto_5
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 87
    sparse-switch p2, :sswitch_data_0

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    .line 89
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_1
        -0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method setPreSelectedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "preSelectedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mPreSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mPreSelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-void
.end method

.method protected shouldClearSelectedItemWhileModeChange()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public swapArray(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->generateSubTitle(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->swapArray(Ljava/util/List;)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mPreSelectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 75
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 77
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mPreSelectedItems:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->selectItem(IZZ)V

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->mPreSelectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 83
    .end local v1    # "pos":I
    :cond_2
    return-void
.end method
