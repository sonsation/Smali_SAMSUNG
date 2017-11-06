.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;
.super Landroid/widget/FrameLayout;
.source "SeslActionMenuPresenter.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeslOverflowMenuButton"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeBackground:Landroid/view/ViewGroup;

.field private mBadgeText:Landroid/widget/TextView;

.field private mInnerView:Landroid/view/View;

.field private final mTempPts:[F

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 725
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 726
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 719
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mTempPts:[F

    .line 728
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mInnerView:Landroid/view/View;

    .line 729
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mInnerView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 733
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_action_menu_item_badge:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    .line 734
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    .line 735
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->addView(Landroid/view/View;)V

    .line 767
    return-void

    .line 728
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public getInnerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mInnerView:Landroid/view/View;

    return-object v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public setBadgeNumber(I)V
    .locals 8
    .param p1, "number"    # I

    .prologue
    const/16 v2, 0x63

    .line 784
    if-le p1, v2, :cond_0

    .line 786
    .local v2, "mBadgeNumber":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Ljava/text/NumberFormat;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "localeFormattedNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_badge_default_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 790
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/sesl/R$dimen;->sesl_badge_additional_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 791
    .local v3, "width":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 792
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 793
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    if-lez v2, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 795
    return-void

    .end local v0    # "localeFormattedNumber":Ljava/lang/String;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "mBadgeNumber":I
    .end local v3    # "width":I
    :cond_0
    move v2, p1

    .line 784
    goto :goto_0

    .line 794
    .restart local v0    # "localeFormattedNumber":Ljava/lang/String;
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "mBadgeNumber":I
    .restart local v3    # "width":I
    :cond_1
    const/16 v4, 0x8

    goto :goto_1
.end method
