.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;
.super Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
.source "SeslFragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SeslFragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

.field private mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field private final mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;)V
    .locals 1
    .param p1, "fm"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .line 72
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    check-cast p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 123
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commitNowAllowingStateLoss()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 147
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 89
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    if-nez v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 93
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 96
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    .line 98
    .local v0, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_2

    .line 100
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 107
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eq v0, v4, :cond_1

    .line 108
    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 109
    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setUserVisibleHint(Z)V

    .line 112
    :cond_1
    return-object v0

    .line 102
    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->getItem(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    .line 104
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v4, v5, v0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 161
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 128
    .local v0, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eq v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setUserVisibleHint(Z)V

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 135
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setUserVisibleHint(Z)V

    .line 137
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 139
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method
