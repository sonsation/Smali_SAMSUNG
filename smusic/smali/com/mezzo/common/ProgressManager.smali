.class public Lcom/mezzo/common/ProgressManager;
.super Ljava/lang/Object;
.source "ProgressManager.java"


# static fields
.field private static instance:Lcom/mezzo/common/ProgressManager;


# instance fields
.field private pr:Landroid/widget/ProgressBar;

.field private root:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/mezzo/common/ProgressManager;->instance:Lcom/mezzo/common/ProgressManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/mezzo/common/ProgressManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/mezzo/common/ProgressManager;->instance:Lcom/mezzo/common/ProgressManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/mezzo/common/ProgressManager;

    invoke-direct {v0}, Lcom/mezzo/common/ProgressManager;-><init>()V

    sput-object v0, Lcom/mezzo/common/ProgressManager;->instance:Lcom/mezzo/common/ProgressManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/mezzo/common/ProgressManager;->instance:Lcom/mezzo/common/ProgressManager;

    return-object v0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v2, -0x2

    .line 25
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 26
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    .line 27
    iget-object v1, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v1, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 31
    iput-object p2, p0, Lcom/mezzo/common/ProgressManager;->root:Landroid/widget/RelativeLayout;

    .line 34
    :cond_0
    return-void
.end method

.method public destroy(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 42
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/ProgressManager;->root:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/ProgressManager;->root:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mezzo/common/ProgressManager;->pr:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    :cond_1
    return-void
.end method
