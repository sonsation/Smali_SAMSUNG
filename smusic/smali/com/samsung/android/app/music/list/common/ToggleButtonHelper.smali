.class public Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
.super Ljava/lang/Object;
.source "ToggleButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    }
.end annotation


# static fields
.field public static final BUTTON_CENTER:I = 0x1

.field public static final BUTTON_LEFT:I = 0x0

.field public static final BUTTON_RIGHT:I = 0x2


# instance fields
.field private mButtonCenter:Landroid/widget/TextView;

.field private final mButtonLeft:Landroid/widget/TextView;

.field private final mButtonRight:Landroid/widget/TextView;

.field private mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private final mNormalColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private final mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private mPrimaryColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

.field private mSelectedButton:I

.field private final mToggleLayout:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v3, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    .line 214
    new-instance v1, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$4;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 223
    new-instance v1, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$100(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    .line 116
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mSelectedButton:I

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f110044

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    const v2, 0x7f120585

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    const v2, 0x7f120588

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$300(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$500(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$600(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$1;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$2;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1000(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    const v2, 0x7f120587

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1000(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1100(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    const v2, 0x7f120586

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->calculateToggleButtonWidth()V

    .line 181
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_1

    .line 182
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 185
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v1, :cond_2

    .line 186
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->access$1200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 189
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mToggleLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mSelectedButton:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mSelectedButton:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->updateToggleButtonColor()V

    return-void
.end method

.method private calculateToggleButtonWidth()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 195
    .local v1, "maxWidth":I
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 200
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 204
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_1
    return-void
.end method

.method private updateToggleButtonColor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 249
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mSelectedButton:I

    packed-switch v0, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    if-eq v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    if-eq v0, v1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    if-eq v0, v1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mButtonRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getSelectedButton()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mSelectedButton:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 299
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 290
    return-void
.end method
