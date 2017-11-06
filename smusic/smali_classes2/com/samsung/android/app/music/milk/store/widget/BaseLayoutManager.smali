.class public abstract Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;
.super Ljava/lang/Object;
.source "BaseLayoutManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;


# instance fields
.field private final mItemCountInPage:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCountInPage"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->mItemCountInPage:I

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public getItemCountInPage()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->mItemCountInPage:I

    return v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 23
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    return-void
.end method
