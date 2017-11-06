.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$5;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$5;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2005
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 2006
    .local v1, "top":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$5;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->updateStatusGuard(I)I

    move-result v0

    .line 2008
    .local v0, "newTop":I
    if-eq v1, v0, :cond_0

    .line 2010
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 2012
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 2013
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 2009
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    .line 2017
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2
.end method
