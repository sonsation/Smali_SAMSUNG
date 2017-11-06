.class public Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
.super Ljava/lang/Object;
.source "ToggleButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mNameIdButtonCenter:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mNameIdButtonLeft:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mNameIdButtonRight:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mSelectedButton:I

.field private final mToggleLayout:Landroid/view/View;

.field private mViewIdButtonCenter:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private mViewIdButtonLeft:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private mViewIdButtonRight:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toggleLayout"    # Landroid/view/View;

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonLeft:I

    .line 64
    iput v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonLeft:I

    .line 67
    iput v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonRight:I

    .line 70
    iput v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonRight:I

    .line 73
    iput v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonCenter:I

    .line 76
    iput v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonCenter:I

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mActivity:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mToggleLayout:Landroid/view/View;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mToggleLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonCenter:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonCenter:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mSelectedButton:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonLeft:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonRight:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonLeft:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonRight:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$1;)V

    return-object v0
.end method

.method public setButtonCenter(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    .locals 0
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "nameId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonCenter:I

    .line 94
    iput p2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonCenter:I

    .line 95
    return-object p0
.end method

.method public setButtonLeft(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    .locals 0
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "nameId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 87
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonLeft:I

    .line 88
    iput p2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonLeft:I

    .line 89
    return-object p0
.end method

.method public setButtonRight(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    .locals 0
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "nameId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mViewIdButtonRight:I

    .line 100
    iput p2, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mNameIdButtonRight:I

    .line 101
    return-object p0
.end method

.method public setSelectedButton(I)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    .locals 0
    .param p1, "selectedButton"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->mSelectedButton:I

    .line 106
    return-object p0
.end method
