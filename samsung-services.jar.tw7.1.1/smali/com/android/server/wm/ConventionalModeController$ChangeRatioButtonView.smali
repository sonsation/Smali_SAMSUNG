.class Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;
.super Landroid/widget/FrameLayout;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ConventionalModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeRatioButtonView"
.end annotation


# instance fields
.field private mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

.field final synthetic this$0:Lcom/android/server/wm/ConventionalModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ConventionalModeController;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ConventionalModeController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    .line 781
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 782
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->addView(Landroid/view/View;)V

    .line 780
    return-void
.end method

.method private getTextSize()I
    .locals 7

    .prologue
    .line 826
    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v5}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 827
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 828
    .local v3, "initSize":I
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 829
    .local v1, "curSize":I
    int-to-float v5, v1

    int-to-float v6, v3

    div-float v4, v5, v6

    .line 830
    .local v4, "scaleRatio":F
    div-int/lit16 v5, v1, 0x168

    mul-int/lit16 v0, v5, 0xa0

    .line 831
    .local v0, "baseDensity":I
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ge v0, v5, :cond_0

    .line 832
    const/high16 v5, 0x42300000    # 44.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    return v5

    .line 833
    :cond_0
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-le v0, v5, :cond_1

    .line 834
    const/high16 v5, 0x42600000    # 56.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    return v5

    .line 836
    :cond_1
    const/high16 v5, 0x42500000    # 52.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    return v5
.end method

.method private makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 787
    new-instance v0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;-><init>(Lcom/android/server/wm/ConventionalModeController;Landroid/content/Context;)V

    .line 788
    .local v0, "changeRatioButton":Lcom/android/server/wm/ConventionalModeController$VerticalTextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    const v1, -0x50506

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setBackgroundColor(I)V

    .line 790
    const v1, 0x104095d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setText(I)V

    .line 791
    const-string v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 792
    const v1, -0x767677

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTextColor(I)V

    .line 793
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTextSize(IF)V

    .line 794
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setLines(I)V

    .line 795
    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setPadding(IIII)V

    .line 796
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 797
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setGravity(I)V

    .line 798
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->semSetHoverPopupType(I)V

    .line 799
    new-instance v1, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;-><init>(Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    return-object v0
.end method


# virtual methods
.method public getPaddingSize()I
    .locals 3

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float v0, v1, v2

    .line 842
    .local v0, "density":F
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public resetView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    if-nez v0, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->addView(Landroid/view/View;)V

    .line 814
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    const v1, 0x104095d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setText(I)V

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setPadding(IIII)V

    .line 821
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTextSize(IF)V

    goto :goto_0
.end method
