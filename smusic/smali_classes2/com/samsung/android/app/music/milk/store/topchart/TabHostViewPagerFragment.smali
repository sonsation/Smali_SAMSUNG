.class public abstract Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;
.super Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;
.source "TabHostViewPagerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const v1, 0x7f04014a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 19
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->setupTabs(Landroid/view/View;)V

    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method protected abstract setupTabs(Landroid/view/View;)V
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 30
    const v0, 0x7f120055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 31
    return-void
.end method
