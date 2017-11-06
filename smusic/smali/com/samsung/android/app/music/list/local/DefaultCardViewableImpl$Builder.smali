.class public Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
.super Ljava/lang/Object;
.source "DefaultCardViewableImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBottomSpaceEnabled:Z

.field private mCardViewItemCount:I

.field private mCardViewItemLayout:I

.field private mCpAttrsCol:Ljava/lang/String;

.field private final mFragment:Landroid/app/Fragment;

.field private mMainTextCol:Ljava/lang/String;

.field private mSubTextCol:Ljava/lang/String;

.field private mThumbnailKeyCol:Ljava/lang/String;

.field private mTitleResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput v1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mTitleResId:I

    .line 249
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mMainTextCol:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mSubTextCol:Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mThumbnailKeyCol:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCpAttrsCol:Ljava/lang/String;

    .line 257
    iput v1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemCount:I

    .line 261
    const v0, 0x7f04002f

    iput v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemLayout:I

    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mFragment:Landroid/app/Fragment;

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mTitleResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mMainTextCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mSubTextCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mThumbnailKeyCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCpAttrsCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mBottomSpaceEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    .prologue
    .line 242
    iget v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemLayout:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemCount:I

    .line 315
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$1;)V

    return-object v0

    .line 312
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemCount:I

    goto :goto_0
.end method

.method public setBottomSpaceEnabled(Z)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mBottomSpaceEnabled:Z

    .line 299
    return-object p0
.end method

.method public setCardViewItemCount(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemCount:I

    .line 294
    return-object p0
.end method

.method public setCardViewItemLayout(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "cardViewItemLayout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 303
    iput p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCardViewItemLayout:I

    .line 304
    return-object p0
.end method

.method public setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mCpAttrsCol:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public setMainTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mMainTextCol:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public setSubTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mSubTextCol:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setThumbnailKeyCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mThumbnailKeyCol:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public setTitleResCol(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;
    .locals 0
    .param p1, "titleResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 268
    iput p1, p0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->mTitleResId:I

    .line 269
    return-object p0
.end method
