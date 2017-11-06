.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V
    .locals 0

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1515
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1519
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x101030b

    aput v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1521
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1522
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1523
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1534
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1549
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setHomeActionContentDescription(I)V

    .line 1552
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 1539
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1540
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1542
    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setHomeActionContentDescription(I)V

    .line 1544
    :cond_0
    return-void
.end method
