.class public Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "FitsSystemWindowRelativeLayout.java"


# instance fields
.field private originalPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    .line 40
    return-void
.end method

.method private navBarCanMove()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 120
    :cond_0
    return v0
.end method

.method private setup()V
    .locals 5

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setFitsSystemWindows(Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    .line 91
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->updatePadding(Landroid/graphics/Rect;)V

    .line 92
    return-void
.end method

.method private updatePadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int v1, v3, v4

    .line 102
    .local v1, "rightPadding":I
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int v0, v3, v4

    .line 103
    .local v0, "bottomPadding":I
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int v2, v3, v4

    .line 105
    .local v2, "topPadding":I
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setPadding(IIII)V

    .line 106
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->updatePadding(Landroid/graphics/Rect;)V

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 69
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 70
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 71
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .local v0, "windowInsets":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 75
    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->navBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    .line 55
    :cond_0
    return-void
.end method
