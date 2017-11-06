.class public Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
.super Ljava/lang/Object;
.source "DividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDividerDrawableResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

.field private final mFragment:Landroid/app/Fragment;

.field private mInsetLeft:I

.field private mInsetRight:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDividerDrawableResId:I

    .line 69
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mInsetLeft:I

    .line 71
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mInsetRight:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mOrientation:I

    .line 75
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mFragment:Landroid/app/Fragment;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mInsetLeft:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mInsetRight:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;)V

    return-object v0
.end method

.method public setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 0
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDividerDrawableResId:I

    .line 83
    return-object p0
.end method

.method public setDividerChecker(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 0
    .param p1, "checker"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 103
    return-object p0
.end method

.method public setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mInsetLeft:I

    .line 88
    return-object p0
.end method

.method public setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mInsetRight:I

    .line 93
    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mOrientation:I

    .line 98
    return-object p0
.end method
