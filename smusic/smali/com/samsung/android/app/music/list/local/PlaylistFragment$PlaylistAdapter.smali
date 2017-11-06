.class public Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmptyViewVisible:Z

.field private final mIsSmallScreenUiEnabled:Z

.field private mPlaylistCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 868
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mPlaylistCount:I

    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mIsSmallScreenUiEnabled:Z

    .line 873
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->isActionModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->isSyncPlaylist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private initViewCompanyInformation(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1105
    const v2, 0x7f1201b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    const v2, 0x7f1201b3

    .line 1107
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1108
    .local v0, "informationText":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1110
    new-instance v1, Landroid/text/SpannableString;

    .line 1111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a025b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1112
    .local v1, "linkStr":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$5;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    return-void
.end method

.method private initViewCreatePlaylist(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 1048
    const v1, 0x7f12013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1049
    .local v0, "createPlaylistTextView":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00f3

    .line 1050
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1051
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 1087
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->isActionModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->setViewEnabled(Z)V

    .line 1089
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 1102
    return-void

    .line 1087
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSyncPlaylist(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1126
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1127
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const-string v2, "is_sync"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v8, 0x7f120247

    const/16 v7, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 967
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemViewType(I)I

    move-result v5

    .line 968
    .local v5, "viewType":I
    packed-switch v5, :pswitch_data_0

    .line 985
    iget-boolean v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mIsSmallScreenUiEnabled:Z

    if-eqz v8, :cond_2

    const/16 v8, -0x7d1

    if-ne v5, v8, :cond_2

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 970
    :pswitch_0
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a04b0

    .line 971
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 974
    :pswitch_1
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a04b1

    .line 975
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 978
    :pswitch_2
    iget-object v8, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v9, 0x7f12013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mIsSmallScreenUiEnabled:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mEmptyViewVisible:Z

    if-eqz v9, :cond_1

    :goto_1
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 990
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 992
    iget-boolean v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mIsSmallScreenUiEnabled:Z

    if-eqz v8, :cond_0

    .line 993
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 994
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v8, -0x3

    if-ne v5, v8, :cond_4

    .line 996
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 997
    const v6, 0x7f0201c4

    invoke-virtual {v1, v6, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 998
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const v6, 0x7f110041

    invoke-static {v1, v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 999
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1003
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00f3

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, "strCreatePlaylist":Ljava/lang/String;
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0a01e1

    .line 1006
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1005
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1008
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1011
    .end local v2    # "strCreatePlaylist":Ljava/lang/String;
    :cond_4
    const/4 v7, -0x7

    if-ne v5, v7, :cond_5

    .line 1012
    iget-object v7, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v8, 0x7f120149

    .line 1013
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1014
    .local v4, "textView":Landroid/widget/TextView;
    const-string v7, "%s (%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x7f0a0121

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x1

    iget v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mPlaylistCount:I

    .line 1015
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    .line 1014
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, "subTitle":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    const v6, 0x7f110044

    .line 1018
    invoke-static {v1, v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 1017
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1021
    .end local v3    # "subTitle":Ljava/lang/String;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_5
    int-to-long v8, v5

    const-wide/16 v10, -0xb

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    int-to-long v8, v5

    const-wide/16 v10, -0xc

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    int-to-long v8, v5

    const-wide/16 v10, -0xe

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    int-to-long v8, v5

    const-wide/16 v10, -0xd

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    .line 1025
    :cond_6
    iget-object v7, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1028
    :cond_7
    iget-object v7, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v7, :cond_8

    .line 1029
    iget-object v7, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1032
    :cond_8
    new-instance v7, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v7, v8, p1, v10, v11}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    new-array v6, v6, [Ljava/lang/Void;

    .line 1033
    invoke-virtual {v7, v6}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch -0x3ee
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 862
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 862
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1039
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 1040
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1041
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1042
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1043
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1045
    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 862
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0401b9

    const/4 v3, 0x0

    .line 881
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 882
    .local v0, "a":Landroid/app/Activity;
    packed-switch p2, :pswitch_data_0

    .line 926
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mIsSmallScreenUiEnabled:Z

    if-eqz v1, :cond_2

    .line 927
    if-nez p3, :cond_1

    .line 928
    packed-switch p2, :pswitch_data_1

    .line 949
    :pswitch_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 950
    invoke-virtual {v1, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 962
    :cond_1
    :goto_1
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mIsSmallScreenUiEnabled:Z

    invoke-direct {v1, p0, p3, p2, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;IZ)V

    return-object v1

    .line 886
    :pswitch_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bd

    .line 887
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 888
    goto :goto_0

    .line 890
    :pswitch_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040066

    .line 891
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 893
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 920
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 921
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->initViewCompanyInformation(Landroid/view/View;)V

    goto :goto_0

    .line 930
    :pswitch_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a2

    .line 931
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 933
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    goto :goto_1

    .line 944
    :pswitch_4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 945
    invoke-virtual {v1, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 946
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    goto :goto_1

    .line 954
    :cond_2
    const/4 v1, -0x3

    if-ne p2, v1, :cond_3

    .line 955
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->initViewCreatePlaylist(Landroid/view/View;)V

    .line 957
    :cond_3
    if-nez p3, :cond_1

    .line 958
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b2

    .line 959
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_1

    .line 882
    :pswitch_data_0
    .packed-switch -0x3ee
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 928
    :pswitch_data_1
    .packed-switch -0xe
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 862
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyViewVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mEmptyViewVisible:Z

    .line 877
    return-void
.end method

.method public updatePlaylistCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1131
    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->mPlaylistCount:I

    .line 1132
    return-void
.end method
