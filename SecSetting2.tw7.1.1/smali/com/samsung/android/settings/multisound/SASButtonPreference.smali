.class public Lcom/samsung/android/settings/multisound/SASButtonPreference;
.super Landroid/preference/Preference;
.source "SASButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/SASButtonPreference$1;,
        Lcom/samsung/android/settings/multisound/SASButtonPreference$2;
    }
.end annotation


# instance fields
.field public mButton:Landroid/widget/CompoundButton;

.field private mButtonType:I

.field private final mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mChecked:Z

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private volatile mPreventRadioButtonCallbacks:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/SASButtonPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/SASButtonPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->onButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const v0, 0x7f0101b7

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    .line 49
    new-instance v0, Lcom/samsung/android/settings/multisound/SASButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference$1;-><init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V

    .line 48
    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 123
    new-instance v0, Lcom/samsung/android/settings/multisound/SASButtonPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference$2;-><init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 58
    const v0, 0x7f040236

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->setLayoutResource(I)V

    .line 56
    return-void
.end method

.method private onButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v1, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    if-eq v1, p2, :cond_3

    const/4 v0, 0x1

    .line 144
    .local v0, "changed":Z
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    .line 145
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 146
    if-nez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 147
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    return-void

    .line 143
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 72
    .local v6, "view":Landroid/view/View;
    const v9, 0x7f110675

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 73
    .local v5, "rb":Landroid/widget/RadioButton;
    const v9, 0x7f110676

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 75
    .local v1, "cb":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v9, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iput-boolean v10, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mPreventRadioButtonCallbacks:Z

    .line 79
    iget-boolean v9, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    iget-boolean v9, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iput-boolean v7, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mPreventRadioButtonCallbacks:Z

    .line 83
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 84
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 85
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 86
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 89
    :cond_0
    iget v9, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    if-ne v9, v10, :cond_3

    .line 90
    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 91
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 92
    iput-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    .line 97
    :goto_0
    const v9, 0x7f110674

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 98
    .local v4, "radiocontainer":Landroid/view/View;
    new-instance v9, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;

    invoke-direct {v9, p0, v5, v1}, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;-><init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v9, 0x1020006

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 112
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 113
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_1
    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_2
    return-object v6

    .line 94
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "radiocontainer":Landroid/view/View;
    :cond_3
    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    goto :goto_0

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    .restart local v4    # "radiocontainer":Landroid/view/View;
    :cond_4
    move v7, v8

    .line 117
    goto :goto_1
.end method

.method public setButtonType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    .line 180
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 157
    iget v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    if-nez v1, :cond_3

    .line 158
    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    .line 159
    .local v0, "changed":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    .line 161
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->persistBoolean(Z)Z

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 156
    .end local v0    # "changed":Z
    :cond_1
    :goto_0
    return-void

    .line 166
    .restart local v0    # "changed":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->notifyChanged()V

    goto :goto_0

    .line 170
    .end local v0    # "changed":Z
    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->persistBoolean(Z)Z

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->notifyChanged()V

    goto :goto_0
.end method
