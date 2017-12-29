.class public Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;
.super Landroid/preference/Preference;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierImageZoom"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEnabled:Z

.field private mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field mIsLongkeyProcessing:Z

.field private mMinusMagnifier:Landroid/widget/ImageView;

.field private mPlusMagnifier:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mZoomLayer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "enabled"    # Z

    .prologue
    .line 545
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .line 546
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    .line 547
    const v0, 0x7f04019d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setLayoutResource(I)V

    .line 548
    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    .line 549
    iput-boolean p3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->semSetRecycleLayoutForCustomViewEnabled(Z)V

    .line 545
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 555
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 556
    const v3, 0x7f110567

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    .line 557
    const v3, 0x7f110566

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    .line 558
    const v3, 0x7f11056b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 559
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    const v5, 0x7f020642

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 561
    .local v2, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 562
    const v3, 0x7f11056a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    .line 563
    const v3, 0x7f110568

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 565
    const-string/jumbo v4, "hover_zoom_value"

    .line 564
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 566
    .local v0, "defaultProgress":I
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 569
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 570
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 571
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 573
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 574
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 575
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 576
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 577
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetFluidEnabled(Z)V

    .line 579
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 581
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 582
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 584
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x3e4ccccd    # 0.2f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 585
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    :goto_0
    return-void

    .line 587
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 589
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 590
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 641
    const-string/jumbo v2, "hover_zoom_value"

    const/4 v3, 0x1

    .line 640
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 642
    .local v0, "defaultProgress":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 639
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 644
    :pswitch_1
    if-lez v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 646
    const-string/jumbo v2, "hover_zoom_value"

    add-int/lit8 v3, v0, -0x1

    .line 645
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    goto :goto_0

    .line 651
    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 653
    const-string/jumbo v2, "hover_zoom_value"

    add-int/lit8 v3, v0, 0x1

    .line 652
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 654
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x7f110568
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 734
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    if-nez v1, :cond_0

    .line 735
    return v3

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 737
    .local v0, "progressValue":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 738
    if-lez v0, :cond_1

    .line 739
    add-int/lit8 v0, v0, -0x1

    .line 740
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 752
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 743
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 744
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 745
    add-int/lit8 v0, v0, 0x1

    .line 746
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    goto :goto_0

    .line 750
    :cond_3
    return v3
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 664
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 665
    const-string/jumbo v2, "hover_zoom_value"

    .line 664
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 666
    .local v0, "defaultProgress":I
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 716
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 669
    :pswitch_1
    if-lez v0, :cond_0

    .line 670
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$1;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 692
    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 693
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$2;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x7f110568
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 622
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    const-string/jumbo v1, "hover_zoom_value"

    .line 622
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "MGWZ"

    div-int/lit8 v3, p2, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 619
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 629
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 634
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 722
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_0
    return v1

    .line 724
    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 764
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 765
    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    .line 763
    return-void
.end method

.method public setEnabledZoomButton(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x66

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-nez v0, :cond_1

    .line 597
    :cond_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 599
    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    .line 601
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 606
    if-eqz p1, :cond_2

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 608
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 594
    :goto_0
    return-void

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 613
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 2
    .param p1, "progressValue"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIntervalSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    return-void
.end method
