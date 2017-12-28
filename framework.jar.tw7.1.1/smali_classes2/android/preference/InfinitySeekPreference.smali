.class public Landroid/preference/InfinitySeekPreference;
.super Landroid/preference/DialogPreference;
.source "InfinitySeekPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;


# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mClockwise:Z

.field private mColor:I

.field private mColorTriggered:Z

.field private mDefaultValue:Ljava/lang/Integer;

.field private mDensity:F

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mEnableDependent:Z

.field private mLocation:I

.field private mMax:I

.field private mMaxLines:I

.field private mMin:I

.field private mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mProgress:I

.field private mProgressColor:I

.field private mProgressWidth:I

.field private mRemainColor:I

.field private mRemainWidth:I

.field private mRotation:I

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSeekTextView:Landroid/widget/TextView;

.field private mSeekType:I

.field private mSize:I

.field private mStartAngle:I

.field private mStep:I

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field private mSweepAngle:I

.field private mTouchInside:Z

.field private mTrackingTouch:Z

.field public mTypeSet:Ljava/lang/Class;

.field private mUnit:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinitySeekPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinitySeekPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindSeekArcDialogView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_seekarc"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/preference/InfinitySeekArcView;

    invoke-virtual {v0, p0}, Landroid/preference/InfinitySeekArcView;->setOnSeekArcChangeListener(Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;)V

    invoke-direct {p0}, Landroid/preference/InfinitySeekPreference;->getASet()V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setMax(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgressWidth:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setProgressWidth(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRemainWidth:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setArcWidth(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mStartAngle:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setStartAngle(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSweepAngle:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setSweepAngle(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setArcRotation(I)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mTouchInside:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setTouchInSide(Z)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setClockwise(Z)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setProgressColor(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRemainColor:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setArcColor(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setProgress(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSize:I

    if-gez v1, :cond_0

    const/16 v1, 0xc8

    :cond_0
    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mDensity:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "zff_autoset_seekarc_layout"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setEnabled(Z)V

    return-void
.end method

.method private bindSeekArcView(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, p1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-eqz v1, :cond_1

    const-string/jumbo v1, "widget_frame"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_0
    iget-object v4, p0, Landroid/preference/InfinitySeekPreference;->mView:Landroid/view/View;

    :cond_1
    const-string/jumbo v1, "zff_autoset_seekarc"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/preference/InfinitySeekArcView;

    invoke-virtual {v0, p0}, Landroid/preference/InfinitySeekArcView;->setOnSeekArcChangeListener(Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setMax(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgressWidth:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setProgressWidth(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRemainWidth:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setArcWidth(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mStartAngle:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setStartAngle(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSweepAngle:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setSweepAngle(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setArcRotation(I)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mTouchInside:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setTouchInSide(Z)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setClockwise(Z)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgressColor:I

    iget-boolean v2, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    if-nez v2, :cond_3

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRemainColor:I

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setProgressColor(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mRemainColor:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setArcColor(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setProgress(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSize:I

    if-ltz v1, :cond_5

    :cond_4
    :goto_0
    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mDensity:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "zff_autoset_seekarc_layout"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinitySeekArcView;->setEnabled(Z)V

    return-void

    :cond_5
    const/16 v1, 0x96

    iget v4, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-ltz v4, :cond_4

    const/16 v1, 0xc8

    goto :goto_0
.end method

.method private bindSeekBarDialogView(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_seekbar"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Landroid/preference/InfinitySeekPreference;->getASet()V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    int-to-float v2, v3

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    :cond_0
    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mSize:I

    if-ltz v0, :cond_3

    :goto_0
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mDensity:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "zff_autoset_seekbar_layout"

    invoke-static {v1, v2}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-eqz v4, :cond_1

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget v4, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-eqz v4, :cond_2

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_2

    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private bindSeekBarView(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, p1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-eqz v1, :cond_1

    const-string/jumbo v1, "widget_frame"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_0
    iget-object v4, p0, Landroid/preference/InfinitySeekPreference;->mView:Landroid/view/View;

    :cond_1
    const-string/jumbo v1, "zff_autoset_seekbar"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    check-cast v0, Landroid/view/View;

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    int-to-float v2, v3

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    :cond_3
    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mSize:I

    if-ltz v0, :cond_7

    :cond_4
    :goto_0
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mDensity:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "zff_autoset_seekbar_layout"

    invoke-static {v1, v2}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-eqz v4, :cond_5

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_5

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void

    :cond_7
    const/16 v0, 0x96

    iget v4, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-ltz v4, :cond_4

    iget v4, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-eqz v4, :cond_6

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_6

    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private getASet()V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/InfinitySeekPreference;->setProgress(I)V

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/preference/InfinitySeekPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinitySeekPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDefaultValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setASet(I)Z

    goto :goto_0
.end method

.method private getSummary(ZI)Ljava/lang/String;
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/InfinitySeekPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/preference/InfinitySeekPreference;->mSummaryOn:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/preference/InfinitySeekPreference;->mSummaryOff:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v0, "typeseek"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setTypeSeek(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setLocation(Ljava/lang/String;)V

    const-string/jumbo v0, "step"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    const-string/jumbo v0, "min"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    const-string/jumbo v0, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    const-string/jumbo v0, "size"

    const/4 v2, -0x1

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mSize:I

    const-string v0, "clockwise"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    const-string/jumbo v0, "rotation"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setRotation(I)V

    const-string/jumbo v0, "sweepangle"

    const/16 v2, 0x12c

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mSweepAngle:I

    const/16 v2, 0x168

    sub-int v0, v2, v0

    const/4 v2, 0x2

    div-int v0, v0, v2

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mStartAngle:I

    const/4 v2, 0x5

    iput v2, p0, Landroid/preference/InfinitySeekPreference;->mProgressWidth:I

    const/4 v2, 0x3

    iput v2, p0, Landroid/preference/InfinitySeekPreference;->mRemainWidth:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/InfinitySeekPreference;->mTouchInside:Z

    const v2, -0xd68601

    iput v2, p0, Landroid/preference/InfinitySeekPreference;->mProgressColor:I

    const v2, -0x282829

    iput v2, p0, Landroid/preference/InfinitySeekPreference;->mRemainColor:I

    const-string/jumbo v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string/jumbo v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string/jumbo v0, "summary"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->makeString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSummary:Ljava/lang/String;

    const-string/jumbo v0, "summary-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->makeString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSummaryOff:Ljava/lang/String;

    const-string/jumbo v0, "summary-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->makeString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSummaryOn:Ljava/lang/String;

    const-string/jumbo v0, "unit"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->makeString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mUnit:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setColor(Ljava/lang/String;)V

    const-string/jumbo v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mBroadcastOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mNotifyBroadcast:Z

    const-string/jumbo v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mRunScript:Ljava/lang/String;

    const-string/jumbo v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mRunScriptOff:Ljava/lang/String;

    const-string/jumbo v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mRunScriptOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mNotifyScript:Z

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mDensity:F

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDefaultValue:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/preference/InfinitySeekPreference;->getASet()V

    :cond_1
    return-void
.end method

.method private postASet(Z)V
    .locals 8

    move-object v1, p0

    const/4 v2, 0x0

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move v4, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/preference/InfinitySeekPreference;->mBroadcast:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinitySeekPreference;->mBroadcastOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinitySeekPreference;->mBroadcastOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinitySeekPreference;->mRunScript:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinitySeekPreference;->mRunScriptOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinitySeekPreference;->mRunScriptOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Landroid/preference/InfinitySeekPreference;->mNotifyBroadcast:Z

    iget-boolean v7, p0, Landroid/preference/InfinitySeekPreference;->mNotifyScript:Z

    new-instance v0, Landroid/preference/InfinitySet$PostRun;

    invoke-direct/range {v0 .. v7}, Landroid/preference/InfinitySet$PostRun;-><init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private selectLayout()Ljava/lang/String;
    .locals 5

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    if-gez v1, :cond_1

    const-string/jumbo v0, "zff_autoset_seekbar_r0"

    if-eqz v2, :cond_0

    const-string/jumbo v0, "zff_autoset_seekbar_r1"

    const/16 v3, -0x5a

    if-eq v2, v3, :cond_0

    const-string/jumbo v0, "zff_autoset_seekbar_r2"

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_0

    const-string/jumbo v0, "zff_autoset_seekbar_r3"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "zff_autoset_seekarc_r0"

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_0

    const-string/jumbo v0, "zff_autoset_seekarc_r1"

    iget-boolean v3, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    if-nez v3, :cond_2

    const-string/jumbo v0, "zff_autoset_seekarc_r3"

    :cond_2
    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const-string/jumbo v0, "zff_autoset_seekarc_r2"

    if-eqz v2, :cond_0

    const-string/jumbo v0, "zff_autoset_seekarc_r3"

    iget-boolean v3, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    if-nez v3, :cond_0

    const-string/jumbo v0, "zff_autoset_seekarc_r1"

    goto :goto_0
.end method

.method private setASet(I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Landroid/preference/InfinitySet$Utils;->putInt(Landroid/preference/Preference;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->setProgress(I)V

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Landroid/preference/InfinitySeekPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinitySeekPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_0
    return v2
.end method

.method private setColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Landroid/preference/InfinitySet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mColorTriggered:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private setDependInValues(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setLocation(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "dialog"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    return-void
.end method

.method private setMax(I)V
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method private setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/InfinitySeekPreference;->setProgress(IZ)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 2

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    :cond_0
    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    :cond_1
    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/InfinitySeekPreference;->persistInt(I)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->notifyChanged()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method private setRotation(I)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-ltz v1, :cond_0

    const/16 v0, 0xb4

    :cond_0
    sparse-switch p1, :sswitch_data_0

    if-gez v1, :cond_1

    if-nez v2, :cond_1

    const/16 v0, 0xb4

    :cond_1
    :goto_0
    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mRotation:I

    return-void

    :sswitch_0
    if-eqz v2, :cond_4

    :cond_2
    add-int/lit16 v0, v0, -0x5a

    goto :goto_0

    :sswitch_1
    if-gez v1, :cond_3

    if-eqz v2, :cond_3

    add-int/lit16 v0, v0, 0xb4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    if-eqz v2, :cond_2

    :cond_4
    add-int/lit16 v0, v0, 0x5a

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
    .end sparse-switch
.end method

.method private setTypeSeek(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v1, "circle"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    return-void
.end method

.method private syncProgress(Landroid/preference/InfinitySeekArcView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/InfinitySeekArcView;->getProgress()I

    move-result v1

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    add-int v0, v1, v2

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/InfinitySeekPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/InfinitySeekPreference;->setProgress(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/preference/InfinitySeekArcView;->setProgress(I)V

    goto :goto_0
.end method

.method private syncProgress(Landroid/widget/SeekBar;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    add-int v0, v1, v2

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/InfinitySeekPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/InfinitySeekPreference;->setProgress(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public log(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinitySeekPreference LOG:"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-lez v0, :cond_6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mColorTriggered:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-gez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->bindSeekBarDialogView(Landroid/view/View;)V

    if-ltz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->bindSeekArcDialogView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_seek_progress"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/preference/InfinitySeekPreference;->mUnit:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_maxValueText"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-ltz v3, :cond_4

    iget-boolean v3, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    if-nez v3, :cond_4

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_minValueText"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-ltz v3, :cond_5

    iget-boolean v3, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    if-nez v3, :cond_5

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMaxLines:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v2, p0, Landroid/preference/InfinitySeekPreference;->mMaxLines:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-gtz v1, :cond_7

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-gez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->bindSeekBarView(Landroid/view/View;)V

    if-ltz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->bindSeekArcView(Landroid/view/View;)V

    :cond_2
    move-object v2, p1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/preference/InfinitySeekPreference;->mView:Landroid/view/View;

    :cond_3
    const-string/jumbo v1, "zff_autoset_seek_progress"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/preference/InfinitySeekPreference;->mUnit:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_maxValueText"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-ltz v3, :cond_5

    iget-boolean v3, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    if-nez v3, :cond_5

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "zff_autoset_minValueText"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mSeekType:I

    if-ltz v3, :cond_6

    iget-boolean v3, p0, Landroid/preference/InfinitySeekPreference;->mClockwise:Z

    if-nez v3, :cond_6

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMax:I

    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    invoke-direct {p0}, Landroid/preference/InfinitySeekPreference;->selectLayout()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/InfinitySet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v5, :cond_0

    invoke-virtual {p0, v3}, Landroid/preference/InfinitySeekPreference;->setDialogLayoutResource(I)V

    :cond_0
    if-gtz v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/InfinitySeekPreference;->mView:Landroid/view/View;

    if-ltz v5, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)Z

    move-result v1

    :cond_1
    iput-boolean v1, p0, Landroid/preference/InfinitySeekPreference;->mEnableDependent:Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setASet(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/InfinitySeekPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinitySeekPreference;->mDefaultValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public onProgressChanged(Landroid/preference/InfinitySeekArcView;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->syncProgress(Landroid/preference/InfinitySeekArcView;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->setASet(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/preference/InfinitySeekPreference;->getASet()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/preference/InfinitySeekArcView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/preference/InfinitySeekArcView;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/preference/InfinitySeekArcView;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->syncProgress(Landroid/preference/InfinitySeekArcView;)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-gtz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/preference/InfinitySeekPreference;->setASet(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/InfinitySeekPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/preference/InfinitySeekPreference;->mUnit:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/InfinitySeekPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mStep:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mMin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekPreference;->syncProgress(Landroid/widget/SeekBar;)V

    iget v1, p0, Landroid/preference/InfinitySeekPreference;->mProgress:I

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-gtz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/preference/InfinitySeekPreference;->setASet(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinitySeekPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/InfinitySeekPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/InfinitySeekPreference;->mSeekTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/preference/InfinitySeekPreference;->mUnit:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0, v1}, Landroid/preference/InfinitySet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/preference/InfinitySeekPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    iget v0, p0, Landroid/preference/InfinitySeekPreference;->mLocation:I

    if-lez v0, :cond_1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/InfinitySeekPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mMaxLines:I

    if-eqz v3, :cond_0

    const-string v2, "alertTitle"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mMaxLines:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v3, "TextAppearance.Medium"

    invoke-static {v0, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-boolean v2, p0, Landroid/preference/InfinitySeekPreference;->mColorTriggered:Z

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/preference/InfinitySeekPreference;->mColor:I

    const-string/jumbo v2, "parentPanel"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string/jumbo v2, "topPanel"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "buttonPanel"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
