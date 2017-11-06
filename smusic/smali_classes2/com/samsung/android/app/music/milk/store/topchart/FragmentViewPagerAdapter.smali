.class public Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "FragmentViewPagerAdapter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mTagMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public clone(Landroid/app/FragmentManager;)Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;
    .locals 3
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 80
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;
    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mTagMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 81
    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem : position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem : position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->removeFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
