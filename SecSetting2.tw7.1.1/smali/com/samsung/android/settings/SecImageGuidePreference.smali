.class public Lcom/samsung/android/settings/SecImageGuidePreference;
.super Landroid/preference/Preference;
.source "SecImageGuidePreference.java"


# instance fields
.field private mGuideImage:Landroid/graphics/drawable/Drawable;

.field private mGuideSummary:Ljava/lang/String;

.field private mIsAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/SecImageGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SecImageGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    const v1, 0x7f1001ed

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/settings/SecImageGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    sget-object v1, Lcom/android/settings/R$styleable;->ImageGuidePreference:[I

    .line 46
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mGuideImage:Landroid/graphics/drawable/Drawable;

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mGuideSummary:Ljava/lang/String;

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mIsAnimation:Z

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 66
    const v3, 0x7f110664

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    .local v1, "guideImageView":Landroid/widget/ImageView;
    const v3, 0x7f110665

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "guideTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mGuideImage:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mGuideImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mGuideSummary:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mGuideSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/SecImageGuidePreference;->mIsAnimation:Z

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 77
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 63
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    return-void
.end method
