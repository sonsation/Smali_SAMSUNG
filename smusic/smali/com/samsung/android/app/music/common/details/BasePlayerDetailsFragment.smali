.class public abstract Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "BasePlayerDetailsFragment.java"


# instance fields
.field private mContentTextResId:I

.field private final mLargerFontTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

.field private mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mLargerFontTextViews:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;-><init>(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mContentTextResId:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mContentTextResId:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mLargerFontTextViews:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final clearLargeFontTextViews()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mLargerFontTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    return-void
.end method

.method protected abstract getLayoutId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected final initMediaInfoItem(IILjava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "titleResId"    # I
    .param p3, "contentText"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method protected final initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "titleResId"    # I
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method protected final initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "titleResId"    # I
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "hasDivider"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 94
    .local v5, "root":Landroid/view/View;
    if-nez v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, "frame":Landroid/view/View;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 100
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 104
    .local v4, "resources":Landroid/content/res/Resources;
    const v9, 0x7f120268

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 105
    .local v6, "title":Landroid/widget/TextView;
    const v9, 0x7f120269

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "content":Landroid/widget/TextView;
    iget v9, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mContentTextResId:I

    .line 107
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 106
    invoke-virtual {v1, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v9, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mLargerFontTextViews:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const v9, 0x7f120248

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "divider":Landroid/view/View;
    if-eqz p5, :cond_3

    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v7, 0x7f110124

    const/4 v8, 0x0

    .line 115
    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 116
    .local v0, "blurTextColor":I
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    if-eqz p4, :cond_0

    .line 121
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "blurTextColor":I
    :cond_3
    move v7, v8

    .line 113
    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    .line 37
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0d01c2

    iput v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mContentTextResId:I

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    .line 80
    return-void
.end method
