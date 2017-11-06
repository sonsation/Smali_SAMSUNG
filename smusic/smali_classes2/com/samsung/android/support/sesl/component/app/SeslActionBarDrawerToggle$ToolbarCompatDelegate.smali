.class Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "SeslActionBarDrawerToggle.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mDefaultContentDescription:Ljava/lang/CharSequence;

.field final mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field final mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .line 558
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 559
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    .line 560
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 564
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 565
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;->setActionBarDescription(I)V

    .line 566
    return-void
.end method
