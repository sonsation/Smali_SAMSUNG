.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$1;,
        Lcom/android/systemui/qs/QSDetail$2;,
        Lcom/android/systemui/qs/QSDetail$3;
    }
.end annotation


# instance fields
.field private final DURATION_DETAIL:J

.field private final DURATION_PANEL:J

.field private INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field private mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mMobileKeyboard:I

.field private mOpenX:I

.field private mOpenY:I

.field private mOrientation:I

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mScanState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleDisableStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "collapsePanel"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleUpdatingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->showItPolicyToast()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 57
    const-wide/16 v0, 0x16e

    iput-wide v0, p0, Lcom/android/systemui/qs/QSDetail;->DURATION_DETAIL:J

    .line 58
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/qs/QSDetail;->DURATION_PANEL:J

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 85
    iput v5, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    .line 86
    iput v5, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    .line 415
    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 469
    new-instance v0, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 486
    new-instance v0, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 88
    return-void
.end method

.method private handleDisableStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 410
    return-void

    :cond_0
    move v0, v2

    .line 411
    goto :goto_0

    :cond_1
    move v1, v2

    .line 412
    goto :goto_1
.end method

.method private handleScanStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 398
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 399
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    .line 400
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 401
    .local v0, "anim":Landroid/graphics/drawable/Animatable;
    if-eqz p1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 403
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 397
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 406
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V
    .locals 12
    .param p1, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "collapsePanel"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 208
    .local v4, "showingDetail":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 209
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 213
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v5

    .line 214
    .local v5, "toggleState":Ljava/lang/Boolean;
    if-nez v5, :cond_2

    .line 215
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setVisibility(I)V

    .line 216
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 248
    :goto_1
    iget-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v8, :cond_3

    .line 249
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 250
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->animateToggleQSExpansion()V

    .line 254
    :goto_2
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 255
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    .line 266
    .end local v5    # "toggleState":Ljava/lang/Boolean;
    :cond_0
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    move v9, v8

    :goto_4
    if-eqz p1, :cond_6

    const/4 v8, 0x1

    :goto_5
    if-eq v9, v8, :cond_7

    const/4 v7, 0x1

    .line 267
    .local v7, "visibleDiff":Z
    :goto_6
    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-ne v8, p1, :cond_8

    return-void

    .line 206
    .end local v4    # "showingDetail":Z
    .end local v7    # "visibleDiff":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 218
    .restart local v4    # "showingDetail":Z
    .restart local v5    # "toggleState":Ljava/lang/Boolean;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setVisibility(I)V

    .line 219
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 222
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 223
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setClickable(Z)V

    .line 224
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    new-instance v9, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 252
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_2

    .line 258
    .end local v5    # "toggleState":Ljava/lang/Boolean;
    :cond_4
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 259
    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    .line 260
    iget-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz v8, :cond_0

    .line 261
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->animateToggleQSExpansion()V

    .line 262
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_3

    .line 266
    :cond_5
    const/4 v8, 0x0

    move v9, v8

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    .line 268
    .restart local v7    # "visibleDiff":Z
    :cond_8
    const/4 v2, 0x0

    .line 269
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz p1, :cond_d

    .line 270
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v6

    .line 271
    .local v6, "viewCacheIndex":I
    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 272
    iget-object v10, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 271
    invoke-interface {p1, v9, v8, v10}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "detailView":Landroid/view/View;
    if-nez v0, :cond_9

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Must return detail view"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 275
    :cond_9
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v3

    .line 276
    .local v3, "settingsIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v9, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {v9, p0, p1, v3}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    if-eqz p4, :cond_c

    .line 301
    new-instance v1, Lcom/android/systemui/qs/QSDetail$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetail$6;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    .line 317
    .local v1, "doneListener":Landroid/view/View$OnClickListener;
    :goto_8
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 320
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 321
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 323
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 325
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 324
    const v10, 0x7f0f051a

    .line 323
    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 326
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 327
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 328
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    .line 343
    .end local v0    # "detailView":Landroid/view/View;
    .end local v1    # "doneListener":Landroid/view/View$OnClickListener;
    .end local v3    # "settingsIntent":Landroid/content/Intent;
    .end local v6    # "viewCacheIndex":I
    :goto_9
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/QSDetail;->sendAccessibilityEvent(I)V

    .line 344
    if-eqz v7, :cond_a

    .line 346
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    if-eqz v4, :cond_f

    const/4 v8, 0x0

    :goto_a
    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 347
    const-wide/16 v10, 0x64

    .line 346
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 348
    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 346
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 349
    if-eqz v4, :cond_10

    const-wide/16 v8, 0x0

    .line 346
    :goto_b
    invoke-virtual {v10, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 352
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    if-eqz v4, :cond_11

    const/4 v8, 0x0

    :goto_c
    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 353
    const-wide/16 v10, 0x64

    .line 352
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 354
    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 352
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 355
    if-eqz v4, :cond_12

    const-wide/16 v8, 0x0

    .line 352
    :goto_d
    invoke-virtual {v10, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    if-eqz v4, :cond_13

    const/4 v8, 0x1

    :goto_e
    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 359
    const-wide/16 v10, 0x16e

    .line 358
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 361
    if-eqz v4, :cond_14

    const-wide/16 v8, 0x64

    .line 358
    :goto_f
    invoke-virtual {v10, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 362
    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 358
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 205
    :cond_a
    return-void

    .line 276
    .restart local v0    # "detailView":Landroid/view/View;
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    .restart local v3    # "settingsIntent":Landroid/content/Intent;
    .restart local v6    # "viewCacheIndex":I
    :cond_b
    const/16 v8, 0x8

    goto/16 :goto_7

    .line 308
    :cond_c
    new-instance v1, Lcom/android/systemui/qs/QSDetail$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetail$7;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    .restart local v1    # "doneListener":Landroid/view/View$OnClickListener;
    goto/16 :goto_8

    .line 330
    .end local v0    # "detailView":Landroid/view/View;
    .end local v1    # "doneListener":Landroid/view/View$OnClickListener;
    .end local v3    # "settingsIntent":Landroid/content/Intent;
    .end local v6    # "viewCacheIndex":I
    :cond_d
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v8, :cond_e

    .line 331
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 333
    :cond_e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->requestLayout()V

    .line 337
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 338
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 339
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 340
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 341
    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    goto/16 :goto_9

    .line 346
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_a

    .line 349
    :cond_10
    const-wide/16 v8, 0x16e

    goto/16 :goto_b

    .line 352
    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_c

    .line 355
    :cond_12
    const-wide/16 v8, 0x16e

    goto :goto_d

    .line 358
    :cond_13
    const/4 v8, 0x0

    goto :goto_e

    .line 361
    :cond_14
    const-wide/16 v8, 0x0

    goto :goto_f
.end method

.method private handleToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 393
    return-void
.end method

.method private handleUpdatingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v1

    .line 382
    .local v1, "viewCacheIndex":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 383
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 382
    invoke-interface {p1, v3, v2, v4}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, "detailView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 387
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    .end local v0    # "detailView":Landroid/view/View;
    .end local v1    # "viewCacheIndex":I
    :cond_0
    return-void
.end method

.method private showItPolicyToast()V
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const v3, 0x10409cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 202
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    return-void
.end method

.method private updateDetailText()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0f03a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f0f03a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->updateShowButtonBackground()V

    .line 182
    return-void
.end method


# virtual methods
.method public isClosingDetail()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0d023b

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 96
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 97
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    const v5, 0x7f0d023a

    invoke-static {v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getDeskMode()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 105
    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    iget v5, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v4, v5, :cond_4

    .line 106
    :cond_2
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    .line 107
    iget v4, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v4, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 111
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v0, -0x1

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 113
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSDetail;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0236

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 119
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const v4, 0x7f1302f2

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 126
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v0    # "height":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 134
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 135
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 136
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f1302f1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 141
    const v0, 0x7f1303a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 132
    return-void
.end method

.method public setDeskMode(Z)V
    .locals 2
    .param p1, "desk"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 163
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "qsExpanded"    # Z

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 176
    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    .line 172
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 156
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;)V
    .locals 2
    .param p1, "panel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "header"    # Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 151
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 149
    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 6

    .prologue
    const v2, 0x7f020563

    const v3, 0x7f020561

    .line 496
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    .line 497
    .local v0, "isShowButtonBg":Z
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 498
    if-eqz v0, :cond_0

    move v1, v2

    .line 497
    :goto_0
    invoke-virtual {v5, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 502
    if-eqz v0, :cond_1

    .line 501
    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 495
    return-void

    :cond_0
    move v1, v3

    .line 499
    goto :goto_0

    :cond_1
    move v2, v3

    .line 503
    goto :goto_1
.end method
