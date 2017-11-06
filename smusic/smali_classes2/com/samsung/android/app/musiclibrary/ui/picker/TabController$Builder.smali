.class public Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;
.super Ljava/lang/Object;
.source "TabController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mTabBackgroundColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mTabViewBackgroundResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mTabViewTextColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabBackgroundColorResId:I

    .line 416
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabViewBackgroundResId:I

    .line 419
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabViewTextColorResId:I

    .line 423
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mActivity:Landroid/app/Activity;

    .line 424
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    .prologue
    .line 410
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabBackgroundColorResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    .prologue
    .line 410
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabViewBackgroundResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    .prologue
    .line 410
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabViewTextColorResId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)V

    return-object v0
.end method

.method public setTabBackgroundColorResId(I)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 427
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabBackgroundColorResId:I

    .line 428
    return-object p0
.end method

.method public setTabViewBackgroundResId(I)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 432
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabViewBackgroundResId:I

    .line 433
    return-object p0
.end method

.method public setTabViewTextColorResId(I)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 437
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->mTabViewTextColorResId:I

    .line 438
    return-object p0
.end method
