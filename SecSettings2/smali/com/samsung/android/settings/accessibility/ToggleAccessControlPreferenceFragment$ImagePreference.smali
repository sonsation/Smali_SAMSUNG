.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;
.super Landroid/preference/Preference;
.source "ToggleAccessControlPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .line 425
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 426
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->setLayoutResource(I)V

    .line 424
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 433
    const v4, 0x7f11010c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, "divider":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :goto_0
    const v4, 0x7f11010d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 441
    .local v3, "interactionHelpImage":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 444
    const v4, 0x7f0202ce

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 446
    .local v1, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 430
    .end local v1    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    :goto_1
    return-void

    .line 437
    .end local v3    # "interactionHelpImage":Landroid/widget/ImageView;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 442
    .restart local v3    # "interactionHelpImage":Landroid/widget/ImageView;
    :cond_3
    const v4, 0x7f0202c9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 449
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 450
    .local v2, "hasSoftkey":Z
    if-eqz v2, :cond_5

    .line 451
    const v4, 0x7f0202ca

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    :goto_2
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 456
    .restart local v1    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_1

    .line 457
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 453
    .end local v1    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    const v4, 0x7f0202c5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
