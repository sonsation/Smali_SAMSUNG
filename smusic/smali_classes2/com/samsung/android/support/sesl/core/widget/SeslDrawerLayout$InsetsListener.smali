.class Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;
.super Ljava/lang/Object;
.source "SeslDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsetsListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 390
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;

    .line 391
    .local v0, "drawerLayout":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, p2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;->setChildInsets(Landroid/view/WindowInsets;Z)V

    .line 392
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    .line 391
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
