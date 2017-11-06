.class public Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;
.super Ljava/lang/Object;
.source "AbsAlbumDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumInfoViewUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    }
.end annotation


# instance fields
.field private final mActionBarView:Landroid/view/View;

.field private final mEnterAlbumCoverTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private mEnterAnimationEnabled:Z

.field private final mGradationLayout:Landroid/view/View;

.field private mMainTextCol:Ljava/lang/String;

.field private mMainTextView:Landroid/widget/TextView;

.field private final mReturnAlbumCoverTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private final mSubTextCols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextLayout:Landroid/view/View;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)V
    .locals 12
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    .prologue
    const/4 v11, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextCols:Ljava/util/List;

    .line 172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    .line 267
    new-instance v6, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;-><init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mEnterAlbumCoverTransitionListener:Landroid/transition/Transition$TransitionListener;

    .line 306
    new-instance v6, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;-><init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mReturnAlbumCoverTransitionListener:Landroid/transition/Transition$TransitionListener;

    .line 185
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$000(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/view/View;

    move-result-object v5

    .line 187
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f12013f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mThumbnailView:Landroid/widget/ImageView;

    .line 188
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    const v6, 0x7f0d0061

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v6

    .line 191
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$400(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mThumbnailView:Landroid/widget/ImageView;

    .line 192
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$100(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)I

    move-result v9

    .line 193
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Z

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 191
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 195
    const v6, 0x7f120130

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mMainTextView:Landroid/widget/TextView;

    .line 196
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    const v6, 0x7f120131

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    const v6, 0x7f120141

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    const v6, 0x7f12022c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    const v6, 0x7f12022d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mMainTextView:Landroid/widget/TextView;

    const v7, 0x7f110044

    invoke-static {v1, v7, v11}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    const v6, 0x7f110043

    invoke-static {v1, v6, v11}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 204
    .local v3, "subTextColor":I
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 205
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 207
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$500(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mMainTextCol:Ljava/lang/String;

    .line 208
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextCols:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$600(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextCols:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$700(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextCols:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$800(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextCols:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$900(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$1000(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mEnterAnimationEnabled:Z

    .line 214
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$1100(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mActionBarView:Landroid/view/View;

    .line 215
    iget-boolean v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mEnterAnimationEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mActionBarView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 216
    const v6, 0x7f12022e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mGradationLayout:Landroid/view/View;

    .line 217
    const v6, 0x7f120146

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mTextLayout:Landroid/view/View;

    .line 219
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->access$1100(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mWindow:Landroid/view/Window;

    .line 220
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 221
    .local v0, "enterTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_1

    .line 222
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mEnterAlbumCoverTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 224
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    .line 225
    .local v2, "returnTransition":Landroid/transition/Transition;
    if-eqz v2, :cond_2

    .line 226
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mReturnAlbumCoverTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v2, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 233
    .end local v0    # "enterTransition":Landroid/transition/Transition;
    .end local v2    # "returnTransition":Landroid/transition/Transition;
    :cond_2
    :goto_1
    return-void

    .line 229
    :cond_3
    iput-object v11, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mGradationLayout:Landroid/view/View;

    .line 230
    iput-object v11, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mTextLayout:Landroid/view/View;

    .line 231
    iput-object v11, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mWindow:Landroid/view/Window;

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;-><init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mGradationLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mTextLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method private updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 259
    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSubTextView(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public updateSubTextView(ILjava/lang/String;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public updateUi(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 236
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mMainTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mMainTextCol:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 239
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 240
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    .local v3, "subTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->mSubTextCols:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, "col":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->updateSubTextView(ILjava/lang/String;)V

    .line 239
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 248
    .end local v0    # "col":Ljava/lang/String;
    .end local v3    # "subTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
