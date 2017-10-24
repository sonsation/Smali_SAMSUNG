.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/LinearLayout;
.source "NotificationGuts.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;
    }
.end annotation


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActualHeight:I

.field private mAuto:Z

.field private mAutoButton:Landroid/widget/ImageView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBlock:Landroid/widget/RadioButton;

.field private mClipTopAmount:I

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mImportanceSummary:Landroid/widget/TextView;

.field private mImportanceTitle:Landroid/widget/TextView;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

.field private mNeedsFalsingProtection:Z

.field private mNotificationImportance:I

.field private mReset:Landroid/widget/RadioButton;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowSlider:Z

.field private mSilent:Landroid/widget/RadioButton;

.field private mStartingUserImportance:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->applyAuto()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationGuts;I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->updateTitleAndSummary(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderAlpha:F

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    .line 112
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 113
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderAlpha:F

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method private applyAuto()V
    .locals 6

    .prologue
    .line 327
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 329
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 330
    .local v2, "starTint":Landroid/content/res/ColorStateList;
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderAlpha:F

    .line 331
    .local v0, "alpha":F
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 332
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 333
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 336
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_3

    .line 337
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 338
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 339
    const v5, 0x7f0f0543

    .line 338
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 341
    const v5, 0x7f0f053c

    .line 340
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_3
    return-void

    .line 327
    .end local v0    # "alpha":F
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "starTint":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v2    # "starTint":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 330
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_2

    .line 343
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationGuts;->updateTitleAndSummary(I)V

    goto :goto_3
.end method

.method private bindSlider(Landroid/view/View;Z)V
    .locals 3
    .param p1, "importanceSlider"    # Landroid/view/View;
    .param p2, "systemApp"    # Z

    .prologue
    .line 275
    const v1, 0x7f0b00d8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 276
    const v1, 0x7f0b00d9

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 278
    const v1, 0x7f1302c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    .line 279
    const v1, 0x7f130094

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    .line 280
    const v1, 0x7f1302b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    .line 282
    if-eqz p2, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    .local v0, "minProgress":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts$3;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 314
    const v1, 0x7f1302c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationGuts$4;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->applyAuto()V

    .line 274
    return-void

    .line 284
    .end local v0    # "minProgress":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "minProgress":I
    goto :goto_0

    .line 322
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private bindToggles(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "importanceButtons"    # Landroid/view/View;
    .param p2, "importance"    # I
    .param p3, "systemApp"    # Z

    .prologue
    const/4 v3, 0x1

    move-object v0, p1

    .line 249
    check-cast v0, Landroid/widget/RadioGroup;

    .line 250
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 256
    const v0, 0x7f1302c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    .line 257
    const v0, 0x7f1302c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    .line 258
    const v0, 0x7f1302c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    .line 259
    if-eqz p3, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0536

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0535

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0534

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 248
    :goto_1
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0537

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    :cond_0
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 168
    :cond_0
    return-void
.end method

.method private getSelectedImportance()I
    .locals 2

    .prologue
    const/16 v1, -0x3e8

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0

    .line 234
    :cond_0
    return v1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const/4 v0, 0x2

    return v0

    .line 242
    :cond_3
    return v1
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private updateTitleAndSummary(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 351
    const v2, 0x7f0f0544

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f053d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 356
    const v2, 0x7f0f0545

    .line 355
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f053e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 361
    const v2, 0x7f0f0546

    .line 360
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f053f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 366
    const v2, 0x7f0f0547

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0540

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 370
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 371
    const v2, 0x7f0f0548

    .line 370
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0541

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 375
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 376
    const v2, 0x7f0f0549

    .line 375
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0542

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public areGutsExposed()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method bindImportance(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;I)V
    .locals 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 184
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 183
    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    .line 185
    const/16 v6, -0x3e8

    iput v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    .line 188
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/app/INotificationManager;->getImportance(Ljava/lang/String;I)I

    move-result v6

    .line 187
    iput v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :goto_0
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    .line 191
    const/4 v5, 0x0

    .line 194
    .local v5, "systemApp":Z
    :try_start_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 195
    .local v4, "info":Landroid/content/pm/PackageInfo;
    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 200
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "systemApp":Z
    :goto_1
    const v6, 0x7f1302c3

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, "importanceSlider":Landroid/view/View;
    const v6, 0x7f1302bf

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, "importanceButtons":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mShowSlider:Z

    if-eqz v6, :cond_0

    .line 203
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V

    .line 204
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_2
    return-void

    .line 208
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    invoke-direct {p0, v2, v6, v5}, Lcom/android/systemui/statusbar/NotificationGuts;->bindToggles(Landroid/view/View;IZ)V

    .line 209
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 196
    .end local v2    # "importanceButtons":Landroid/view/View;
    .end local v3    # "importanceSlider":Landroid/view/View;
    .restart local v5    # "systemApp":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 189
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "systemApp":Z
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public closeControls(IIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "notify"    # Z

    .prologue
    const/4 v7, -0x1

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1

    .line 388
    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v6, :cond_0

    .line 389
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 391
    :cond_0
    return-void

    .line 393
    :cond_1
    if-eq p1, v7, :cond_2

    if-ne p2, v7, :cond_3

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 p1, v6, 0x2

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int p2, v6, v7

    .line 397
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v2, v6

    .line 398
    .local v2, "horz":D
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v4, v6

    .line 399
    .local v4, "vert":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 401
    .local v1, "r":F
    const/4 v6, 0x0

    .line 400
    invoke-static {p0, p1, p2, v1, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 402
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v6, 0x168

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 403
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    new-instance v6, Lcom/android/systemui/statusbar/NotificationGuts$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$5;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 412
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 413
    if-eqz p3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v6, :cond_4

    .line 414
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 386
    :cond_4
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 175
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    return v0
.end method

.method public getGutsType()I
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public hasImportanceChanged()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getSelectedImportance()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "show_importance_slider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 125
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 458
    const-string/jumbo v1, "show_importance_slider"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mShowSlider:Z

    .line 457
    :cond_1
    return-void
.end method

.method public resetFalsingCheck()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_0
    return-void
.end method

.method saveImportance(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getSelectedImportance()I

    move-result v1

    .line 220
    .local v1, "progress":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 221
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    sub-int v3, v1, v3

    .line 220
    const/16 v4, 0x123

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Landroid/app/INotificationManager;->setImportance(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 418
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 427
    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .line 438
    return-void
.end method

.method public setExposed(ZZ)V
    .locals 2
    .param p1, "exposed"    # Z
    .param p2, "needsFalsingProtection"    # Z

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    .line 444
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    .line 445
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 442
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLayoutHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 470
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
