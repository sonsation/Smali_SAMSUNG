.class public Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;
.source "SeslCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;

    .line 67
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckBoxPreference_android_summaryOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 73
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckBoxPreference_android_summaryOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 76
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckBoxPreference_android_disableDependentsState:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->setDisableDependentsState(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method private syncCheckboxView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    :cond_1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 131
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 112
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "checkboxView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 119
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V

    .line 94
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->syncSummaryView(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V

    .line 97
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;->performClick(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 107
    return-void
.end method
