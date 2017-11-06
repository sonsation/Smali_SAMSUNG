.class public Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;
.super Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;
.source "SeslSwitchPreferenceScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    sget v0, Lcom/samsung/android/support/sesl/R$attr;->seslSwitchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_fragment:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "fragment":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    const-string v2, "SwitchPreferenceScreen"

    const-string v3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    sget v2, Lcom/samsung/android/support/sesl/R$layout;->sesl_switch_preference_screen:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->setLayoutResource(I)V

    .line 53
    sget v2, Lcom/samsung/android/support/sesl/R$layout;->sesl_switch_preference_screen_widget_divider:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 109
    .local v0, "action":I
    const/4 v1, 0x0

    .line 111
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 133
    :goto_1
    return v2

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    .line 117
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    .line 125
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 133
    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
