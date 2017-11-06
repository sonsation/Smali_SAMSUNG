.class public Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;
.source "SeslSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;,
        Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;
    }
.end annotation


# static fields
.field private static final mClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;


# instance fields
.field private final mListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;

.field mSwitch:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    sget v0, Lcom/samsung/android/support/sesl/R$attr;->seslSwitchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$1;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;

    .line 94
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchPreference_android_summaryOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 100
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchPreference_android_summaryOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 103
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchPreference_android_switchTextOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 106
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchPreference_android_switchTextOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 109
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchPreference_android_disableDependentsState:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setDisableDependentsState(Z)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 257
    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 258
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 260
    :cond_0
    instance-of v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 261
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    .line 262
    .local v1, "switchView":Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    sget-object v2, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 271
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setClickable(Z)V

    .line 276
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "switchView":Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 245
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    sget v3, Lcom/samsung/android/support/sesl/R$id;->switchWidget:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 250
    .local v2, "switchView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->syncSwitchView(Landroid/view/View;)V

    .line 252
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->syncSummaryView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V

    .line 150
    sget v3, Lcom/samsung/android/support/sesl/R$id;->switchWidget:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "checkableView":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 152
    check-cast v3, Landroid/widget/Checkable;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mChecked:Z

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 154
    instance-of v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 155
    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    .line 156
    .local v2, "switchView":Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitch:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    .line 158
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-object v3, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$ClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 166
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;

    if-nez v3, :cond_1

    .line 167
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setClickable(Z)V

    .line 172
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "switchView":Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->syncSummaryView(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V

    .line 173
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
    .line 237
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslTwoStatePreference;->performClick(Landroid/view/View;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->notifyChanged()V

    .line 195
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->notifyChanged()V

    .line 184
    return-void
.end method
