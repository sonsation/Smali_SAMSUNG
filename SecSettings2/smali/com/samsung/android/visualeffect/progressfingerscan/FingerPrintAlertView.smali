.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "FingerPrintAlertView.java"


# instance fields
.field private isPopupAlert:Z

.field private mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

.field private mIsRearSensor:Z

.field private mUiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    .line 34
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    .line 41
    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiVersion"    # I

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    .line 34
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    .line 46
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->initialize(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 34
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 34
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createAnimation()V
    .locals 12

    .prologue
    .line 119
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    .line 120
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    .line 121
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    .line 124
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 125
    .local v3, "showAnimationAlertFinger01":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 126
    .local v6, "showOnAnimationAlertFinger01":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, "hideAnimationAlertFinger01":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x14d

    .line 128
    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 131
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    .line 132
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 133
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-boolean v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v9, :cond_0

    const-wide/16 v10, 0x341

    .line 138
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    const-wide/16 v10, 0x48e

    .line 140
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 141
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    .local v4, "showAnimationAlertFinger02":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 146
    .local v7, "showOnAnimationAlertFinger02":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v1, "hideAnimationAlertFinger02":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x14d

    .line 148
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 149
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 151
    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    .line 152
    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 153
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 155
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x48e

    .line 156
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 157
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x48e

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 162
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 163
    .local v5, "showAnimationAlertFinger03":Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 164
    .local v8, "showOnAnimationAlertFinger03":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v2, "hideAnimationAlertFinger03":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x14d

    .line 166
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 167
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 169
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    .line 170
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 171
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-boolean v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v9, :cond_1

    const-wide/16 v10, 0x341

    .line 176
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_1
    const-wide/16 v10, 0x48e

    .line 178
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 179
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget-boolean v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v9, :cond_2

    .line 184
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x91c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 186
    :goto_2
    return-void

    .end local v1    # "hideAnimationAlertFinger02":Landroid/view/animation/Animation;
    .end local v2    # "hideAnimationAlertFinger03":Landroid/view/animation/Animation;
    .end local v4    # "showAnimationAlertFinger02":Landroid/view/animation/Animation;
    .end local v5    # "showAnimationAlertFinger03":Landroid/view/animation/Animation;
    .end local v7    # "showOnAnimationAlertFinger02":Landroid/view/animation/Animation;
    .end local v8    # "showOnAnimationAlertFinger03":Landroid/view/animation/Animation;
    :cond_0
    const-wide/16 v10, 0x14d

    .line 136
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .restart local v1    # "hideAnimationAlertFinger02":Landroid/view/animation/Animation;
    .restart local v2    # "hideAnimationAlertFinger03":Landroid/view/animation/Animation;
    .restart local v4    # "showAnimationAlertFinger02":Landroid/view/animation/Animation;
    .restart local v5    # "showAnimationAlertFinger03":Landroid/view/animation/Animation;
    .restart local v7    # "showOnAnimationAlertFinger02":Landroid/view/animation/Animation;
    .restart local v8    # "showOnAnimationAlertFinger03":Landroid/view/animation/Animation;
    :cond_1
    const-wide/16 v10, 0x14d

    .line 174
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x48e

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    goto :goto_2
.end method

.method private setAnimation()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->createAnimation()V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimationListener()V

    .line 116
    return-void
.end method

.method private setAnimationListener()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    return-void
.end method

.method private setVerticalGapDP(I)V
    .locals 2
    .param p1, "gap"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 111
    return-void
.end method

.method private startInternalAnimation()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 268
    return-void
.end method

.method protected getMaxStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 280
    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, "li":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    if-lt v2, v5, :cond_0

    .line 72
    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    if-nez v2, :cond_1

    .line 75
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view_homekey:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->addView(Landroid/view/View;)V

    .line 80
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_01:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    .line 81
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_02:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    .line 82
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_03:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    .line 84
    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    if-lt v2, v5, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->popup_alert_2_vertical_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    .line 91
    :goto_1
    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    if-ge v2, v5, :cond_3

    .line 94
    :goto_2
    return-void

    .line 70
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view_old:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 73
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->old_popup_alert_vertical_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    goto :goto_1

    .line 92
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    goto :goto_2
.end method

.method protected onUpdate(IF)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "value"    # F

    .prologue
    .line 276
    return-void
.end method

.method protected setAnimator(IZ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "start"    # Z

    .prologue
    .line 272
    return-void
.end method

.method public setImageResources(III)V
    .locals 2
    .param p1, "resBracket"    # I
    .param p2, "resFinger"    # I
    .param p3, "gap"    # I

    .prologue
    .line 97
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_bracket:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    .line 106
    return-void
.end method

.method public setUiVersion(IZ)V
    .locals 1
    .param p1, "uiVersion"    # I
    .param p2, "isRearSensor"    # Z

    .prologue
    .line 59
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    .line 60
    iput-boolean p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    .line 61
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->initialize(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimation()V

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->startInternalAnimation()V

    .line 261
    return-void
.end method
