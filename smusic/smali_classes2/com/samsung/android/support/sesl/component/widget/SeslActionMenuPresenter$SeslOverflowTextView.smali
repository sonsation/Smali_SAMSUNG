.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;
.super Landroid/widget/TextView;
.source "SeslActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslOverflowTextView"
.end annotation


# instance fields
.field private mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 966
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 967
    const v2, 0x10102f6

    invoke-direct {p0, p2, v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 969
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->setClickable(Z)V

    .line 970
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->setFocusable(Z)V

    .line 972
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    invoke-virtual {v2, v5, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 973
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_actionMenuTextAppearance:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 974
    .local v1, "actionMeneTextAppearnceId":I
    invoke-static {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 975
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 977
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_more_item_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    new-instance v2, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 981
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/sesl/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 982
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 986
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 987
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    .line 990
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 994
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 995
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    .line 998
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1002
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    :goto_0
    return v1

    .line 1006
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->playSoundEffect(I)V

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
