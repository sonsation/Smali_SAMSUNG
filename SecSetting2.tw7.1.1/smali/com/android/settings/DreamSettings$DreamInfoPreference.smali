.class Lcom/android/settings/DreamSettings$DreamInfoPreference;
.super Landroid/preference/Preference;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/DreamSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    .line 371
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 372
    iput-object p3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 373
    const v0, 0x7f0400f3

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setLayoutResource(I)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 370
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 380
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 383
    const v5, 0x1020019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 384
    .local v0, "radioButton":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v5, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 385
    new-instance v5, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    new-instance v5, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v5, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v5, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 401
    .local v3, "showSettings":Z
    :goto_0
    const v5, 0x7f110149

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 402
    .local v2, "settingsDivider":Landroid/view/View;
    if-eqz v3, :cond_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 405
    .local v1, "settingsButton":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 407
    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 408
    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 409
    new-instance v4, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void

    .line 400
    .end local v1    # "settingsButton":Landroid/widget/ImageView;
    .end local v2    # "settingsDivider":Landroid/view/View;
    .end local v3    # "showSettings":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "showSettings":Z
    goto :goto_0

    .line 406
    .restart local v1    # "settingsButton":Landroid/widget/ImageView;
    .restart local v2    # "settingsDivider":Landroid/view/View;
    :cond_3
    const v4, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 443
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 444
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->performClick()V

    .line 447
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 417
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 426
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v2, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 427
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 430
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamSettings$DreamInfoPreference;

    .line 431
    .local v1, "preference":Lcom/android/settings/DreamSettings$DreamInfoPreference;
    iget-object v2, v1, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 432
    invoke-virtual {v1}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->notifyChanged()V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "preference":Lcom/android/settings/DreamSettings$DreamInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 435
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->-get4(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->notifyChanged()V

    .line 437
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->-set1(I)I

    .line 438
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/DreamSettings;->-get1()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 422
    return-void
.end method
